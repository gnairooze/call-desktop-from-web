set key=callfromweb 
reg add HKCR\%key% /ve /d "URL:Description" 
reg add HKCR\%key% /v "URL Protocol" /d "" 
reg add HKCR\%key%\shell 
reg add HKCR\%key%\shell\open 
reg add HKCR\%key%\shell\open\command /ve /d ""c:\path to\your.exe" ""%%1"""