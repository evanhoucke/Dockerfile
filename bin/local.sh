#!/usr/bin/env bash
# Author: Cloudflying
# Desc:   Push to Docker Registry

IMG_DIR="`pwd`/images"
# docker login --username=xxx@aliyun.com registry.cn-hongkong.aliyuncs.com
PREFIX="registry.cn-hongkong.aliyuncs.com/imxieke"
# PREFIX="registry-vpc.cn-hongkong.aliyuncs.com/imxieke"

function build()
{
	if [[ ! -d "$IMG_DIR/$2" ]]; then
		echo "Catelog $2 or Dockerfile Not Exist"
		exit 1
	fi

	cd "$IMG_DIR/$2"
	if [[ $3 != '' ]]; then
		if [[ $3 == 'latest' ]]; then
			docker $1 --no-cache -t ${PREFIX}/$2:latest .
		else
			docker $1 --no-cache -t ${PREFIX}/$2:$3 --file=Dockerfile.$3 .
		fi
	else
		docker $1 --no-cache -t ${PREFIX}/$2:latest .
	fi
}

function push()
{
	# echo $1 $2 $3 $4 $5 $6

	if [[ $3 != '' ]]; then
		if [[ $3 == 'latest' ]]; then
			docker push ${PREFIX}/$2:latest
		else
			docker push ${PREFIX}/$2:$3
		fi
	elif [[ $3 == '' ]]; then
		docker push ${PREFIX}/$2:latest
	fi
}

function pull()
{
	docker pull ${PREFIX}/$2
}

function usage()
{
	echo "	Docker Build Tool 
		=>Only Avaiable for qiniu
/-----------------------------------\\
|	build image name tag         |
|	push  image name tag         |
|	pull  image name tag         |
\\-----------------------------------/
"
}

case $1 in
	build )
		build $1 $2 $3 $4 $5 $6
		;;

	push )
		push $1 $2 $3 $4 $5 $6
		;;

	pull )
		pull $1 $2 $3 $4 $5 $6
		;;
	* ) 
		# echo "Command Faild"
		usage
esac