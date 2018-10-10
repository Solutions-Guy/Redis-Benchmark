screen -dmS 7000
screen -S 7000 -X stuff 'cd /root/cluster/7000\nredis-server redis.conf\n'
screen -dmS 7001
screen -S 7001 -X stuff 'cd /root/cluster/7001\nredis-server redis.conf\n'
screen -dmS 7002
screen -S 7002 -X stuff 'cd /root/cluster/7002\nredis-server redis.conf\n'
screen -dmS 7003
screen -S 7003 -X stuff 'cd /root/cluster/7003\nredis-server redis.conf\n'
