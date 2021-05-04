FROM gitpod/workspace-full

# Gitpod will not rebuild Trinsic's dev image unless *some* change is made to this Dockerfile.
# To force a rebuild, simply increase this counter:
ENV TRIGGER_REBUILD 3

USER gitpod

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install Pulumi CLI
RUN curl -fsSL https://get.pulumi.com | bash

# Install .NET SDK (Current channel)
# Source: https://docs.microsoft.com/dotnet/core/install/linux-scripted-manual#scripted-install
RUN mkdir -p /home/gitpod/dotnet && curl -fsSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel Current --install-dir /home/gitpod/dotnet
ENV DOTNET_ROOT=/home/gitpod/dotnet
ENV PATH=$PATH:/home/gitpod/dotnet
ENV OKAPI_ROOT=/workspace