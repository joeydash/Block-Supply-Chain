pragma solidity >=0.4.21 <0.6.0;
import "./SupplyChainStorage.sol";

contract InventoryManagingModule {
    SupplyChainStorage supplyChainStorage;
    constructor(address _supplyChainAddress) public {
        supplyChainStorage = SupplyChainStorage(_supplyChainAddress);
    }

    function AddInventoryManagement(string memory _inventoryProductId, string memory _inventoryLocation) public {
        supplyChainStorage.addInventoryManagement(_inventoryProductId, _inventoryLocation);
    }
}
