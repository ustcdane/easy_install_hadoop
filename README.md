easy_install_hadoop
===================

Hadoop一键安装

配置SSH无密码登录 已配好，若无请参考：https://github.com/ustcdane/ssh_set

配置相应的 java 环境及Hadoop环境，需要做一点的修改。请运行脚本 env.sh 然后 source /etc/profile

根据需要修改 $HADOOP_HOME/etc/hadoop/slaves 下的从节点等。
运行脚本hadoop.sh 即可完成一键安装hadoop集群。

Error：
Hadoop 2.2.0 : “name or service not known” Warning
Solve:http://stackoverflow.com/questions/21326274/hadoop-2-2-0-name-or-service-not-known-warning
