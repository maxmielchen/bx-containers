FROM registry.fedoraproject.org/fedora-toolbox:40

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo > /dev/null
RUN dnf check-update
RUN dnf install -y code
RUN dnf install -y chromium
