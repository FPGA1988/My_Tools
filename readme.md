#软件说明
	Vim是一款能跟得上人的思维的编辑器，本软件为Windows版本的Gvim软件，目前运行环境为Windows7-32bit系统，  
Windows XP系统也经过了验证，可以正常使用。  
#安装说明
	使用vim74里面的install.exe进行安装即可
#特性说明
1. 采用最新版本的vim74作为vim的主体，同样方便快捷
2. 采用Vundle进行插件管理，Vundle的使用等信息可以参考[vundle](https://github.com/vim-scripts/vundle),目前在vundle中使用了以下插件：

```
Bundle 'gmarik/vundle'
Bundle 'vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
``` 
----
#版本更新

yyyy-mm-dd

2016-09-02 在.vimrc中添加禁止自动备份命令，禁止掉vim74种vimrc*.vim中添加的自动备份功能  
2016-11-21 在文件类型检测ftdetect中增加h.vim,将所有的.h识别为verilog  
2017-03-01 增加modelsim的.do文件的语法高亮 : 仅增加几个测试关键字，如vlog vsim等  
2017-03-02 在vimrc中增加modelsim的编译功能 : F6使用vlib创建work库，然后F7是调用vlog或者vcom编译hdl  

----
