#!/bin/bash

print_section() {
    echo
    echo "====================== $1 ======================"
}

print_section "检测系统类型"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    TARGET="$HOME/.config/Cursor/User"
    PLATFORM="Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    TARGET="$HOME/Library/Application Support/Cursor/User"
    PLATFORM="macOS"
else
    echo "不支持的系统类型：$OSTYPE"
    exit 1
fi

echo "已识别系统：$PLATFORM"
echo "目标目录：$TARGET"

print_section "检查目录是否存在"

if [ -d "$TARGET" ]; then
    echo "目录存在，准备删除..."
    rm -rf "$TARGET"
    print_section "删除完成"
    echo "已删除登录信息目录: $TARGET"
    echo "请重新启动 Cursor。"
else
    echo "目录不存在，可能已被删除或未曾登录。"
fi

print_section "脚本结束"
