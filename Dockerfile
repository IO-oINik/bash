FROM ubuntu:22.04

COPY task.sh /usr/local/bin/task.sh

RUN apt-get update && apt-get install -y man-db manpages grep && apt-get clean && yes | unminimize
RUN chmod +x /usr/local/bin/task.sh

CMD ["/usr/local/bin/task.sh"]
