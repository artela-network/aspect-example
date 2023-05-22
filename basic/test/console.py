from web3 import Web3, AsyncWeb3

w3 = Web3(Web3.HTTPProvider('http://127.0.0.1:8545'))
w3.eth.get_balance('0x095b2a217a57e351899E82f32114D8Ef4f5b2b64')
Web3.from_wei(10000000000000000000, 'ether')

