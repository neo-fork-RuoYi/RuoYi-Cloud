#!/bin/bash

echo
echo "[信息] 清理当前 target 目录"
echo

# 进入脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

# 进入上一级目录
cd .. || exit 1

# 执行 maven clean
mvn clean

# 暂停（可选）
read -p "按回车键退出..."
