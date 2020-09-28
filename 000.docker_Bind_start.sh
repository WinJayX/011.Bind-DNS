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




docker container run -d \
  -p 5601:5601 \
  -p 9200:9200 \
  -p 5044:5044 \
  --volume `pwd`/elk-data:/var/lib/elasticsearch \
  --restart always \
  --user root \
  --hostname ELK \
  --name ELK \
  winjay/els-ik:780
