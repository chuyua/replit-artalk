# replit-artalk

**一键安装**

```
git clone https://github.com/chuyua/replit-artalk && mv -b replit-artalk/* ./ && mv -b replit-artalk/.[^.]* ./ && rm -rf *~ && rm -rf replit-artalk
```

# 默认部署本地redis作为缓存服务器

## 配置redis 缓存

参考以下**artalk-go.yml**配置文件修改以支持本地高性能redis缓存数据库

```
# 缓存
cache:
  type: "redis" # 支持 redis, memcache, builtin (自带缓存)
  expires: 30     # 缓存过期时间 (单位：分钟)
  warm_up: true # 程序启动时预热缓存
  server: "localhost:6379"      # 连接缓存服务器 (例如："localhost:6379")
```

# 默认下载upgit作为图床支持

参考以下**artalk-go.yml**配置文件修改以支持图床上传

```
# 图片上传
img_upload:
  enabled: true              # 总开关
  path: "./data/artalk-img/" # 图片存放路径
  max_size: 5                # 图片大小限制 (单位：MB)
  public_path: null          # 指定图片链接基础路径 (默认为 "/static/images/")
  # 使用 upgit 将图片上传到 GitHub 或图床 (https://github.com/pluveto/upgit)
  upgit:
    enabled: true  # 启用 upgit
    exec: "./upgit -c ./config.toml -t /artalk-img"
    del_local: true # 上传后删除本地的图片
```


