(async() =>{   // Immediately Invoked Function Expression  IIFE (Immediately Invoked Function Expression - Hemen Çağrılan Fonksiyon İfadesi)
  
  let accounts = await web3.eth.getAccounts();
  console.log(accounts, accounts.length);

  let balance = await web3.eth.getBalance(accounts[0]);
  console.log(balance);

  let balanceEth = web3.utils.fromWei(balance.toString(),"Ether");
  console.log(balanceEth);





})()