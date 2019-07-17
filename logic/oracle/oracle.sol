pragma solidity 0.5.1;
import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";

contract USDPrice is usingOraclize {

    uint public price;

    event Log(string text);

    function uSDPrice() public {
        emit Log("Contract created.");
        update();
    }

    function getPrice() public view returns (uint) {
       return price;
    }

    function __callback(bytes32 _myid, string memory _result) public {
        require (msg.sender == oraclize_cbAddress());
        emit Log(_result);
        price = parseInt(_result, 2); // let's save it as $ cents
    }

    function update() public payable {
        emit Log("Oraclize query was sent, waiting for the answer..");
        oraclize_query("URL","json(https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=USD).USD");
    }

}
