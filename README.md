# RevokeFirefoxCerts

## Install

Install [msys2](https://www.msys2.org/)

Open ucrt64.exe

```bash
pacman -Syu
pacman -S mingw-w64-ucrt-x86_64-nss mingw-w64-ucrt-x86_64-openssl
```
## Usage

```bash
cd path/to/RevokeFirefoxCerts
./firefox.sh
./torbrowser.sh
```
## Tor Browser

[【屏蔽 tor 浏览器证书】](https://t.me/s/tg_InternetSecurity/711?q=%23Tor)（谨慎操作！）

为避免 tor 浏览器的一些安全隐患，可以用下面的方法永久屏蔽证书：

1、打开 tor 浏览器，输入 about:config，点“接受风险并继续”；

2、在搜索中输入 security.nocertdb 原来为 true 双击改成 false；

3、重启tor浏览器之后，就可以屏蔽证书了（即：证书取消信任）。

4、鼠标左键点击Tor浏览器的右上角的“三条杠”图标---> 选项--->隐私与安全--->证书--->查看证书--->点击需要屏蔽的证书--->点界面下方的”编辑信任(E)"--->出现编辑CA证书信任设置窗口，将“编辑信任设置”下面方框内的对勾去掉（去掉勾选）--->确定--->确定，即可。

吊销完根证书后，可以把profile目录下的cert9.db、key4.db设置为只读，以禁止中间证书缓存。
