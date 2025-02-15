# Variables
NETWORK_NAME = shared_network

# Create the shared Docker network
create-network:
	@echo "Creating shared Docker network: $(NETWORK_NAME)"
	docker network create --driver bridge $(NETWORK_NAME)

# Remove the shared Docker network
remove-network:
	@echo "Removing shared Docker network: $(NETWORK_NAME)"
	docker network rm $(NETWORK_NAME)
