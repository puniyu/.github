<div align="center">
  <img src="../logo.png" alt="puniyu" width="300">
</div>

<div align="center">

**基于 Rust 的模块化即时通讯聊天机器人框架**

围绕事件驱动架构与插件化设计构建，提供高性能、可扩展的机器人开发平台

</div>

---

## 目录

- [目录](#目录)
- [关于](#关于)
- [仓库](#仓库)
- [贡献](#贡献)

## 关于

puniyu 是一个用 Rust 编写的即时通讯聊天机器人框架，核心特性：

- **事件驱动架构** —— 异步消息处理与事件分发
- **插件化设计** —— 通过声明式宏快速开发可插拔的功能模块
- **多平台适配** —— 统一的适配器抽象，轻松接入不同即时通讯平台
- **模块化架构** —— Cargo workspace 拆分，按需依赖，独立迭代

## 仓库

| 仓库 | 说明 |
|:-----------|:------------|
| [**puniyu**](https://github.com/puniyu/puniyu) | 主程序，基于 core 构建的即时通讯聊天机器人应用 |
| [**core**](https://github.com/puniyu/core) | 框架核心引擎，提供事件系统、消息处理、插件管理等基础能力 |
| [**cli**](https://github.com/puniyu/cli) | 命令行工具，用于管理、调试与运行机器人 |
| [**plugins-workspace**](https://github.com/puniyu/plugins-workspace) | 官方插件合集 |
| [**adapters-workspace**](https://github.com/puniyu/adapters-workspace) | 官方适配器合集 |
| [**puniyu-launcher**](https://github.com/puniyu/puniyu-launcher) | 启动器 |
| [**webui**](https://github.com/puniyu/webui) | Web 管理界面 |

## 贡献

欢迎参与贡献！请参考各仓库的 README 了解开发规范。

