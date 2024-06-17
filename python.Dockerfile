# version 22 up to 40 possible
ARG fedora_version=40 
FROM registry.fedoraproject.org/fedora-toolbox:${fedora_version} as base

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo
RUN tee /etc/yum.repos.d/vscode.repo > /dev/null
RUN dnf check-update
RUN dnf install -y code

# -------------

ARG python_version=3.11.9
FROM base

RUN dnf install -y python${python_version} python${python_version}-devel python${python_version}-pip python${python_version}-virtualenv python${python_version}-wheel python${python_version}-setuptools python${python_version}-tox python${python_version}-pytest python${python_version}-pytest-cov python${python_version}-pytest-xdist python${python_version}-pytest-mock python${python_version}-pytest-runner python${python_version}-pytest-asyncio

