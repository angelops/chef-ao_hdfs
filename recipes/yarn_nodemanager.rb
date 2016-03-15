#
# Cookbook Name:: zip_hdfs
# Recipe:: datanode
#
# Copyright (C) 2016 Justin Alan Ryan (ZipRealty / Realogy)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'zip_hdfs::default'
include_recipe 'hadoop::hadoop_yarn_nodemanager'

#ruby_block 'service-hadoop-yarn-nodemanager-start' do
#  block do
#    %w(enable start).each do |action|
#      resources('service[hadoop-yarn-nodemanager]').run_action(action.to_sym)
#    end
#  end
#end

directory node['hdfs_site']['dfs.datanode.data.dir'] do
  action :create
  recursive true
end

