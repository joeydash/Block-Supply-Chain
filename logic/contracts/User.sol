pragma solidity >=0.4.21 <0.6.0;

import "./Ownable.sol";


contract User is Ownable {
    struct user {
        string name;
        string contactNo;
    }

    mapping(address => bool) isUser;
    mapping(address => user) userDetails;
    mapping(address => uint) roleId;


    event printAddress(address _myAddress);
    event printString(string _myName);
    event printUint(uint _unint);


    constructor() public {
        roleId[msg.sender] = 1;
    }

    user public userDetail;

    modifier onlyAdmin {
        require(roleId[msg.sender] == 1 || msg.sender == owner);
        _;
    }
    modifier onlyDeliveryMan {
        require(roleId[msg.sender] == 2);
        _;
    }
    modifier onlyInventoryReceiver {
        require(roleId[msg.sender] == 3);
        _;
    }
    modifier onlyInventoryManager {
        require(roleId[msg.sender] == 4);
        _;
    }
    modifier onlyInventoryDispatcher {
        require(roleId[msg.sender] == 5);
        _;
    }
    modifier onlyFieldStaff {
        require(roleId[msg.sender] == 6);
        _;
    }


    function newUser(address _userAddress, string memory _name, string memory _contactNo, uint _roleId) onlyAdmin public {
        if (isUser[_userAddress] == false) {
            isUser[_userAddress] = true;
            userDetail.name = _name;
            userDetail.contactNo = _contactNo;
            userDetails[_userAddress] = userDetail;
            roleId[_userAddress] = _roleId;
        }
    }

    function isUserExist(address _userAddress) public view returns (bool){
        if (isUser[_userAddress] == true) {
            return true;
        } else {
            return false;
        }
    }

    function getUser(address _userAddress) public view returns (string memory _name, string memory _contactNo, uint _roleId){
        user memory tmpData = userDetails[_userAddress];
        return (tmpData.name, tmpData.contactNo, roleId[_userAddress]);
    }

    function updateUser(address _userAddress, string memory _name, string memory _contactNo, uint _roleId) onlyAdmin public {
        if (isUser[_userAddress] == true) {
            userDetail.name = _name;
            userDetail.contactNo = _contactNo;
            userDetails[_userAddress] = userDetail;
            roleId[_userAddress] = _roleId;

        }
    }

    function removeUser(address _userAddress) onlyAdmin public {
        if (isUser[_userAddress] == true) {
            isUser[_userAddress] = false;
        }
    }
}
