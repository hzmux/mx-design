#!/bin/bash

# mx-design 安装脚本

SKILL_DIR="$HOME/.claude/skills/mx-design"
REPO_URL="https://github.com/hzmux/mx-design.git"

# 检查 git
if ! command -v git &> /dev/null; then
  echo "错误: 请先安装 git"
  exit 1
fi

# 检查目标目录
if [ -d "$SKILL_DIR" ]; then
  echo "mx-design 已存在，是否更新？ [y/N]"
  read -r response
  if [[ ! "$response" =~ ^[Yy]$ ]]; then
    echo "取消安装"
    exit 0
  fi
  rm -rf "$SKILL_DIR"
fi

# 克隆
echo "正在安装 mx-design..."
git clone "$REPO_URL" "$SKILL_DIR"

if [ $? -eq 0 ]; then
  echo ""
  echo "✅ 安装完成！"
  echo ""
  echo "在 Claude Code 中使用："
  echo "  /mx-design 帮我找个日历组件"
  echo ""
else
  echo "❌ 安装失败"
  exit 1
fi