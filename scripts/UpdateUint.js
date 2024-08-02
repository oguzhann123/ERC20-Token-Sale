(async()=>{
    const adress="0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B"
    const abiArray=[
	{
		"inputs": [],
		"name": "myUint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_uint",
				"type": "uint256"
			}
		],
		"name": "setMyUint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
];

    const contractInstance = new web3.eth.Contract(abiArray,adress);

    console.log(await contractInstance.methods.myUint().call());

    let accounts = await web3.eth.getAccounts();
    let txResult = await contractInstance.methods.setMyUint(345).send({from:accounts[0]});
    
    console.log(await contractInstance.methods.myUint().call());
    console.log(txResult)

})()