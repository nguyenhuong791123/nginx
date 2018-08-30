FROM nhdocker/centos
MAINTAINER NGUYEN VAN HUONG "nguyenhuong791123@gmail.com"

RUN yum update -y && \
    yum install -y epel-release && \
    yum upgrade -y && \
    yum install -y nginx

ADD nginx.conf /etc/nginx

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
