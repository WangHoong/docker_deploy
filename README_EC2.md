# cpp项目EC2部署说明

## 系统环境需求
- Amazon Linux
- CPU >= 4核
- 内存 >= 8G
- 硬盘 >=50G

## 系统部署步骤

## 下载系统安装文件

```
# 安装git
sudo yum install git

# clone安装文件到本地
cd /opt

#用户名密码方式
git clone https://github.com/topdmc/cpp_deploy.git

#authorized_keys 方式
git clone git@github.com:topdmc/cpp_deploy.git

# 进入/opt/cpp_deploy
cd cpp_deploy

```

### 安装离线系统所需软件

```
./install/ec2.sh

```

## 配置文件修改（数据库，百度bos等相关信息的配置）

具体参数修改请打开docker-compose.yml进行修改相关参数


### 启动cpp 项目

进入本项目所在的目录运行以下脚本，系统会自动拉取cpp项目的image
```bash

docker-compose up -d

```

### 初始化数据

初始化系统数据 (系统初始化结构及数据)

```bash
./init_script.sh

```

### 查看项目

http://{服务器ip}

### 默认管理员账户
账户: admin@topdmc.com
密码：123456
