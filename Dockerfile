FROM ubuntu
LABEL version="1.0.1" arch="x86-64"
# Run some command
RUN apt-get update && apt-get install -y htop
# Copy entrypoint.sh to image's root folder (/)
COPY ./entrypoint.sh /
# Set permission to exec entrypoint.sh file
RUN chmod +x /entrypoint.sh
# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]
