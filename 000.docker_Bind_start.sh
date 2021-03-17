# [root@Nerc bin]# ./elasticsearch-plugin install https://github.com/medcl/ \
#elasticsearch-analysis-ik/releases/download/v7.3.2/elasticsearch-analysis-ik-7.3.2.zip -y
# 分词器版本必须要与Elasticsearch版本一致。
#./elasticsearch-plugin install 
#https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.1/elasticsearch-analysis-ik-7.6.1.zip
#
#
#

docker container run -d \
  --name Bind \
  -p 53:53 \
  -p 53:53/udp \
  -p 953:953 \
  --volume /etc/localtime:/etc/localtime:ro \
  --volume `pwd`/:/etc/bind \
  --restart always \
  --user root \
  --hostname Bind \
  --name Bind \
  resystit/bind9:latest



