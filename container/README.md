# Container Environment

## docker

- [from](https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script)

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
```

## docker compose

```bash
curl -SL https://github.com/docker/compose/releases/download/v2.20.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

## minikube

- https://minikube.sigs.k8s.io/docs/start/

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube
```

## kind

- https://kind.sigs.k8s.io/docs/user/quick-start/#installing-from-release-binaries

```bash
# For AMD64 / x86_64
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
# For ARM64
[ $(uname -m) = aarch64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-arm64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind


# For Intel Macs
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-darwin-amd64
# For M1 / ARM Macs
[ $(uname -m) = arm64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-darwin-arm64
chmod +x ./kind
mv ./kind /some-dir-in-your-PATH/kind
```

## kubectl

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"
```

## helm

- https://v2.helm.sh/docs/using_helm/#installing-helm
- https://helm.sh/docs/intro/install/

```bash
# helm2
curl -L https://git.io/get_helm.sh | bash

# helm3
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

## helmfile

- https://helmfile.readthedocs.io/en/latest/#installation

```bash
https://github.com/helmfile/helmfile/releases/download/v0.155.1/helmfile_0.155.1_darwin_arm64.tar.gz

https://github.com/helmfile/helmfile/releases/download/v0.155.1/helmfile_0.155.1_linux_amd64.tar.gz
```

## skaffold

- https://skaffold.dev/docs/install/

```bash
# For Linux x86_64 (amd64)
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
sudo install skaffold /usr/local/bin/

# For macOS on ARMv8 (arm64)
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-darwin-arm64 && \
sudo install skaffold /usr/local/bin/
```
