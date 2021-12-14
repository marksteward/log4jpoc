build:
	docker build -t log4jpoc .
run: build
	docker run -ti log4jpoc
