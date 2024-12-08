FROM jenkins/jenkins:lts

# Switch to root user to install dependencies
USER root

# Install necessary build tools
RUN apt-get update && apt-get install -y \
    rpm \
    dpkg-dev \
    build-essential \
    git \
    curl \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user
USER jenkins
