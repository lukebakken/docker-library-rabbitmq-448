.PHONY: repro

repro:
	docker pull rabbitmq
	docker run --rm --user rabbitmq -e HOME= rabbitmq env | grep '^HOME'
	docker run --rm --user root -e HOME= rabbitmq env | grep '^HOME'
	docker run --rm --user nobody -e HOME= rabbitmq env | grep '^HOME'
	docker run --rm --user 1234:1234 -e HOME= rabbitmq env | grep '^HOME'
	docker run --rm --user 1234:1234 rabbitmq env | grep '^HOME'
