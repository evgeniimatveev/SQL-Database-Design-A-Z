#!/usr/bin/env bash
# Run every PostgreSQL script of the course against a real PostgreSQL (container `pg`, repo mounted at /repo).
#   * every script starts from a clean database
#   * SETUP: the tables the author imported by hand with pgAdmin (loaders in .github/sql)
#   * PRELUDE: scripts that build on an earlier script
#   * errors are counted per script; the SQL Server scripts are not run (they need SQL Server)
set -u
PSQL=(docker exec -i pg psql -U postgres -X -q -v ON_ERROR_STOP=0)

declare -A SETUP=(
  ["01-sql-basics"]=".github/sql/pg-s1.sql"
  ["02-intermediate-sql"]=".github/sql/pg-s2.sql"
  ["03-advanced-sql"]=".github/sql/pg-s3.sql"
  ["05-database-normalization"]=".github/sql/pg-s5.sql"
)
declare -A PRELUDE=(
  ["04-database-creation-and-design"]="04-database-creation-and-design/postgresql/00-create-my-database-create-table-movies.sql"
)
FEED="04-database-creation-and-design/postgresql/insert-into-feeding-tables.sql"
declare -A EXTRA_PRELUDE=(
  ["04-database-creation-and-design/postgresql/alter-array-update-note-normalization.sql"]="$FEED"
  ["04-database-creation-and-design/postgresql/alter-update-array.sql"]="$FEED"
  ["04-database-creation-and-design/postgresql/drop-delete.sql"]="$FEED"
  ["04-database-creation-and-design/postgresql/update-set.sql"]="$FEED"
  ["05-database-normalization/postgresql/3nf-modification.sql"]="05-database-normalization/postgresql/2nf-modification.sql"
)

reset_db() {
  # (a here-string array, not a pipe: `docker exec -i` inside a `while read` loop would swallow the list)
  mapfile -t dbs < <(docker exec pg psql -U postgres -X -At -d postgres -c "SELECT datname FROM pg_database WHERE datname NOT IN ('postgres','template0','template1')" 2>/dev/null)
  for d in "${dbs[@]}"; do docker exec pg psql -U postgres -X -q -d postgres -c "DROP DATABASE \"$d\"" > /dev/null 2>&1; done
  docker exec pg psql -U postgres -X -q -d postgres -c "CREATE DATABASE testdb" > /dev/null 2>&1
}

# the COPY statements use a placeholder path; inside the container the repository is mounted at /repo
run_file() {
  docker exec pg bash -c "sed 's#/path/to/SQL-Database-Design-A-Z#/repo#g' /repo/$1 | psql -U postgres -X -q -d testdb -v ON_ERROR_STOP=0" > /dev/null 2> /tmp/script.err || true
}

mapfile -t SCRIPTS < <(ls 0[1-5]-*/postgresql/*.sql | sort)
pass=0; fail=0
summary="${GITHUB_STEP_SUMMARY:-/dev/null}"
{ echo "## PostgreSQL run"; echo; echo "| Script | Result | Errors |"; echo "|---|:-:|--:|"; } > "$summary"
details=""
for f in "${SCRIPTS[@]}"; do
  sec="${f%%/*}"
  reset_db
  if [ -n "${SETUP[$sec]:-}" ]; then
    docker exec pg psql -U postgres -X -q -d testdb -v ON_ERROR_STOP=1 -f "/repo/${SETUP[$sec]}" > /dev/null 2> /tmp/setup.err || { echo "SETUP FAILED for $sec:"; head -5 /tmp/setup.err; }
  fi
  if [ -n "${PRELUDE[$sec]:-}" ] && [ "${PRELUDE[$sec]}" != "$f" ]; then run_file "${PRELUDE[$sec]}"; fi
  if [ -n "${EXTRA_PRELUDE[$f]:-}" ]; then run_file "${EXTRA_PRELUDE[$f]}"; fi
  run_file "$f"
  n=$(grep -c "ERROR:" /tmp/script.err || true)
  if [ "$n" -eq 0 ]; then
    echo "PASSED  $f"; pass=$((pass+1)); echo "| \`$f\` | ✅ passed | 0 |" >> "$summary"
  else
    echo "FAILED  $f ($n errors)"; fail=$((fail+1)); echo "| \`$f\` | ❌ failed | $n |" >> "$summary"
    grep "ERROR:" /tmp/script.err | head -4 | sed 's/^/        | /'
    details+=$'\n'"<details><summary><code>$f</code></summary>"$'\n\n```\n'"$(grep -E 'ERROR:|LINE ' /tmp/script.err | head -10)"$'\n```\n\n</details>\n'
  fi
done
echo; echo "Summary: $pass passed, $fail failed, $((pass+fail)) total"
{ echo; echo "**$pass passed · $fail failed** (of $((pass+fail)) PostgreSQL scripts)"; [ -n "$details" ] && { echo; echo "### Errors"; echo "$details"; }; } >> "$summary"
[ "$fail" -eq 0 ]
