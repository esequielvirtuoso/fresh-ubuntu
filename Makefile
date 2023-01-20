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

install-everything: install-git install-keybase set-ssh-permissions install-postman
	echo "**************** YOU ARE GOOD TO GO! ****************"
