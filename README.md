# replit-artalk
一键安装

git clone https://github.com/chuyua/replit-artalk && mv -b replit-artalk/* ./ && mv -b replit-artalk/.[^.]* ./ && rm -rf *~ && rm -rf replit-artalk

默认支持redis 

# redis 缓存

cache:

  type: "redis"# 支持 redis, memcache, builtin (自带缓存)
  
  expires: 30     # 缓存过期时间 (单位：分钟)
  
  warm_up: false  # 程序启动时预热缓存
  
  server: "localhost:6379"      # 连接缓存服务器 (例如："localhost:6379")
  
  
  默认下载
upgit 作为图床支持
