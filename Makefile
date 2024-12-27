build:
	ruff format &&\
	docker build -t ml_platform -f Dockerfile . --no-cache

run:
	ruff format &&\
	docker build -t ml_platform -f Dockerfile . &&\
	docker-compose up ml_platform mlflow

infra:
	docker-compose up mlflow

lint:
	ruff format
