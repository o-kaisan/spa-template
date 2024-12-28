VERSION = "0.0.1"

# パッケージをインストールする
.PHONY: deps
deps:
	pip install -r requirements.txt

# Dockerイメージを作成する
.PHONY: build-docker-image
build-docker-image:
	@echo ">> Building Docker Image..."
	cp .dockerignore ../
	cd ../ && DOCKER_BUILDKIT=1 docker build -f api/Dockerfile \
		-t spa-template-api:latest \
		-t spa-template-api:$(VERSION) \
		.
	rm -f ../.dockerignore

# Dockerイメージを作成 + ログ出力
.PHONY: build-docker-image-debug
build-docker-image-debug:
	@echo ">> Building Docker Image..."
	cp .dockerignore ../
	cd ../ && DOCKER_BUILDKIT=1 docker build --no-cache  --progress=plain  -f api/Dockerfile \
		-t spa-template-api:latest \
		-t spa-template-api:$(VERSION) \
		.
	rm -f ../.dockerignore
