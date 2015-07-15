#
# Cookbook Name:: best_app
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# update package database
execute "apt-get update"

# install packages
package "curl"
