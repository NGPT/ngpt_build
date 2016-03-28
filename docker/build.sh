#!/bin/bash

BASEDIR=./build
COMPOSER=`pwd`/$BASEDIR/composer.phar

function clone() {
	mkdir -p $BASEDIR
	cd $BASEDIR
	if [ -d $2 -a -d $2/.git ];then
		echo ${2}已经存在，跳过
	else
		rm -f $2
		git clone $1 $2
		if [ $? != 0 ];then
			echo 克隆仓库${2}失败，请检查网络
			exit
		fi
	fi
	cd -
}

#安装composer依赖
function ins_composer(){
if [ ! -f $COMPOSER ];then
	curl -sS http://packagist.cn/composer/installer | php
	mv composer.phar $COMPOSER
fi

cd $BASEDIR/ngpt_seed
if [ ! -f ./composer.lock ];then
	$COMPOSER global require "fxp/composer-asset-plugin:~1.1.1" 
	$COMPOSER install -vvv
fi
cd -
}

clone https://github.com/KKRainbow/ngpt_discuz.git discuz_part
clone https://github.com/KKRainbow/discuz-x32-php7.git discuz-x32-php7
clone https://github.com/KKRainbow/ngpt_seed.git ngpt_seed

sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/data
sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/uc_server/data
sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/uc_client/data
sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/config

ins_composer
 
$BASEDIR/ngpt_seed/init

cp ./docker-compose.yml $BASEDIR/

cd $BASEDIR

echo 环境配置成功，请进入目录$BASEDIR,运行命令docker-compose up,然后访问http://localhost:8080

