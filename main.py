"""Run the local synthetic dbt demonstration without cloud credentials."""
from pathlib import Path
import shutil
import subprocess

if __name__ == '__main__':
    dbt = shutil.which('dbt')
    if not dbt:
        raise SystemExit('Install requirements.txt in the active environment first.')
    project = Path(__file__).resolve().parent / 'aws_dbt_snowflake_project'
    for command in ['seed', 'compile', 'build', 'test']:
        subprocess.run([dbt, command, '--profiles-dir', '.', '--target', 'local'], cwd=project, check=True)
