import { ethers } from "hardhat";

async function main() {

  const Lottery = await ethers.deployContract("Lottery");

  await Lottery.waitForDeployment();

  console.log(
    `Contract deployed to ${Lottery.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
