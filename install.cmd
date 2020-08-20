@ECHO OFF
PUSHD %~dp0
COPY wt.ico %LOCALAPPDATA%\Microsoft\WindowsApps\wt.ico
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\WindowsTerminal" ^
    /v "MUIVerb" ^
    /d "Windows Terminal"
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\WindowsTerminal" ^
    /v "Icon" ^
    /d "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.ico"
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\WindowsTerminal\command" ^
    /d "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe -d ""%%V."""
PAUSE
