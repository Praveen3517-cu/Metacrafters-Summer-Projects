const hre = require("hardhat");

async function main() {
  const Degen = await hre.ethers.getContractFactory("DegenToken");

  const degen = await Degen.deploy();
  await degen.deployed();

  console.log(`Degen token deployed to ${degen.address}`);
}

// Hardhat recommends this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
