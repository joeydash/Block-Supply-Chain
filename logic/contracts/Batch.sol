pragma solidity >=0.4.21 <0.6.0;

import "./User.sol";


contract Batch is User {
    struct BatchClass {
        string id;
        string name;
        uint256 createdAt;
        uint256 deliveredAt;
        address deliveredBy;
        uint256 receivedAt;
        address receivedBy;
    }

    mapping(address => BatchClass) batch;
    mapping(address => bool) isBatch;


    constructor() public {
    }

    BatchClass public batchObject;


    function setBatch(address _batchAddress, string memory _id, string memory _name, uint256 _createdAt) onlyAdmin public {
        batchObject.id = _id;
        batchObject.name = _name;
        batchObject.createdAt = _createdAt;
        batch[_batchAddress] = batchObject;
        isBatch[_batchAddress] = true;
    }

    function isBatchExist(address _batchAddress) public view returns (bool){
        if (isBatch[_batchAddress] == true) {
            return true;
        } else {
            return false;
        }
    }

    function getBatch(address _batchAddress) public view returns (string memory _name, uint256 _createdAt){
        BatchClass memory tmpData = batch[_batchAddress];
        return (tmpData.name, tmpData.createdAt);
    }
}
