$TTL 180
@	IN	SOA	ns1	zhangwj.nerc.edu.cn(
	20200819;
	3H;
	15M
	1W;
	1D);
;A recorder
	IN 	NS	ns1;
@	IN	A	219.143.195.89;
ns1	IN	A	10.191.142.129;
*	IN	A	219.143.195.89;
