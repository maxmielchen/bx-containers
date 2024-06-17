
ARG base_tag=None
FROM ghcr.io/maxmielchen/bx-containers-base:${base_tag}

ARG python_version=3.11.9
RUN dnf install -y python${python_version} python${python_version}-devel python${python_version}-pip python${python_version}-virtualenv python${python_version}-wheel python${python_version}-setuptools python${python_version}-tox python${python_version}-pytest python${python_version}-pytest-cov python${python_version}-pytest-xdist python${python_version}-pytest-mock python${python_version}-pytest-runner python${python_version}-pytest-asyncio

