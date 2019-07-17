// const Storage = artifacts.require("./SupplyChainStorage");
// const Admin = artifacts.require("./Admin");
const User = artifacts.require("./User");


// module.exports = function (deployer) {
//     deployer.deploy(Admin);
// };
module.exports = function (deployer) {
    deployer.deploy(User)
        .then(() => {
            console.log(User.address);
            // return deployer.deploy(Admin, Storage.address);
        })
        // .then(() => {Ò

        // return SupplyChainStorage.deployed();
        //     }).then(async function (instance) {
        //     // await instance.authorizeCaller(CoffeeSupplyChain.address);
        //     // await instance.authorizeCaller(SupplyChainUser.address);
        //     // return instance;
        // })
        .catch(function (error) {
            console.log(error);
        });
};