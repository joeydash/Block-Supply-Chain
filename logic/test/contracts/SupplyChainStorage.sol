pragma solidity >=0.4.21 <0.6.0;

contract SupplyChainStorage {

    struct user {
        string name;
        string contactNo;
        string role;
    }

    struct importProduct {
        string manufactureBatchId;
        string invoiceId;
    }

    struct inventoryProduct {
        string manufactureBatchId;
        string inventoryProductId;
        string productId;
    }

    struct inventoryManagement {
        string inventoryProductId;
        string inventoryLocation;
    }

    struct dispatchProduct {
        string inventoryProductId;
        string productId;
        string inventoryLocation;
        string orderId;
        string fieldStaffId;
    }

    struct fieldStaffDelivery {
        string inventoryProductId;
        string productId;
        string orderId;
    }

    mapping (address => bool) isUser;
    mapping (address => user) userDetails;

    mapping (address => importProduct) importProductDetails;
    mapping (address => inventoryProduct) inventoryProductDetails;
    mapping (address => inventoryManagement) inventoryManagementDetails;
    mapping (address => dispatchProduct) dispatchProductDetails;
    mapping (address => fieldStaffDelivery) fieldStaffDeliveryDetails;

    user userDetail;
    importProduct importProductDetail;
    inventoryProduct inventoryProductDetail;
    inventoryManagement inventoryManagementDetail;
    dispatchProduct dispatchProductDetail;
    fieldStaffDelivery fieldStaffDeliveryDetail;

    function setUser(address _userAddress, string memory _name, string memory _contactNo, string memory _role) public {
        // require(msg.sender == admin);

        if(isUser[_userAddress] == false){
            isUser[_userAddress] = true;
            userDetail.name = _name;
            userDetail.contactNo = _contactNo;
            userDetail.role = _role;

            userDetails[_userAddress] = userDetail;
        }
    }

    function updateUser(address _userAddress, string memory _name, string memory _contactNo, string memory _role) public {
        // require(msg.sender == admin);

        if(isUser[_userAddress] == true){
            userDetail.name = _name;
            userDetail.contactNo = _contactNo;
            userDetail.role = _role;

            userDetails[_userAddress] = userDetail;
        }
    }

    function removeUser(address _userAddress) public {
        // require(msg.sender == admin);

        if(isUser[_userAddress] == true){
            isUser[_userAddress] = false;
        }
    }

    function addImportProduct(string memory _manufactureBatchId, string memory _invoiceId) public {
        importProductDetail.manufactureBatchId = _manufactureBatchId;
        importProductDetail.invoiceId = _invoiceId;

        importProductDetails[msg.sender] = importProductDetail;
    }

    function addInventoryProduct(string memory _manufactureBatchId, string memory _inventoryProductId, string memory _productId) public {
        inventoryProductDetail.manufactureBatchId = _manufactureBatchId;
        inventoryProductDetail.inventoryProductId = _inventoryProductId;
        inventoryProductDetail.productId = _productId;

        inventoryProductDetails[msg.sender] = inventoryProductDetail;
    }

    function addInventoryManagement(string memory _inventoryProductId, string memory _inventoryLocation) public {
        inventoryManagementDetail.inventoryProductId = _inventoryProductId;
        inventoryManagementDetail.inventoryLocation = _inventoryLocation;

        inventoryManagementDetails[msg.sender] = inventoryManagementDetail;
    }

    function addDispatchProduct(string memory _inventoryProductId, string memory _productId, string memory _inventoryLocation, string memory _orderId, string memory _fieldStaffId) public {
        dispatchProductDetail.inventoryProductId = _inventoryProductId;
        dispatchProductDetail.productId = _productId;
        dispatchProductDetail.inventoryLocation = _inventoryLocation;
        dispatchProductDetail.orderId = _orderId;
        dispatchProductDetail.fieldStaffId = _fieldStaffId;

        dispatchProductDetails[msg.sender] = dispatchProductDetail;
    }

    function addFieldStaffDelivery(string memory _inventoryProductId, string memory _productId, string memory _orderId) public {
        fieldStaffDeliveryDetail.inventoryProductId = _inventoryProductId;
        fieldStaffDeliveryDetail.productId = _productId;
        fieldStaffDeliveryDetail.orderId = _orderId;

        fieldStaffDeliveryDetails[msg.sender] = fieldStaffDeliveryDetail;
    }


    /* view function for admin */
    function viewUser(address _userAddress) public view returns(string memory name, string memory contactNo, string memory role){
        user memory tmpData = userDetails[_userAddress];
        return (tmpData.name, tmpData.contactNo, tmpData.role);
    }

    function viewImportProduct(address _userAddress) public view returns(string memory manufactureBatchId, string memory invoiceId){
        importProduct memory tmpData = importProductDetails[_userAddress];
        return (tmpData.manufactureBatchId, tmpData.invoiceId);
    }

    function viewInventoryProduct(address _userAddress) public view returns(string memory manufactureBatchId, string memory inventoryProductId, string memory productId){
        inventoryProduct memory tmpData = inventoryProductDetails[_userAddress];
        return (tmpData.manufactureBatchId, tmpData.inventoryProductId, tmpData.productId);
    }

    function viewInventoryManagement(address _userAddress) public view returns(string memory inventoryProductId, string memory inventoryLocation){
        inventoryManagement memory tmpData = inventoryManagementDetails[_userAddress];
        return (tmpData.inventoryProductId, tmpData.inventoryLocation);
    }

    function viewDispatchProduct(address _userAddress) public view returns(string memory inventoryProductId, string memory productId, string memory inventoryLocation, string memory orderId, string memory fieldStaffId){
        dispatchProduct memory tmpData = dispatchProductDetails[_userAddress];
        return (tmpData.inventoryProductId, tmpData.productId, tmpData.inventoryLocation, tmpData.orderId, fieldStaffId);
    }

    function viewFieldStaffDelivery(address _userAddress) public view returns(string memory inventoryProductId, string memory productId, string memory orderId){
        fieldStaffDelivery memory tmpData = fieldStaffDeliveryDetails[_userAddress];
        return (tmpData.inventoryProductId, tmpData.productId, tmpData.orderId);
    }
}
