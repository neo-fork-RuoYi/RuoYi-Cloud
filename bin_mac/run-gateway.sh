#!/bin/bash

echo
echo "[信息] 使用 Jar 命令运行 Gateway 工程"
echo

if [ -z "$JAVA_HOME" ]; then
	export JAVA_HOME=$(/usr/libexec/java_home 2>/dev/null)
fi

if [ -z "$JAVA_HOME" ]; then
	echo "[错误] JAVA_HOME 未设置"
	exit 1
fi

JAVA_OPTS="-Xms512m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR/../ruoyi-gateway/target" || exit 1

java -Dfile.encoding=utf-8 $JAVA_OPTS -jar ruoyi-gateway.jar

read -p "按回车键退出..."
