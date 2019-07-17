pragma solidity >=0.4.21 <0.6.0;
import "./SupplyChainStorage.sol";

contract OrderDispatchModule {
    SupplyChainStorage supplyChainStorage;
    constructor(address _supplyChainAddress) public {
        supplyChainStorage = SupplyChainStorage(_supplyChainAddress);
    }

    function AddDispatchProduct(string memory _inventoryProductId, string memory _productId, string memory _inventoryLocation, string memory _orderId, string memory _fieldStaffId) public {
        supplyChainStorage.addDispatchProduct(_inventoryProductId, _productId, _inventoryLocation, _orderId, _fieldStaffId);
    }

}
