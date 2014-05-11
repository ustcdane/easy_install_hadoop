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

Fix Bug:

hadoop2.2.0启动中遇到的错误，slave节点上的NodeManger无法启动
log为：mapreduce.shuffle set in yarn.nodemanager.aux-services is invalid 
解决方法：                                                                                                   yarn.site.xml参数配置的问题                                               yarn.nodemanager.aux-services.mapreduce_shuffle.class部分的错误                                                      正确的是这样：                                                                                                     <property>                                                                <name>yarn.nodemanager.aux-services.mapreduce_shuffle.class</name>                                   <value>mapreduce_shuffle</value>                                                                               <description>shuffle service that needs to be set for Map Reduce to run </description>                            </property>                                                                                                                          
hadoop.sh已修正。
