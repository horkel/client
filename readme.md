## 基于 ArchLinux 的 Client 镜像

加载 oh-my-zsh 和基础常用工具

### 构建镜像

```
docker build -t horkel/client:2019.09.26 .
```

### 推送镜像

```
docker push horkel/client:2019.09.26
```
