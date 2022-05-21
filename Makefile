DEFAULT_NAME := elixir_docker

sing:
	echo $(DEFAULT_NAME)

docker_name ?= $(DEFAULT_NAME)
docker_build:
	docker build . -t $(docker_name)

docker_name ?= $(DEFAULT_NAME)
docker_run_it:
	docker run --name $(docker_name) -it $(docker_name)

