#!/bin/bash
##############################################################################
#func_log_print()
##############################################################################
#功能说明:  
#参数说明: 
#	$1:level (error/warn/info/concern)
#	$2:message
#使用方法:
#	func_log_print "level" "message"
##############################################################################
function func_log_print()
{
	local level="$1"
	local msg="$2"
	
	case $level in
		error)	echo -e "\033[41;30;1m${msg}\033[0m";;
		warn)	echo -e "\033[43;30;1m${msg}\033[0m";;
		info)	echo -e "\033[47;30;1m${msg}\033[0m";;
		concern)	echo -e "\033[42;30;1m${msg}\033[0m";;
		*)		echo "${msg}";;
	esac
}
