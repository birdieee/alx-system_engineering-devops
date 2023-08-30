#!/usr/bin/env bash
# usig puppet to make changes to our configuration file
'
file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration 
	host*
	IdentifyFile ~/.ssh/school
	PasswordAuthentication no
	",	

}
