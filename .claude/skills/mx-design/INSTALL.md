# 安装 mx-design 技能

## 安装

### 自动安装（推荐）

```bash
curl -fsSL https://raw.githubusercontent.com/hzmux/mx-design/main/install.sh | bash
```

安装脚本会自动：
1. 下载 mx-design 技能
2. 下载 awesome-shadcn-ui 组件数据（200+ 资源）
3. 配置到你的 Claude Code 中

### 手动安装

```bash
# 克隆仓库
git clone https://github.com/hzmux/mx-design.git

# 复制技能
cp -r mx-design ~/.claude/skills/

# 手动下载 awesome-shadcn-ui 数据
git clone --depth 1 https://github.com/birobirobiro/awesome-shadcn-ui.git /tmp/awesome-shadcn-ui
cp /tmp/awesome-shadcn-ui/README.md ~/.claude/skills/mx-design/README.md
rm -rf /tmp/awesome-shadcn-ui
```

## 使用

在 Claude Code 中直接输入：

```
/mx-design 帮我找个日历组件
/mx-design 我要做 AI Chat 应用
/mx-design 想要 admin dashboard 模板
```

## 更新

```bash
# 重新运行安装脚本
curl -fsSL https://raw.githubusercontent.com/hzmux/mx-design/main/install.sh | bash
```

## 卸载

```bash
rm -rf ~/.claude/skills/mx-design
```