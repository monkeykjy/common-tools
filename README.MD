# Common Tools Collection (常用工具集)

这是一个实用工具合集，旨在简化开发过程中的常见任务。

## 工具列表

### Git 相关工具

#### 清理本地分支工具 (git-prune-local-branches)

自动清理那些远程已删除但本地依然存在的 Git 分支。

**使用方法：**

```bash
curl -sSL https://raw.githubusercontent.com/monkeykjy/common-tools/main/git/git-prune-local-branches.sh -o /tmp/git-prune-local-branches.sh && bash /tmp/git-prune-local-branches.sh
```

**功能特点：**

- 自动检测远程已删除的本地分支
- 支持批量删除或逐个确认
- 操作前二次确认，避免误删

## 项目说明

本项目收集并开发各种实用工具，致力于简化开发过程中的重复性工作。未来会持续扩展，添加更多不同环境下的实用工具。

## 贡献指南

欢迎贡献新的工具或改进现有工具。请确保提交的工具：

- 具有清晰的使用说明
- 代码注释完善
- 经过充分测试

## License

MIT License

Copyright (c) 2024 monkeykjy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
