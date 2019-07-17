pragma solidity >=0.4.21 <0.6.0;
import "./SupplyChainStorage.sol";

contract FieldStaffModule{
    SupplyChainStorage supplyChainStorage;
    constructor(address _supplyChainAddress) public {
        supplyChainStorage = SupplyChainStorage(_supplyChainAddress);
    }

    function AddFieldStaffDelivery(string memory _inventoryProductId, string memory _productId, string memory _orderId) public {
        supplyChainStorage.addFieldStaffDelivery(_inventoryProductId, _productId, _orderId);
    }

}
