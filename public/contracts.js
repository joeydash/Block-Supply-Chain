let contract_names =  ["Batch",];
let contracts = {
    Batch: {
        address: "0xa31000c204be4ea1e7910745145a25c4833c0858",
        abi: [
            {
                "constant": false,
                "inputs": [
                    {
                        "name": "_userAddress",
                        "type": "address"
                    },
                    {
                        "name": "_name",
                        "type": "string"
                    },
                    {
                        "name": "_contactNo",
                        "type": "string"
                    },
                    {
                        "name": "_roleId",
                        "type": "uint256"
                    }
                ],
                "name": "newUser",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "constant": false,
                "inputs": [
                    {
                        "name": "_userAddress",
                        "type": "address"
                    }
                ],
                "name": "removeUser",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "constant": false,
                "inputs": [],
                "name": "renounceOwnership",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "constant": false,
                "inputs": [
                    {
                        "name": "_batchAddress",
                        "type": "address"
                    },
                    {
                        "name": "_id",
                        "type": "string"
                    },
                    {
                        "name": "_name",
                        "type": "string"
                    },
                    {
                        "name": "_createdAt",
                        "type": "uint256"
                    }
                ],
                "name": "setBatch",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "constant": false,
                "inputs": [
                    {
                        "name": "newOwner",
                        "type": "address"
                    }
                ],
                "name": "transferOwnership",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "constant": false,
                "inputs": [
                    {
                        "name": "_userAddress",
                        "type": "address"
                    },
                    {
                        "name": "_name",
                        "type": "string"
                    },
                    {
                        "name": "_contactNo",
                        "type": "string"
                    },
                    {
                        "name": "_roleId",
                        "type": "uint256"
                    }
                ],
                "name": "updateUser",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "inputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "constructor"
            },
            {
                "anonymous": false,
                "inputs": [
                    {
                        "indexed": false,
                        "name": "_myAddress",
                        "type": "address"
                    }
                ],
                "name": "printAddress",
                "type": "event"
            },
            {
                "anonymous": false,
                "inputs": [
                    {
                        "indexed": false,
                        "name": "_myName",
                        "type": "string"
                    }
                ],
                "name": "printString",
                "type": "event"
            },
            {
                "anonymous": false,
                "inputs": [
                    {
                        "indexed": false,
                        "name": "_unint",
                        "type": "uint256"
                    }
                ],
                "name": "printUint",
                "type": "event"
            },
            {
                "anonymous": false,
                "inputs": [
                    {
                        "indexed": true,
                        "name": "previousOwner",
                        "type": "address"
                    }
                ],
                "name": "OwnershipRenounced",
                "type": "event"
            },
            {
                "anonymous": false,
                "inputs": [
                    {
                        "indexed": true,
                        "name": "previousOwner",
                        "type": "address"
                    },
                    {
                        "indexed": true,
                        "name": "newOwner",
                        "type": "address"
                    }
                ],
                "name": "OwnershipTransferred",
                "type": "event"
            },
            {
                "constant": true,
                "inputs": [],
                "name": "batchObject",
                "outputs": [
                    {
                        "name": "id",
                        "type": "string"
                    },
                    {
                        "name": "name",
                        "type": "string"
                    },
                    {
                        "name": "createdAt",
                        "type": "uint256"
                    },
                    {
                        "name": "deliveredAt",
                        "type": "uint256"
                    },
                    {
                        "name": "deliveredBy",
                        "type": "address"
                    },
                    {
                        "name": "receivedAt",
                        "type": "uint256"
                    },
                    {
                        "name": "receivedBy",
                        "type": "address"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [
                    {
                        "name": "_batchAddress",
                        "type": "address"
                    }
                ],
                "name": "getBatch",
                "outputs": [
                    {
                        "name": "_name",
                        "type": "string"
                    },
                    {
                        "name": "_createdAt",
                        "type": "uint256"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [
                    {
                        "name": "_userAddress",
                        "type": "address"
                    }
                ],
                "name": "getUser",
                "outputs": [
                    {
                        "name": "_name",
                        "type": "string"
                    },
                    {
                        "name": "_contactNo",
                        "type": "string"
                    },
                    {
                        "name": "_roleId",
                        "type": "uint256"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [
                    {
                        "name": "_batchAddress",
                        "type": "address"
                    }
                ],
                "name": "isBatchExist",
                "outputs": [
                    {
                        "name": "",
                        "type": "bool"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [
                    {
                        "name": "_userAddress",
                        "type": "address"
                    }
                ],
                "name": "isUserExist",
                "outputs": [
                    {
                        "name": "",
                        "type": "bool"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [],
                "name": "owner",
                "outputs": [
                    {
                        "name": "",
                        "type": "address"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [],
                "name": "userDetail",
                "outputs": [
                    {
                        "name": "name",
                        "type": "string"
                    },
                    {
                        "name": "contactNo",
                        "type": "string"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            }
        ]
    }
};
