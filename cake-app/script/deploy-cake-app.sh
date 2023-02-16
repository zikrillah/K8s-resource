#!/bin/bash

FILES="../cross-namespace/namespaces.yaml
../cross-namespace/wlc-server-secret.yaml
../cross-namespace/cake-virtual-server.yaml
../cross-namespace/brownie.yaml
../cross-namespace/brownie-virtual-server-route.yaml
../cross-namespace/chiffon.yaml
../cross-namespace/chiffon-virtual-server-route.yaml
../cross-namespace/cheesecake.yaml
../cross-namespace/cheesecake-virtual-server-route.yaml
"
for f in $FILES
do
  kubectl apply -f $f
done