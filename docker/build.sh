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
    $COMPOSER config secure-http false
	$COMPOSER global require "fxp/composer-asset-plugin:~1.1.1" 
	$COMPOSER install -vv
fi
cd -
}

function ins_pma() {
    if [ ! -f ./pma.tar.gz ]; then
        echo "正在下载pma"
        curl https://files.phpmyadmin.net/phpMyAdmin/4.6.0/phpMyAdmin-4.6.0-all-languages.tar.gz -o pma.tar.gz
    else
        echo '检测到pma已经下载，如果要重新下载请删除pma.tar.gz'
    fi
    TMPDIR=$BASEDIR/pmatmp
    mkdir -p $TMPDIR
    tar xvf pma.tar.gz -C $TMPDIR
    SUBDIR=$TMPDIR/`ls $TMPDIR`
    mv $SUBDIR $BASEDIR/pma
    rm -rf $TMPDIR
}

clone https://github.com/KKRainbow/ngpt_discuz.git discuz_part
clone https://github.com/KKRainbow/discuz-x32-php7.git discuz-x32-php7
clone https://github.com/KKRainbow/ngpt_seed.git ngpt_seed
clone https://github.com/phpmyadmin/phpmyadmin.git pma

sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/data
sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/uc_server/data
sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/uc_client/data
sudo chmod a+rwx -R $BASEDIR/discuz-x32-php7/config

ins_composer
 
$BASEDIR/ngpt_seed/init

cp ./docker-compose.yml $BASEDIR/
cp ./php.ini $BASEDIR/

ins_pma

cd $BASEDIR

echo 环境配置成功，请进入目录$BASEDIR,运行命令docker-compose up,然后访问http://localhost:8080

