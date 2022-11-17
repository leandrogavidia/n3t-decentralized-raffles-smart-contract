const deploy = async () => {
    const DecentralizedRafflesFactory = await hre.ethers.getContractFactory("DecentralizedRaffles");
    const DecentralizedRaffles = await DecentralizedRafflesFactory.deploy();
    DecentralizedRaffles.deployed();
    console.log("My contract is deployed");
}

const runDeploy = async () => {
    try{
        await deploy();
        process.exit(0);
    } catch(err) {
        console.error(err);
        process.exit(1);
    }
}

runDeploy();