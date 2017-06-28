#ss命令用于显示socket状态. 
#可以显示PACKET sockets, TCP sockets, UDP sockets, DCCP sockets, RAW sockets, Unix domain sockets等等统计.
#它比其他工具展示等多tcp和state信息. 它是一个非常实用、快速、有效的跟踪IP连接和sockets的新工具.SS命令可以提供如下信息：
#所有的TCP sockets
#所有的UDP sockets
#所有ssh/ftp/ttp/https持久连接
#所有连接到Xserver的本地进程
#使用state（例如：connected, synchronized, SYN-RECV, SYN-SENT,TIME-WAIT）、地址、端口过滤
#所有的state FIN-WAIT-1 tcpsocket连接以及更多

#很多流行的Linux发行版都支持ss以及很多监控工具使用ss命令.熟悉这个工具有助于您更好的发现与解决系统性能问题.本人强烈建议使用ss命令替代netstat部分命令,
#例如netsat -ant/lnt等.


#link# http://www.ttlsa.com/linux-command/ss-replace-netstat/
