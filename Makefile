install:
	composer install

console:
	./vendor/bin/psysh

lint:
	composer exec phpcs -- --standard=PSR12 src tests

lint-fix:
	composer exec phpcbf -- --standard=PSR12 src tests

test:
	composer test

test-coverage:
	composer test -- --coverage-clover build/logs/clover.xml