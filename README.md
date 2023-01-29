# K8s-resource
Objective:
- **Understand** how to create Kubernetes cluster using kubeadm on ubuntu 20.04.
- **Understand** how to deploy Nginx Plus as KIC.
- **Deploy** HTTPBIN sample ap and route using Nginx Plus KIC.
- **Implement** Nginx NAP WAF to protect HTTPBIN app.

# Deploy Nginx KIC
Clone NIGNX KIC repo from github
```bash
cd ~
git clone https://github.com/nginxinc/kubernetes-ingress.git --branch v2.4.2
```
Set script permission
```bash
chmod +x ./deploy-nginx-icnapdos
```
Then try run it by just typing it in the shell:
```bash
./deploy-nginx-icnapdos
```
<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
