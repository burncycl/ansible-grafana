# 2018/10 BuRnCycL

all: 
	ansible-playbook -i inventory grafana.yml --ask-vault-pass 

install:
	ansible-playbook -i inventory grafana.yml --ask-vault-pass --tags "install"

configure:
	ansible-playbook -i inventory grafana.yml --ask-vault-pass --tags "configure"
