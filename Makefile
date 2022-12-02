run:
	ansible-playbook playbooks/initsoft/main.yml --tags "mysql" --tags "web"
#web docker mysql

