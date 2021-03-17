$TTL 180
@	IN	SOA	ns1	zhangwj.nerc.edu.cn(
	20200819;
	3H;
	15M
	1W;
	1D);
;A recorder
	IN 	NS	ns1;
@	IN	A	10.191.142.129;
ns1	IN	A	10.191.142.129;
uploader.service	IN	A	10.191.142.17;
vmc.service		IN	A	202.205.161.90;
