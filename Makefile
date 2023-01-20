install-git:
	./hack/1-install-git.sh

install-vscode:
	./hack/2-vscode-and-common-softwares.sh

install-keybase:
	./hack/3-install-key-base.sh

set-ssh-permissions:
	./hack/4-set-ssh-permissions.sh

install-postman:
	./hack/5-install-postman.sh

# must be installed separately
install-datagrip:
	./hack/6-install-datagrip.sh

disable-ipv6:
	./hack/7-disable-ipv6.sh

install-robomongo:
	./hack/8-install-robomongo.sh

install-zoom:
	./hack/9-install-zoom.sh

install-docker:
	./hack/10-install-docker.sh

set-up-zsh:
	./hack/11-set-up-zsh.sh

install-go:
	./hack/12-install-go.sh

install-everything: install-git install-keybase set-ssh-permissions install-postman install-robomongo install-zoom install-docker
	echo "**************** YOU ARE GOOD TO GO! ****************"
