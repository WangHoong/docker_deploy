# cpp项目EC2部署说明

## 系统环境
- EC2
- CPU >=4核
- 内存 >=8G
- 硬盘 >=50G

## 系统配置修改

具体参数修改请打开docker-compose.yml进行修改相关参数

## 系统部署步骤

### 安装离线系统软件

```
./install/ec2.sh

```

### 自动安装软件


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
