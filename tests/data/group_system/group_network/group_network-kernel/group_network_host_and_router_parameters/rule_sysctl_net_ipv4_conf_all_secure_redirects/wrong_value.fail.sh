#!/bin/bash
#
# profiles = xccdf_org.ssgproject.content_profile_C2S, xccdf_org.ssgproject.content_profile_nist-800-171-cui

if grep -q "^net.ipv4.conf.all.secure_redirects" /etc/sysctl.conf; then
	sed -i "s/^net.ipv4.conf.all.secure_redirects.*/net.ipv4.conf.all.secure_redirects = 1/" /etc/sysctl.conf
else
	echo "net.ipv4.conf.all.secure_redirects = 1" >> /etc/sysctl.conf
fi
sysctl -w net.ipv4.conf.all.secure_redirects=1
