FROM alpine
ENV TARGETARCH="linux-musl-x64"

# Another option:
# FROM arm64v8/alpine
# ENV TARGETARCH="linux-musl-arm64"

# Install necessary tools and dependencies in one command to reduce layers
RUN apk update && apk add --no-cache \
    bash \
    curl \
    git \
    icu-libs \
    jq \
    docker \
    py-pip \
    python3 \
    && pip install docker-compose \
    && pip install ansible

WORKDIR /azp/

# Copy the start script and make it executable
COPY ./start.sh ./
RUN chmod +x ./start.sh

# Create agent user and set permissions
RUN adduser -D agent && chown agent ./
USER agent

# Another option is to run the agent as root.
# ENV AGENT_ALLOW_RUNASROOT="true"

ENTRYPOINT ["./start.sh"]
