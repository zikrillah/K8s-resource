# K8s-resource
Objective:
- **Understand** how to deploy routing cross namespace.
- **Deploy** simple application to perform routing.

## Teplate for VSR
Clone NIGNX KIC repo from github
```bash
route: <ns>/<route>
route: cheesecake/cheesecake
```
## Utilize the script
Set script permission
```bash
chmod +x ./script/deploy-cake-app.sh
```
Then try run it by just typing it in the shell:
```bash
./deploy-cake-app.sh
```