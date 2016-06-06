NAME=zazo/logs

build:
	docker build -t $(NAME) --rm .

run:
	docker run -d \
	-e ES_HOST="foo.us-west-1.es.amazonaws.com" \
	-e AWS_REGION="us-west-1" \
	-e ACCESS_KEY="<AWS_ACCESS_KEY_ID>" \
	-e SECRET_KEY="<AWS_SECRET_KEY>" \
	-e ENVIRONMENT="development" \
	-e HTTP_BASIC_NAME="admin" \
	-e HTTP_BASIC_PASSWORD="password" \
	-e HTTP_INPUT_NAME="admin" \
	-e HTTP_INPUT_PASSWORD="password" \
	-p 80:80 \
	-p 9901:9901 \
	-p 9900:9900/udp \
	$(NAME)

push:
	docker push $(NAME)

pull:
	docker pull $(NAME)
