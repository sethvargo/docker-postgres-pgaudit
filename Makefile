build-push:
	@docker build \
		-t docker.pkg.github.com/sethvargo/docker-postgres-pgaudit/postgres \
		-t docker.pkg.github.com/sethvargo/docker-postgres-pgaudit/postgres:13 \
		-f debian13.dockerfile \
		.
	@docker push docker.pkg.github.com/sethvargo/docker-postgres-pgaudit/postgres
	@docker push docker.pkg.github.com/sethvargo/docker-postgres-pgaudit/postgres:13
.PHONY: build-push
