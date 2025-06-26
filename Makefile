.PHONY: lint test converge verify destroy cleanup

lint:
	yamllint .
	ansible-lint

test:
	molecule test

converge:
	molecule converge

verify:
	molecule verify

destroy:
	molecule destroy

cleanup: destroy
	rm -rf .molecule
