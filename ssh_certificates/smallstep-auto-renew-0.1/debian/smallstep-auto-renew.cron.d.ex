#
# Regular cron jobs for the smallstep-auto-renew package
#
0 4	* * *	root	[ -x /usr/bin/smallstep-auto-renew_maintenance ] && /usr/bin/smallstep-auto-renew_maintenance
