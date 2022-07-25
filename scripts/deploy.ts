import { ethers } from "hardhat";

async function testSlot() {

  const Slot = await ethers.getContractFactory("Slot")
  const slot = await Slot.deploy()
  await slot.deployed()
  slot.setData(7, 77)
  const val = await slot.data(7)
  console.log(val)
  const slotNumber = await slot.findMapLocation(0, 7)
  console.log(slotNumber)
  const value = await ethers.provider.getStorageAt(slot.address, slotNumber)
  console.log(ethers.BigNumber.from(value).toBigInt())

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
testSlot().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
