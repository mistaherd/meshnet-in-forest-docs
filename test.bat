@echo off

rem Get the current date and time for the commit message
for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (set mytime=%%a%%b)

rem Construct the commit message with the date
set commit_msg=update on %mydate% at %mytime%

rem Execute the git commands
git add .
git commit -m "%commit_msg%"
git push

echo Git add, commit, and push completed!
