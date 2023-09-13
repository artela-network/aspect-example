const Web3 = require('web3');
const web3 = new Web3('http://127.0.0.1:8545'); // modify it according to your own requirements.

async function f() {
	// retrieve accounts
	let accounts = await web3.atl.getAccounts(); // <-- use your local account

	// retrieve current nonce
	let nonceVal = await web3.atl.getTransactionCount(accounts[0]);

	const fs = require('fs')
	let aspectCode = fs.readFileSync('/Users/likun/go/src/github.com/artela-network/aspect-example/reentrance/build/release.wasm', {
		encoding: "hex"
	});

	let deployOptions = {
		gasPrice: '1000000000', // <-- adjust accrodingly
		gas: 4000000            // <-- adjust accrodingly
	}

	let aspect = new web3.atl.Aspect(
		web3.utils.aspectCoreAddr, deployOptions);

	instance = aspect.deploy({
		data: '0x' + aspectCode,
		properties: [{ 'key': 'owner', 'value': accounts[0] }] // <-- properity of aspect, k-v pairs
	}).send({ from: accounts[0], nonce: nonceVal });

	aspect = await instance.on('receipt', (receipt) => {
	}).on('transactionHash', (txHash) => {
		console.log("deploy aspect tx hash: ", txHash);
	});
	console.log("aspect address: " + aspect.options.address);
}

f().then();
