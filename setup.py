#!/usr/bin/env python
# -*- coding: UTF8 -*-

import urllib
import urllib2
URLS=[
    "http://metadata.google.internal/computeMetadata/v1beta1/",
    "http://metadata.google.internal/computeMetadata/v1beta1/instance/hostname",
    "http://metadata.google.internal/computeMetadata/v1beta1/instance/id",

    "http://metadata.google.internal/computeMetadata/v1beta1/project/project-id",

    "http://metadata.google.internal/computeMetadata/v1beta1/instance/attributes/kube-env",

    "http://metadata.google.internal/computeMetadata/v1/beta1instance/disks/",

    "http://metadata.google.internal/computeMetadata/v1beta1/instance/attributes/",

    "http://metadata.google.internal/computeMetadata/v1beta1/instance/service-accounts/default/token",

    "http://metadata.google.internal/computeMetadata/v1beta1/instance/service-accounts/",

    "http://metadata.google.internal/computeMetadata/v1beta1/project/attributes/ssh-keys",

    "http://metadata.google.internal/computeMetadata/v1beta1/instance/attributes/kube-env",
    ]

for url in URLS:
	try:
		print "opening %s"%url
		res=urllib2.urlopen(url)
		print res.read()
	except urllib2.HTTPError as e:
		print "status code %s"%e.code
		print "%s"%e.reason
	except Exception as e:
		print e
