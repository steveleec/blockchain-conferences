const hre = require("hardhat");

async function main() {
  var CUYMOCHE = await hre.ethers.getContractFactory("CUYMOCHE");
  var cuyMoche = await CUYMOCHE.deploy();
  var tx = await cuyMoche.deployed();
  await tx.deployTransaction.wait(5);
  console.log("Address:", cuyMoche.address);

  console.log("Empezo la verificaion");
  // script para verificacion del contrato
  await hre.run("verify:verify", {
    address: cuyMoche.address,
    constructorArguments: [],
  });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
