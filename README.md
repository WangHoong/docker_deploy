# cpp项目docker部署说明

## 系统环境
- 操作系统 ubuntu >=14.04
- CPU >=4核
- 内存 >=8G

## 系统配置修改

具体参数修改请打开docker-compose.yml进行修改相关参数

## 系统部署步骤

### 安装docker

Docker 的 安装资源文件 存放在Amazon S3，会间歇性连接失败。所以安装Docker的时候，会比较慢。
你可以通过执行下面的命令，高速安装Docker。
```
  curl -sSL https://get.daocloud.io/docker | sh

```

### 安装docker-compose
Docker Compose 存放在Git Hub，不太稳定。
你可以也通过执行下面的命令，高速安装Docker Compose。

```
curl -L https://get.daocloud.io/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

```
你可以通过修改URL中的版本，可以自定义您的需要的版本。

### 设置docker mirror

```
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://3fcf853c.m.daocloud.io

```
该脚本可以将 --registry-mirror 加入到你的 Docker 配置文件 /etc/docker/daemon.json 中。适用于 Ubuntu14.04、Debian、CentOS6 、CentOS7、Fedora、Arch Linux、openSUSE Leap 42.1

### 设置docker的启动参数

说明：由于目前大家的registry没有使用https,需要设置此项
```
sudo vim /lib/systemd/system/docker.service

修改文件
ExecStart=/usr/bin/dockerd -H fd://

修改为
 ExecStart=/usr/bin/dockerd -H fd:// --insecure-registry=54.223.52.77:5000
```

### 启动cpp 项目

进入本项目所在的目录运行以下脚本，系统会自动拉取cpp项目的image
```
docker-compose up -d

```


### 初始化数据

初始化系统数据，初始化完成后自动重启项目

```
./init_script.sh

```

### 查看项目

http://{服务器ip}

### 默认管理员账户
账户: admin@topdmc.com
密码：123456
