#!/bin/bash

# mx-design 安装脚本

SKILL_DIR="$HOME/.claude/skills/mx-design"
MX_DESIGN_REPO="https://github.com/hzmux/mx-design.git"
AWESOME_REPO="https://github.com/birobirobiro/awesome-shadcn-ui.git"
TEMP_DIR="/tmp/mx-design-install-$$"

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

echo "正在安装 mx-design..."
echo ""

# 创建临时目录
mkdir -p "$TEMP_DIR"

# 1. 克隆 mx-design 技能
echo "📦 下载 mx-design 技能..."
git clone "$MX_DESIGN_REPO" "$TEMP_DIR/mx-design"

if [ $? -ne 0 ]; then
  echo "❌ 下载 mx-design 失败"
  rm -rf "$TEMP_DIR"
  exit 1
fi

# 2. 克隆 awesome-shadcn-ui 数据
echo "📦 下载 awesome-shadcn-ui 组件数据..."
git clone --depth 1 "$AWESOME_REPO" "$TEMP_DIR/awesome-shadcn-ui"

if [ $? -ne 0 ]; then
  echo "❌ 下载 awesome-shadcn-ui 数据失败"
  rm -rf "$TEMP_DIR"
  exit 1
fi

# 3. 复制 awesome-shadcn-ui 的 README.md 到 skill 目录
echo "📄 复制组件数据..."
cp "$TEMP_DIR/awesome-shadcn-ui/README.md" "$TEMP_DIR/mx-design/README.md"

# 4. 移动到目标目录
mkdir -p "$HOME/.claude/skills"
mv "$TEMP_DIR/mx-design" "$SKILL_DIR"

# 清理
rm -rf "$TEMP_DIR"

echo ""
echo "✅ 安装完成！"
echo ""
echo "组件数据来源: awesome-shadcn-ui ($(git -C "$SKILL_DIR/../mx-design" log -1 --format=%ai -- README.md 2>/dev/null || echo 'latest'))"
echo ""
echo "在 Claude Code 中使用："
echo "  /mx-design 帮我找个日历组件"
echo "  /mx-design 我要做 AI Chat 应用"
echo ""
echo "更新组件数据："
echo "  cd $SKILL_DIR"
echo "  git pull origin main  # 更新 mx-design"
echo "  # 手动更新 awesome-shadcn-ui 数据"