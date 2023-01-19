# K8s-resource
Objective:
- **Understand** how to deploy Nginx Plus as KIC.
- **Deploy** Nginx Plus KIC.

## Deploy Nginx KIC
Clone NIGNX KIC repo from github
```bash
cd ~
git clone https://github.com/nginxinc/kubernetes-ingress.git --branch v2.4.2
cd kubernetes-ingress/deployments
```

Testing deployment
```bash
cd ~/kubernetes-ingress/deployments/
kubectl apply -f common/ns-and-sa.yaml
```

Apply the rbac
```bash
kubectl apply -f rbac/rbac.yaml
kubectl apply -f rbac/ap-rbac.yaml
kubectl apply -f rbac/apdos-rbac.yaml
```

Create SSL
```bash
kubectl apply -f common/default-server-secret.yaml
```

Create nginx config it's must, but will be use for further need
```bash
kubectl apply -f common/nginx-config.yaml
```

Create the inggressClass
```bash
kubectl apply -f common/ingress-class.yaml
```

Create CRD
```bash
kubectl apply -f common/crds/k8s.nginx.org_virtualservers.yaml
kubectl apply -f common/crds/k8s.nginx.org_virtualserverroutes.yaml
kubectl apply -f common/crds/k8s.nginx.org_transportservers.yaml
kubectl apply -f common/crds/k8s.nginx.org_policies.yaml
```

### NGINX WAF using NAP
For NAP
```bash
kubectl apply -f common/crds/appprotect.f5.com_aplogconfs.yaml
kubectl apply -f common/crds/appprotect.f5.com_appolicies.yaml
kubectl apply -f common/crds/appprotect.f5.com_apusersigs.yaml
```

For DoS
```bash
kubectl apply -f common/crds/appprotectdos.f5.com_apdoslogconfs.yaml
kubectl apply -f common/crds/appprotectdos.f5.com_apdospolicy.yaml
kubectl apply -f common/crds/appprotectdos.f5.com_dosprotectedresources.yaml
```

Deploy arbitrator for nginx app protect dos
```bash
kubectl apply -f deployment/appprotect-dos-arb.yaml
kubectl apply -f service/appprotect-dos-arb-svc.yaml
```
```

