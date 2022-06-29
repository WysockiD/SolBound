// test

const Solbound = artifacts.require("SolboundNFT");

contract("Solbound", (accounts) => {
  it("should mint 1 un-transferable NFT in the first account", async () => {
    const solBoundInstance = await Solbound.deployed();
    await solBoundInstance.mint(1, {from: accounts[0]});
    assert.equal(await solBoundInstance.ownerOf(0), accounts[0], "Did not mint first token to address");
  })});
