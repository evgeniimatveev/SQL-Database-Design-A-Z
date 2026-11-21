"""Static checks for every SQL script and data file (nothing is executed).

* no spaces in tracked file names
* every .sql file is valid UTF-8, not empty, and has balanced /* ... */ comments
* no personal absolute paths (Windows user folders)
* PostgreSQL scripts parse with sqlglot (the SQL Server scripts are not parsed: sqlglot rejects
  T-SQL that is valid, for example statements without semicolons)
* the data files are not empty
"""
import glob
import os
import re
import subprocess
import sys

import sqlglot
from sqlglot.errors import ParseError, TokenError

BS = chr(92)
problems = []
tracked = subprocess.run(["git", "ls-files"], capture_output=True, text=True, check=True).stdout.splitlines()
for f in tracked:
    if " " in os.path.basename(f):
        problems.append(f"{f}: file name contains a space")

sql_files = sorted(glob.glob("0*/*/*.sql")) + sorted(glob.glob("00-quickstart/*.sql"))
for f in sql_files:
    raw = open(f, "rb").read()
    if not raw.strip():
        problems.append(f"{f}: empty file")
        continue
    try:
        txt = raw.decode("utf-8")
    except UnicodeDecodeError:
        problems.append(f"{f}: not valid UTF-8")
        continue
    nolines = re.sub(r"--[^\n]*", "", txt)
    if nolines.count("/*") != nolines.count("*/"):
        problems.append(f"{f}: unbalanced /* */ comment ({nolines.count('/*')} opened, {nolines.count('*/')} closed)")
    if (":" + BS + "Users") in txt or "/Users/" in txt:
        problems.append(f"{f}: personal absolute path")
    if "/postgresql/" in f.replace(BS, "/") or f.startswith("00-quickstart"):
        try:
            sqlglot.parse(txt, read="postgres")
        except (ParseError, TokenError) as exc:
            problems.append(f"{f}: PostgreSQL parse error: {str(exc).splitlines()[0][:120]}")

for d in glob.glob("data/*.csv"):
    if os.path.getsize(d) == 0:
        problems.append(f"{d}: empty data file")

pg = len([f for f in sql_files if "/postgresql/" in f.replace(BS, "/") or f.startswith("00-quickstart")])
print(f"Checked {len(sql_files)} SQL files ({pg} PostgreSQL parsed), {len(glob.glob('data/*.csv'))} data files, {len(problems)} problem(s)")
for p in problems:
    print("FAIL ", p)
sys.exit(1 if problems else 0)
