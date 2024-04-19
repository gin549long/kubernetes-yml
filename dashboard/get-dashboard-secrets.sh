#!/bin/bash
kubectl describe secrets -n kube-system admin-user |awk  'BEGIN{FS="[ :]+"}/^token/{print $2}'
