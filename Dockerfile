FROM qwedfrnhgef/eagler-viaversion:latest

# Stage the icon somewhere safe
COPY server-icon.png /tmp/server-icon.png

# Add a custom entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
