FROM ubuntu:latest

COPY task.sh /usr/local/bin/task.sh

RUN chmod +x /usr/local/bin/task.sh

CMD ["/usr/local/bin/task.sh"]
