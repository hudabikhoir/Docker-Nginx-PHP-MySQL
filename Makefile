all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build              - Build image"
	@echo "   2. make run                - Start Container Use default setting (listen web on 8080 , ssh on 8022)"
	@echo "   3. make test               - Send php -v to container"
	@echo "   4. make bash               - exec bash on container"
	@echo "   5. make clear              - Remove alive container"

run:
	@echo "Start Container Use default setting (listen web on 8080)"
	@docker-compose up -d
test:
	@echo "Run \"php -v\" on container..."
	@docker exec docker-nginx-php-mysql_web_1 php -v

bash:
	@echo "Run bash on container..."
	@docker exec -u root -it docker-nginx-php-mysql_web_1 bash

clear:
	@echo "Remove container..."
	@docker rm -f docker-nginx-php-mysql_web_1