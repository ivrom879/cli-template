install:
	composer install

console:
	./vendor/bin/psysh

lint:
	./vendor/bin/phpcs -- --standard=PSR12 src tests

lint-fix:
	./vendor/bin/phpcbf -- --standard=PSR12 src tests

test:
	composer test

test-coverage:
	composer test -- --coverage-clover build/logs/clover.xml