@ECHO OFF

ECHO *** Copiando as DLLs ***
if NOT EXIST %windir%\SysWOW64\capicom.dll copy capicom.dll %windir%\SysWOW64
if NOT EXIST %windir%\SysWOW64\msxml5.dll  copy msxml5.dll  %windir%\SysWOW64
if NOT EXIST %windir%\SysWOW64\msxml5r.dll copy msxml5r.dll %windir%\SysWOW64

ECHO *** Registrando as DLLs ***
regsvr32 %windir%\SysWOW64\capicom.dll /s
regsvr32 %windir%\SysWOW64\msxml5.dll /s
regsvr32 %windir%\SysWOW64\msxml5r.dll /s

@pause