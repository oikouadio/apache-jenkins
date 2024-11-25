#Base image
FROM fedora

#Label writer of the code
LABEL description="This is my Dockerfile"
LABEL maintainer="Oi Kouadio"

#running commands

RUN yum update -y

RUN yum install -y httpd

#COpy the index to the container
COPY index.html /var/www/html

#expose port 80 to the outside world
EXPOSE 80

#start container with httpd and this is the command start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]

#run the container in the background
CMD [ "-D","FOREGROUND" ]
