user = 1000
group = 1000

start:  ## inicializa entorno de forma automatizada
	docker compose up -d
	docker compose logs -f
logs:  ## conecta al log de salida
	docker compose logs -f

install:  ## instala dependencias en todos los proyectos
	docker compose run microservicio-a bash -c "npm install"
	docker compose run microservicio-b bash -c "npm install"
	docker compose run webapp bash -c "npm install"
	dumpings

cleanup:  ## limpia el contexto

ng: ## angular cli
	docker compose -f tools.yaml run --user $(user):$(group) --rm ng 
nest: ## angular cli
	docker compose -f tools.yaml run --user $(user):$(group) --rm nestjs 


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
