current_dir = $(shell pwd)

default: build

build:
	docker run -v $(current_dir):/app -w /app ruby bundle exec jekyll serve

install:
	docker run -v $(current_dir):/app -w /app ruby bundle install
