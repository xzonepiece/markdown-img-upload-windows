## 简介
实现Windows上通过<kbd>ctrl</kbd>+<kbd>alt</kbd>+<kbd>c</kbd> -> <kbd>alt</kbd>+<kbd>v</kbd>往Markdown文档中插入图片

## 工具
* [Python](https://www.python.org)

> 要安装`qiniu`模块（必要）和`ConfigParser`模块

* [AutoHotkey](http://ahkscript.org)+AutoHotkey.dll

> AutoHotkey.dll是用来实现其他脚本语言对AutoHotkey的调用,请下载对应于你的AutoHotKey版本的dll文件，然后将它放到windows/System32文件夹中

* 七牛云账号

## 配置
1. 注册七牛云账号，获得自己的AK、SK、空间名称以及域名地址
2. 新建配置文件`config.ini`,将它与`upload_qiniu.py`放在同一目录下
```
[qiniu]
ak     = # 填入你的AK
sk     = # 填入你的SK
url    = # 填入你的域名地址
bucket = # 填入你的空间名称
styleName = # 填入图片样式
```
1. 将`markdown_picture.ahk`文件中*python*后面的地址替换成`upload_qiniu.py`文件的绝对地址
2. 双击`markdown_picture.ahk`文件，执行该脚本

## 使用
选中图片文件，按<kbd>ctrl</kbd>+<kbd>alt</kbd>+<kbd>c</kbd>，此时会跳出cmd窗口，当该窗口自动关闭之后，按<kbd>alt</kbd>+<kbd>v</kbd>就会在Markdown文档中插入图片
