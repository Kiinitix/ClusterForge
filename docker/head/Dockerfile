FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y build-essential munge slurm-wlm openssh-server openmpi-bin libopenmpi-dev && \
    mkdir -p /var/run/sshd

COPY ../../shared/slurm.conf /etc/slurm/slurm.conf

RUN useradd -m slurm && echo "slurm:slurm" | chpasswd

CMD service munge start && \
    service ssh start && \
    slurmctld -D
