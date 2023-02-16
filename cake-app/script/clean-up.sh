#!/bin/bash

FILES="../cross-namespace/brownie.yaml
../cross-namespace/brownie-virtual-server-route.yaml
../cross-namespace/chiffon.yaml
../cross-namespace/chiffon-virtual-server-route.yaml
../cross-namespace/cheesecake.yaml
../cross-namespace/cheesecake-virtual-server-route.yaml
../cross-namespace/cake-virtual-server.yaml
../cross-namespace/wlc-server-secret.yaml
../cross-namespace/namespaces.yaml
"
for f in $FILES
do
  kubectl delete -f $f
done