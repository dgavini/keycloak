FROM jboss/keycloak:16.1.0

# Set execute permissions for the script
COPY run-keycloak.sh /run-keycloak.sh
RUN chmod +x /run-keycloak.sh

# Expose the ports
EXPOSE 8080 8443

# Run the script to start Keycloak
CMD ["/run-keycloak.sh"]
