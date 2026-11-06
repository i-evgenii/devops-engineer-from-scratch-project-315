.PHONY: deps deploy deploy-check rollback

deps:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml

deploy-check:
	ansible-playbook -i inventory.ini playbook.yml --check --diff

rollback:
	ansible-playbook -i inventory.ini playbook.yml \
		-e "app_version=$(ROLLBACK_VERSION)"