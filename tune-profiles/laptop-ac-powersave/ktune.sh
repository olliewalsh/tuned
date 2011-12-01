#!/bin/sh

. /etc/tune-profiles/functions

start() {
	set_disk_alpm min_power
	enable_wifi_powersave
	set_radeon_powersave dynpm

	return 0
}

stop() {
	set_disk_alpm max_performance
	disable_wifi_powersave
	set_radeon_powersave profile

	return 0
}

process $@
