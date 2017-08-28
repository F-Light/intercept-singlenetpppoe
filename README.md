# intercept-to-singlenetpppoe
#### 用于openwrt pppoe-server的闪讯拦截拨号脚本

#### 感谢项目[Openwrt-NetKeeper](https://github.com/miao1007/Openwrt-NetKeeper)

#### 感谢项目[netkeeper4-use-pppoer-server](https://github.com/miao1007/Openwrt-NetKeeper/tree/master/netkeeper4-use-pppoer-server)

由于不同地区使用的不同的闪讯，不同的使用者使用着不同的路由器，加之闪讯版本众多，插件不能一一适用。

修改该脚本，更适用于原生openwrt。

本人所在的学校原来使用的是锐捷 而后更换闪讯，锐捷时代同样使用类似思路（实际上很不同）。 原项目[mentohust-v4-proxy](https://github.com/updateing/mentohust-v4-proxy)

送给大家一个我交叉编译好的二进制文件[mentohust-proxy_mtk](https://github.com/F-Light/intercept-to-singlenetpppoe/blob/master/mentohust-proxy_mtk)适用于任何版本锐捷。

参考命令
```
mentohust-proxy_mtk --proxy-lan-iface br-lan --nic eth0.2 --eap-bcast-addr 0 --dhcp-type 2 -d 2 -l 2 -a 1 -b 3 -e 15
```
