setup:
	docker-compose build

ruby-script:
	docker-compose run --rm ruby

python-script:
	docker-compose run --rm python

cli-script:
	docker-compose run --rm cli
