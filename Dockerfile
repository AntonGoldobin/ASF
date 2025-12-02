FROM justarchi/archisteamfarm:latest

# Copy local config and plugins into the image (assuming they exist in the build context)
COPY ./config /app/config
COPY ./plugins /app/plugins

# Set environment variables
ENV TZ=Europe/Moscow

# Expose the IPC port
EXPOSE 1242

# The entrypoint/cmd should be inherited from the base image, no need to specify unless overridden