pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

// import "@openzeppelin/contracts/access/Ownable.sol";
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    event SetPurpose(address sender, string purpose);

    string public purpose = "Building Unstoppable Apps!!!";

    //10/11/2022 Creating default values in contract

    //Specify data type public or private

    // public values are availiable out of the contract

    bool public example = true; // Availiable outside the contract

    // private values are availiable only inside the contract
    bool demo = true; // Not availiable outside the contract

    // All public
    bool public defaultB; //false by default
    uint256 public defaultU; // 0 Only zero or postive number to 4.25 billion
    int256 public defaultI; // 0 negative and positive numbers ranged from 2.14 bill to -2.14 bill
    address public defaultA; /// 0x000000000000000000000000000000000000

    /*  uint8 public uint8_ = 255;
    uint16 public uint16_ = 65535;
    uint32 public uint32_ = 4254967296; // Could also be defined as 0.0000000000042
    uint64 public uint64_ = 2**64 - 1;
    uint128 public uint128_ = 2**128 - 1;
    uint256 public uint256_ = 2**256 - 1;
 */

    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    constructor() payable {
        // what should we do on deploy?
    }

    function setPurpose(string memory newPurpose) public {
        purpose = newPurpose;
        console.log(msg.sender, "set purpose to", purpose);
        emit SetPurpose(msg.sender, purpose);
    }

    // to support receiving ETH by default
    receive() external payable {}

    fallback() external payable {}
}
