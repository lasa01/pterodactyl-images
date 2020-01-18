# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Wine
# Minimum Panel Version: 0.6.0
# Based on bregell/docker_wine
# ----------------------------------
FROM        lasa01/ubuntu-wine-tkg

LABEL       author="lasa01"

RUN         useradd -m -d /home/container container \
            && useradd -M -u 995 pterodactyl

USER        container
ENV         HOME /home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
