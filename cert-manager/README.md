# Cert Manager
Is a Cloud native certificate management
Objective:
- **Understand** how to deploy Cer manager.
- **Deploy** cert manager to generate letsencript SSL using DNS challange.

## Istallation guide
On thi repo the cert manager deploy using **kubectl apply** you can using this [link](https://cert-manager.io/docs/installation/kubectl/)

**Spec:**
cer-manager : v1.11.0

## Generate the lets encript SSL
Deploy the API key as a secret
```bash
kubectl apply -f secret-cflr.yaml
```
Deploy cluster issuer
```bash
kubectl apply -f cluster-issuer-acme.yaml
```
Request the certificate
```bash
kubectl apply -f prod-certificate.yaml
```
## Tshoot
Check the certificate status
```bash
kubectl describe certificate
```
output:
/img/certificate.png

Check the certificate request status, if pending it's need more time
```bash
kubectl describe certificaterequest
```
output:
img/certificaterequest.png