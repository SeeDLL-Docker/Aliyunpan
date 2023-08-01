## NAS或持久化用：

### GitHub:

[https://github.com/SeeDLL/Ubuntu_Docker](https://github.com/SeeDLL/Ubuntu_Docker)

### 感谢以下项目:

一个最小的 docker 基础镜像，可以轻松创建 X 图形应用程序容器:
[https://github.com/jlesage/docker-baseimage-gui ](https://github.com/jlesage/docker-baseimage-gui "https://github.com/jlesage/docker-baseimage-gui")

小白羊网盘 - Powered by 阿里云盘:
[https://github.com/gaozhangmin/aliyunpan ](https://github.com/gaozhangmin/aliyunpan "https://github.com/gaozhangmin/aliyunpan")                                       

### 版本：

|名称|版本|说明|
|:-|:-|:-|
|小白羊云盘|3.11.16|amd64|

#### 注意：

   * 创建 Docker 容器时，必须要有 /dev/shm 的相关设置，具体请看变量参数。

   * 初次使用，请完成登陆后，到设置页面设置好相关参数，包括下载位置也需手动配置(右上角-设置)。

   * 容器中已经自带了一个 Aria2c ，路径是：/usr/bin/aria2c 。

   * 容器中已经自带了一个最基础的 Aria2c 的配置文件，路径是：/opt/Aria2/config.json ，若需要更多自定义设置，请自行修改后放到 config 目录中并在程序中自行设置指定 Aria2c 的配置文件。

### docker命令行设置：

1. 下载镜像

    |镜像源|命令|
    |:-|:-|
    |DockerHub|docker pull seedll/aliyunpan:latest|

2. 创建 aliyunpan 容器

        docker create \
           --name=aliyunpan \
           -p 5800:5800 \
           -p 5900:5900 \
           -v /配置文件位置:/config \
           -v /下载位置:/config/download \
           -v /dev/shm/xbyyunpan:/dev/shm \
           --restart unless-stopped \
           seedll/aliyunpan:latest

3. 运行

       docker start aliyunpan

4. 停止

       docker stop aliyunpan

5. 删除容器

       docker rm aliyunpan

6. 删除镜像

       docker image rm seedll/aliyunpan:latest

### 变量参数设置:

|参数|说明|
|:-|:-|
| `--name=aliyunpan` |容器名|
| `-p 5800:5800` |容器 网页版VNC界面访问端口,[ip:5800](ip:5800)|
| `-p 5900:5900` |容器 VNC 协议访问端口,[ip:5900](ip:5900)|
| `-v /配置文件位置:/config` |aliyunpan 配置文件位置|
| `-v /下载位置:/config/download` |aliyunpan 下载路径(需手动设置)|
| `-e VNC_PASSWORD=VNC密码` |VNC密码|
| `-e USER_ID=1000` |用户 uid 设置,默认为1000|
| `-e GROUP_ID=1000` |用户组 gid 设置,默认为1000|
| `-e NOVNC_LANGUAGE="zh_Hans"` |(zh_Hans\|en)设定novnc语言,默认为中文|
| `-e DISPLAY_WIDTH=1920` | VNC桌面的宽度(默认1920) |
| `-e DISPLAY_HEIGHT=1080` | VNC桌面的高度(默认1080) |
| `-v /dev/shm/{自定义的文件名}:/dev/shm` | 容器中小白羊网盘所必须要用的程序间内存共享通信 |


更多参数设置详见:[https://registry.hub.docker.com/r/jlesage/baseimage-gui](https://registry.hub.docker.com/r/jlesage/baseimage-gui "https://registry.hub.docker.com/r/jlesage/baseimage-gui")                                     
