@echo off
setlocal

echo === List of files starting with REPO_SAVE ===

for %%f in (REPO_SAVE*) do (
    echo %%f
)

pause
