#!/bin/sh

# set java home
echo '
# set java home
export JAVA_HOME=/usr/local/jdk1.7
export CLASSPATH=$JAVA_HOME/lib:JAVA_HOME/jre/lib
export PATH=$PATH:$JAVA_HOME/bin
'>> /etc/profile

#set Hadoop home
echo '
#set Hadoop home
export HADOOP_HOME=/home/ubuntu/hadoop-2.2
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
'>> /etc/profile

source /etc/profile
