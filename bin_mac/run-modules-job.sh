#!/bin/bash

echo
echo "[信息] 使用 Jar 命令运行 Modules-Job 工程"
echo

# 自动设置 JAVA_HOME（mac）
if [ -z "$JAVA_HOME" ]; then
  export JAVA_HOME=$(/usr/libexec/java_home 2>/dev/null)
fi

if [ -z "$JAVA_HOME" ]; then
  echo "[错误] JAVA_HOME 未设置"
  exit 1
fi

# JVM 参数
JAVA_OPTS="-Xms512m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m"

# 进入脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR/../ruoyi-modules/ruoyi-job/target" || exit 1

# 启动 Job 服务
java -Dfile.encoding=utf-8 $JAVA_OPTS -jar ruoyi-modules-job.jar

# 回到 bin 目录（与 bat 行为一致）
cd "$SCRIPT_DIR" || exit 1

# 暂停
read -p "按回车键退出..."