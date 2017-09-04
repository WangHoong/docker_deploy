# cpp项目EC2部署说明

## 系统环境
- EC2
- CPU >=4核
- 内存 >=8G

## 系统配置修改

具体参数修改请打开docker-compose.yml进行修改相关参数

## 系统部署步骤

### 安装docker-compose
Docker Compose 存放在Git Hub，不太稳定。
你可以也通过执行下面的命令，高速安装Docker Compose。

```bash
sudo usermod -a -G docker ec2-user
sudo curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose

```
你可以通过修改URL中的版本，可以自定义您的需要的版本。

### 设置docker 配置

```bash
touch /etc/docker/daemon.json

配置内容
{
   "registry-mirrors":["http://3fcf853c.m.daocloud.io"],
   "insecure-registries":["54.223.52.77:5000"]
}

### 启动cpp 项目

进入本项目所在的目录运行以下脚本，系统会自动拉取cpp项目的image
```bash

docker-compose up -d

```

### 初始化数据

初始化系统数据，初始化完成后自动重启项目

```bash
./init_script.sh

```

### 查看项目

http://{服务器ip}

### 默认管理员账户
账户: admin@topdmc.com
密码：123456

说明：系统数据存放目录

+ /Users/datadir/
+  -elasticsearch 索引存放位置
+  -db 数据库存放位置
+  -logs 日志文件位置
+      -api 接口日志
+      -nginx 前台nginx访问日志
+      -elasticsearch 索引服务器运行日志
