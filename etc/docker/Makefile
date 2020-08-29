.PHONY: build dist

build:
	cp -pf ~/.ssh/id_rsa .
	docker build . -t jscoq:addons-sf

dist:
	docker run --name jscoq-get-dist jscoq:addons-sf \
		sh -c 'mkdir -p dist && cp ../_build/jscoq+64bit/jscoq-software-foundations*.tgz dist'
	docker cp jscoq-get-dist:/root/jscoq-addons/software-foundations/dist .
	docker rm jscoq-get-dist
