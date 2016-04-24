deploy:
	git subtree push --prefix public origin gh-pages

dev:
	npm install -g nodemon

.PHONY: deploy
