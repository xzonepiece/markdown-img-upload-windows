;为该脚本添加特殊图标
Menu, Tray, Icon, G:\Autohotkey\markdown_picture\upload_folded.ico, ,1
;将图片上传至七牛云，并获得图片地址
^!c::
send, ^c
clipwait
Run %comspec%  /c "Python G:\Autohotkey\markdown_picture\upload_qiniu.py %Clipboard%" /p
return
