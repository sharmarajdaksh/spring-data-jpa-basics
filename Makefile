.PHONY: postgres

postgres:
	docker run \
		--name=spring_postgres \
		-e POSTGRES_PASSWORD=password \
		-e POSTGRES_USER=user \
		-e POSTGRES_DB=postgres \
		-v /var/lib/postgresql/data \
		-p 5432:5432 \
		-d postgres