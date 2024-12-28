# Dockerイメージをビルドする。
.PHONY: build-docker-image
build-docker-image:
	@echo ">> Building Docker Image..."
	@cd api;  make build-docker-image
	@cd web; make build-docker-image
