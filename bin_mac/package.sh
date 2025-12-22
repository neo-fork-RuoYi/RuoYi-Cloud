#!/bin/bash

echo
echo "[信息] 构建 Web 工程，生成 war / jar 文件"
echo

# 如果 JAVA_HOME 未设置，mac 下自动探测
if [ -z "$JAVA_HOME" ]; then
  export JAVA_HOME=$(/usr/libexec/java_home 2>/dev/null)
fi

if [ -z "$JAVA_HOME" ]; then
  echo "[错误] JAVA_HOME 未设置，请先配置 Java 环境"
  exit 1
fi

# 进入脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR/.." || exit 1

# Maven 打包（跳过测试）
mvn clean package -Dmaven.test.skip=true

# 暂停
read -p "按回车键退出..."

