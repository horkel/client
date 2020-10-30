## 基于 ArchLinux 的 Client 镜像

加载 oh-my-zsh 和基础常用工具

### 构建镜像

```
tar -zcvf zsh.tar.gz -C zsh/ .
docker build -t horkel/client:2020.10.30 .
```

### 推送镜像

```
docker push horkel/client:2020.10.30
```
