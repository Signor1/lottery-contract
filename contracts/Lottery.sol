// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Lottery {
    address public manager;

    address payable[] public players;

    constructor() {
        manager = msg.sender;
    }

    function buyTicket() public payable {
        require(msg.value > 1 ether, "Insufficient balance to participate");

        players.push(payable(msg.sender));
    }

    function random() public view returns (uint256) {
        return
            uint256(
                keccak256(abi.encodePacked(block.timestamp, players.length))
            );
    }

    function getWinner() public {
        require(msg.sender == manager, "You're not the Admin");
        require(players.length > 0, "No participate");

        uint256 index = random() % players.length;

        players[index].transfer(address(this).balance);

        players = new address payable[](0);
    }

    function getPlayer() public view returns (address payable[] memory) {
        return players;
    }
}
