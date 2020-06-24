docker:
	docker push gsmlg/postgres

build-image:
	docker build -t gsmlg/postgres .


