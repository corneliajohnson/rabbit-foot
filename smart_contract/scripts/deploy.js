//main executes and delpoys the smart contract
const main = async () => {
  const Transactions = await hre.ethers.getContractFactory("Trnansactions");
  const transactions = await Transactions.deploy();

  await transactions.deployed();

  //lof address of smart contract
  console.log("Trnaactions deployed to:", transactions.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0); //mean the process went successfully
  } catch (err) {
    console.error(err);
    process.exit(1); //means that there was an error
  }
};

runMain();
