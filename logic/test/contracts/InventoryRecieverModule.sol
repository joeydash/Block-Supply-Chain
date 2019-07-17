pragma solidity >=0.4.21 <0.6.0;
import "./SupplyChainStorage.sol";

contract InventoryRecieverModule {
    event eventInventoryReciever(string _manufactureBatchId, string _inventoryProductId, string _productId);
    SupplyChainStorage supplyChainStorage;

    constructor(address _supplyChainAddress) public {
        supplyChainStorage = SupplyChainStorage(_supplyChainAddress);
    }

    function InventoryReciever(string memory _manufactureBatchId, string memory _inventoryProductId, string memory _productId) public {
        supplyChainStorage.addInventoryProduct(_manufactureBatchId, _inventoryProductId, _productId);
        emit eventInventoryReciever(_manufactureBatchId, _inventoryProductId, _productId);
    }
}
