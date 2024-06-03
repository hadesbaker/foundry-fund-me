-include .env

build:; forge build

# ANVIL

deploy-anvil:
	forge script script/DeployFundMe.s.sol --rpc-url $(ANVIL_RPC_URL) --private-key $(ANVIL_PRIVATE_KEY) --broadcast --legacy

fund-anvil-contract:
	cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "fund()" --value 99ether --private-key $(ANVIL_PRIVATE_KEY)

withdraw-anvil-contract:
	cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "withdraw()" --private-key $(ANVIL_PRIVATE_KEY)

# SEPOLIA

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(CAIN_PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv --legacy



hades-fund-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "fund()" --value 0.07ether --private-key $(HADES_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)

cain-fund-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "fund()" --value 0.08ether --private-key $(CAIN_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)

ares-fund-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "fund()" --value 0.09ether --private-key $(ARES_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)

apollo-fund-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "fund()" --value 0.10ether --private-key $(APOLLO_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)

achilles-fund-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "fund()" --value 0.11ether --private-key $(ACHILLES_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)



hades-withdraw-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "withdraw()" --private-key $(HADES_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)
	
cain-withdraw-sepolia-contract:
	cast send 0x00cD1d8256a7cEDD942887D2b45D890C30Da76eE "withdraw()" --private-key $(CAIN_PRIVATE_KEY) --rpc-url $(SEPOLIA_RPC_URL)

