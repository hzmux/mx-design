---
name: mx-design
description: 根据项目风格从资源列表中选择合适的组件、模板和工具，包括 shadcn/ui、Magic UI、Aceternity UI 等
argument-hint: "<项目描述或功能需求>"
user-invocable: true
---

# MX Design - 组件推荐助手

从 awesome-shadcn-ui 资源列表中，根据项目需求推荐合适的组件、模板和工具。

## 使用场景

- 用户开始一个新项目，需要选组件
- 用户问："有什么好的 shadcn 日历组件？"
- 用户问："帮我找个 AI Chat UI 组件"
- 用户需要一个完整模板来快速启动

## 工作流程

### 1. 收集项目信息

首先了解项目的关键信息：

```
问题示例：
- "这是什么类型的项目？Web App / Landing Page / Admin Dashboard / 移动端？"
- "设计风格偏好？Modern / Neo-brutalism / Glassmorphism / Retro / Dark Luxury / Minimal"
- "需要哪些核心功能？日历 / 表格 / 表单构建 / Chat UI / 动画 / 图表"
- "技术栈是什么？Next.js / React / Vue / Svelte"
```

### 2. 搜索资源

在 `/Users/chenchen/mx/ui/awesome-shadcn-ui/README.md` 中使用 Grep 搜索相关关键词：

```bash
# 搜索特定组件类型
Grep pattern: "calendar" path: "README.md"
Grep pattern: "chat" -i true path: "README.md"
Grep pattern: "table" path: "README.md"
Grep pattern: "form" path: "README.md"
Grep pattern: "dashboard" path: "README.md"
Grep pattern: "animation" path: "README.md"
Grep pattern: "landing" path: "README.md"
```

### 3. 筛选推荐

根据项目信息筛选最合适的选项：

- **项目类型匹配**: Landing Page → 优先模板/动画
- **风格匹配**: Neo-brutalism → 找相关主题组件
- **功能需求**: 需要表格 → 从多个表格组件中推荐
- **活跃度**: 查看日期，选择近期更新的

### 4. 输出推荐格式

```markdown
## 推荐组件

### 1. [组件名]
- **链接**: https://...
- **描述**: 一句话描述
- **为什么适合**: 结合项目风格的推荐理由
- **类别**: 在哪个分类(Libs/Templates/Tools 等)
- **更新**: YYYY-MM-DD

### 2. ...

## 使用建议

- 安装方法（如果有）
- 集成注意事项
- 可能的定制需求
```

## 资源分类速查

| 分类 | 关键词 | 说明 |
|------|--------|------|
| Libs and Components | 组件名 | 独立组件库 |
| Registries | registry | shadcn 注册表 |
| Animations | animation, motion, framer | 动画库 |
| Tools | tool, builder, generator | 开发工具 |
| Platforms | platform, app | 完整平台项目 |
| Ports | vue, svelte, flutter, angular | 其他框架移植版 |
| Boilerplates | template, starter, boilerplate | 启动模板 |
| Colors | theme, color, gradient | 主题定制工具 |

## 输出原则

1. **相关性优先**: 只推荐真正适合项目的
2. **提供选择**: 列出 2-3 个备选，带各自特点
3. **说明理由**: 解释为什么这个组件适合项目风格
4. **包含链接**: 让用户可以自己查看详情
5. **考虑维护**: 优先推荐活跃维护的项目

## 示例对话

**用户**: "我要做个 AI Chat 应用，用 Next.js"

**你**:
1. 搜索 chat 相关组件
2. 了解项目是 Next.js + AI Chat
3. 推荐:
   - shadcn-chat (专门聊天组件)
   - assistant-ui (AI Chat 组件)
   - manifest-ui (ChatGPT/MCP 风格组件)

**用户**: "想要一个炫酷的 landing page 模板"

**你**:
1. 搜索 landing/template 相关
2. 了解用户偏好"炫酷"
3. 推荐:
   - MagicUI (动画丰富)
   - Aceternity UI (趋势组件)
   - kairo-ui (免费 landing 模板)