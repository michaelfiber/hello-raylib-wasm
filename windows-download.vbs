Option Explicit
dim args, http, url, dest, ado_stream, fs

set args = WScript.Arguments
url = args(0)
dest = args(1)

set http = CreateObject("WinHttp.WinHttpRequest.5.1")
http.Open "GET", url, False
http.Send

if http.Status <> 200 then
	WScript.Echo "Request to download " & url & " failed."
	WScript.Quit 1
end if

set ado_stream = CreateObject("ADODB.Stream")
ado_stream.Open
ado_stream.Type = 1
ado_stream.Write http.ResponseBody
ado_stream.Position = 0

set fs = CreateObject("Scripting.FileSystemObject")
if fs.FileExists(dest) then
	fs.DeleteFile target
end if

ado_stream.SaveToFile dest
ado_stream.Close