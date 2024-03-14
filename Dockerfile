FROM jboss/keycloak:16.1.0

# Copy the script to start Keycloak
COPY run-keycloak.sh /opt/run-keycloak.sh

# Set execute permissions for the script
RUN chmod +x /opt/run-keycloak.sh

# Expose the ports
EXPOSE 8080 8443

# Run the script to start Keycloak
CMD ["/opt/run-keycloak.sh"]
