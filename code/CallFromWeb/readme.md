# setup windows registry

```
[HKEY_CLASSES_ROOT\callfromweb]
@="Description here"
"URL Protocol"=""

[HKEY_CLASSES_ROOT\callfromweb\shell]

[HKEY_CLASSES_ROOT\callfromweb\shell\open]

[HKEY_CLASSES_ROOT\callfromweb\shell\open\command]
@="C:\Path To Your EXE\\ExeName.exe" %1
```

Note
	use environment variables instead of hard-coded path.
	%ProgramFiles% : for the path for `Program Files`
	
Once the above keys and values are added, from the web page, just call `callfromweb://parameter1=xxx&parameter2=xxx` . You will receive the entire url as the argument in exe, which you need to process inside your exe. Change 'callfromweb' with the text of your choice.

batch file `setup-reg.bat`

```shell
set key=callfromweb 
reg add HKCR\%key% /ve /d "URL:Description" 
reg add HKCR\%key% /v "URL Protocol" /d "" 
reg add HKCR\%key%\shell 
reg add HKCR\%key%\shell\open 
reg add HKCR\%key%\shell\open\command /ve /d ""c:\path to\your.exe" ""%%1"""
```
