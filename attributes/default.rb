default['java']['jdk_version'] = 8
default['hdfs_site']['dfs.datanode.data.dir'] = '/srv/hadoop/data'
default['hdfs_site']['dfs.namenode.data.dir'] = '/srv/hadoop/data'
default['hdfs_site']['dfs.replication'] = '3'
force_default['hadoop']['distribution'] = 'cdh'
force_default['hadoop']['distribution_version'] = '5.5.1'
