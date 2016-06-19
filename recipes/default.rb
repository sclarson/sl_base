#
# Cookbook Name:: sl_base
# Recipe:: default
#
# Copyright (c) 2016 Seth Larson, All Rights Reserved.

node.set['chef_client']['interval'] = 1800

include_recipe 'sl_apt::default'
include_recipe 'chef-client::default'
include_recipe 'sl_nginx::default'

