pragma solidity >=0.4.21 <0.6.0;

import "./Ownable.sol";


contract Test is Ownable {
    struct user {
        string name;
        string contactNo;
    }

    mapping(address => bool) isUser;
    mapping(address => user) userDetails;
    mapping(address => uint) role_number;


    event printAddress(address _myAddress);
    event printString(string _myName);
    event printUint(uint _unint);


    constructor() public {
        role_number[msg.sender] = 1;
    }

    user public userDetail;

    modifier onlyAdmin {
        require(role_number[msg.sender] == 1);
        _;
    }
    modifier onlyDeliveryMan {
        require(role_number[msg.sender] == 2);
        _;
    }
    modifier onlyInventoryReceiver {
        require(role_number[msg.sender] == 3);
        _;
    }
    modifier onlyInventoryManager {
        require(role_number[msg.sender] == 4);
        _;
    }
    modifier onlyInventoryDispatcher {
        require(role_number[msg.sender] == 5);
        _;
    }
    modifier onlyFieldStaff {
        require(role_number[msg.sender] == 6);
        _;
    }


    function newUser(address _userAddress, string memory _name, string memory _contactNo, uint _role_number) onlyAdmin public {
        if (isUser[_userAddress] == false) {
            isUser[_userAddress] = true;
            userDetail.name = _name;
            userDetail.contactNo = _contactNo;
            userDetails[_userAddress] = userDetail;
            role_number[_userAddress] = _role_number;
        }
    }

    function isUserExist(address _userAddress) public view returns (bool){
        if (isUser[_userAddress] == true) {
            return true;
        } else {
            return false;
        }
    }

    function getUser(address _userAddress) public view returns (string memory name, string memory contactNo, uint _role_number){
        user memory tmpData = userDetails[_userAddress];
        return (tmpData.name, tmpData.contactNo, role_number[_userAddress]);
    }

    function updateUser(address _userAddress, string memory _name, string memory _contactNo, uint _role_number) onlyAdmin public {
        if (isUser[_userAddress] == true) {
            userDetail.name = _name;
            userDetail.contactNo = _contactNo;
            userDetails[_userAddress] = userDetail;
            role_number[_userAddress] = _role_number;

        }
    }

    function removeUser(address _userAddress) onlyAdmin public {
        if (isUser[_userAddress] == true) {
            isUser[_userAddress] = false;
        }
    }
}
