#docker run -it --name aws_cli spannozzo/aws:1.0.1 /bin/sh
#docker start aws_cli
#docker exec -it aws_cli /bin/sh
# virtualenv test-env
# . test-env/bin/activate
# pip3 list
# aws s3 ls
# aws configure
# aws ec2 describe-instances
	


FROM openjdk:8-alpine

USER root

RUN apk update;
RUN set -eux; \
        apk add python3 ; \
        pip3 --no-cache-dir install -U awscli; \
		pip3 install --upgrade pip; \
		pip3 install virtualenv;
RUN apk add groff

