VERSION = "0.0.1"

# 必要なパッケージをインストールする
.PHONY: deps
deps:
	npm install

# ビルドする
.PHONY: build
build:
	npm run build

# 開発サーバで実行する
.PHONY: run-dev
run-dev:
	npm run dev

# Dockerイメージを作成する
.PHONY: build-docker-image
build-docker-image:
	@echo ">> Building Docker Image..."
	cp .dockerignore ../
	cd ../ && DOCKER_BUILDKIT=1 docker build -f web/Dockerfile \
		-t spa-template-web:latest \
		-t spa-template-web:$(VERSION) \
		.
	rm -f ../.dockerignore

# Dockerイメージを作成する + cache無し
.PHONY: build-docker-image-debug

build-docker-image-debug:
	@echo ">> Building Docker Image..."
	cp .dockerignore ../
	cd ../ && DOCKER_BUILDKIT=1 docker build --no-cache  --progress=plain  -f web/Dockerfile \
		-t spa-template-web:latest \
		-t spa-template-web:$(VERSION) \
		.
	rm -f ../.dockerignore
