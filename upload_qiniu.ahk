;将图片上传至七牛云，并获得图片地址
Menu, Tray, Icon, G:\Autohotkey\markdown_picture\upload_folded.ico, ,1
^!c::
send, ^c
clipwait
Run %comspec%  /k "Python G:\Autohotkey\markdown_picture\upload_qiniu.py %Clipboard%" /p
return
