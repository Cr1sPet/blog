CONTAINER_NAME	=	web

.PHONY:	app

app-init:
	@docker-compose run --rm $(CONTAINER_NAME) bash -c "bundle install && \
	rails db:drop db:create db:migrate db:seed && \
	yarn install --frozen-lockfile"

app:
	@docker-compose up

app-bundle:
	@docker-compose run --rm $(CONTAINER_NAME) bash -c "bundle install"

app-bash:
	@docker-compose run --rm $(CONTAINER_NAME) bash

app-running-bash:
	@docker-compose exec $(CONTAINER_NAME) bash

app-stop:
	@docker-compose stop

app-down:
	@docker-compose down
