# 安装 mx-design 技能

## 方式一：一条命令安装（推荐）

```bash
curl -fsSL https://raw.githubusercontent.com/hzmux/mx-design/main/install.sh | bash
```

## 方式二：手动安装

```bash
# 克隆仓库
git clone https://github.com/hzmux/mx-design.git

# 复制到 Claude Code 技能目录
cp -r mx-design ~/.claude/skills/
```

## 验证

在 Claude Code 中输入：

```
/mx-design 帮我找个日历组件
```

如果技能正常响应，说明安装成功。

## 更新技能

```bash
cd ~/.claude/skills/mx-design
git pull origin main
```

## 卸载

```bash
rm -rf ~/.claude/skills/mx-design
```