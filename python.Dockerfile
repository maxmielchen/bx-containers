
ARG base_tag=None
FROM ghcr.io/maxmielchen/bx-containers-base:${base_tag}

RUN dnf install -y \
    python3 python3-devel \
    python3-pip \
    python3-virtualenv \
    python3-wheel \
    python3-setuptools \
    python3-tox \
    python3-pytest \
    python3-pytest-cov \
    python3-pytest-xdist \
    python3-pytest-mock \
    python3-pytest-runner \
    python3-pytest-asyncio

