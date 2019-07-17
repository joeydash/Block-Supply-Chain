pragma solidity >=0.4.21 <0.6.0;
import "./SupplyChainStorage.sol";

contract ProviderDeliveryModule {

    event eventProviderDelivery(string _manufactureBatchId, string _invoiceId);

    SupplyChainStorage supplyChainStorage;

    constructor(address _supplyChainAddress) public {
        supplyChainStorage = SupplyChainStorage(_supplyChainAddress);
    }

    function ProviderDelivery (string memory _manufactureBatchId, string memory _invoiceId) public {
        supplyChainStorage.addImportProduct(_manufactureBatchId, _invoiceId);
        emit eventProviderDelivery(_manufactureBatchId, _invoiceId);
    }
}
