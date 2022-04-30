# rm -rf artalk-go* data/ #Uncomment this line to update
if [ ! -f "artalk-go" ];then
curl -L  -o artalk.tar.gz https://github.com/ArtalkJS/ArtalkGo/releases/download/v2.1.4/artalk-go_v2.1.4_linux_amd64.tar.gz
tar -zxvf artalk.tar.gz
mv artalk-go_v2.1.4_linux_amd64 artalk
mv -b artalk/* ./ 
mv -b artalk/.[^.]* ./ 
rm -rf *~ 
rm -rf artalk.tar.gz
rm -rf artalk
rm -rf artalk-go.yml
rm -rf replit-artalk
./artalk-go gen artalk-go.example.yml ./artalk-go.yml
#upgit
curl -L  -o upgit https://github.com/pluveto/upgit/releases/download/v0.2.16/upgit_linux_amd64
curl -L  -o  config.toml https://raw.githubusercontent.com/pluveto/upgit/main/config.sample.zh-CN.toml
chmod +x upgit
fi
redis-server ./redis.conf
./artalk-go upgrade
./artalk-go serve -c artalk-go.yml
