# mx-design

基于 awesome-shadcn/ui 封装的 Claude Code 技能，根据项目需求推荐合适的 UI 组件、模板和工具。

## 简介

mx-design 是一个 Claude Code 技能，帮助你在开发新项目时快速找到合适的 shadcn/ui 系列组件。无论你需要日历、表格、表单构建器，还是完整的 Admin Dashboard 模板，只需要告诉它你的需求，它就会从 200+ 资源中筛选最合适的推荐给你。

## 演示网站

- [awesome-shadcn-ui](https://awesome-shadcn-ui.vercel.app) - 组件资源列表
- [Magic UI](https://magicui.design) - 动画组件库
- [Aceternity UI](https://ui.aceternity.com) - 流行 React 组件
- [shadcn Studio](https://shadcnstudio.com/) - shadcn 官方注册表

## 功能

- 根据项目类型推荐组件（Landing Page / Admin Dashboard / AI Chat App）
- 根据设计风格筛选（Modern / Neo-brutalism / Glassmorphism / Retro）
- 推荐启动模板快速开始项目
- 提供多个备选方案并说明推荐理由

## 安装

### 一条命令安装（推荐）

```bash
curl -fsSL https://raw.githubusercontent.com/hzmux/mx-design/main/install.sh | bash
```

### 手动安装

```bash
# 克隆仓库
git clone https://github.com/hzmux/mx-design.git

# 复制到 Claude Code 技能目录
cp -r mx-design ~/.claude/skills/
```

## 使用方式

在 Claude Code 中直接输入：

```
/mx-design 帮我找个日历组件
/mx-design 想要一个 admin dashboard 模板
/mx-design 推荐 neo-brutalism 风格的组件
/mx-design 我要做 AI Chat 应用
```

## 示例对话

**你**: `/mx-design 我要做个 AI Chat 应用`

**我**:
1. 搜索 Chat 相关组件
2. 了解你的需求是 Next.js + AI Chat
3. 推荐:
   - shadcn-chat - 专门聊天组件
   - assistant-ui - AI Chat UI 组件
   - manifest-ui - ChatGPT/MCP 风格组件

**你**: `/mx-design 想要炫酷的 landing page 模板`

**我**:
1. 搜索 Landing/模板相关
2. 推荐:
   - MagicUI - 动画丰富
   - Aceternity UI - 流行趋势组件
   - kairo-ui - 免费 Landing 模板

## 资源分类

| 分类 | 说明 |
|------|------|
| Libs and Components | 组件库 |
| Animations | 动画库 |
| Tools | 开发工具 |
| Platforms | 完整平台项目 |
| Ports | Vue/Svelte/Flutter 移植版 |
| Boilerplates | 启动模板 |

## 更新技能

```bash
cd ~/.claude/skills/mx-design
git pull origin main
```

## 卸载

```bash
rm -rf ~/.claude/skills/mx-design
```

---

基于 [awesome-shadcn-ui](https://github.com/birobirobiro/awesome-shadcn-ui) 项目。