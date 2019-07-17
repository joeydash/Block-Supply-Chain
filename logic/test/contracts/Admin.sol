pragma solidity >=0.4.21 <0.6.0;
import "./SupplyChainStorage.sol";

contract Admin{

    event eventSetUser(address _userAddress, string _name, string _contactNo, string _role);
    event eventUpdateUser(address _userAddress, string _name, string _contactNo, string _role);
    event showAddress(address _userAddress);

    SupplyChainStorage supplyChainStorage;

    constructor(address _supplyChainAddress) public {
        emit showAddress(msg.sender);
        supplyChainStorage = SupplyChainStorage(_supplyChainAddress);
    }

    function SetUser(address _userAddress, string memory _name, string memory _contactNo, string memory _role) public {
        supplyChainStorage.setUser( _userAddress, _name, _contactNo, _role);
        emit eventSetUser(_userAddress, _name, _contactNo, _role);
    }

    function UpdateUser(address _userAddress, string memory _name, string memory _contactNo, string memory _role) public {
        supplyChainStorage.updateUser(_userAddress, _name, _contactNo, _role);
        emit eventUpdateUser(_userAddress, _name, _contactNo, _role);
    }
}
