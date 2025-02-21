// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WeeklyPrizePool {
    address[] public participants;
    uint256 public startTime;
    
    event Entered(address indexed player);
    event WinnerSelected(address indexed winner, uint256 amount);

    function enter() public payable {
        require(msg.value > 0, "Must send ETH to enter");
        participants.push(msg.sender);
        emit Entered(msg.sender);
    }

    function selectWinner() public {
        require(block.timestamp >= startTime + 7 days, "Winner can only be selected after 7 days");
        require(participants.length > 0, "No participants");

        uint256 winnerIndex = uint256(blockhash(block.number - 1)) % participants.length;
        address winner = participants[winnerIndex];

        uint256 prizeAmount = address(this).balance;
        payable(winner).transfer(prizeAmount);

        emit WinnerSelected(winner, prizeAmount);

        // Reset for next round
        delete participants;
        startTime = block.timestamp;
    }

    function getParticipants() public view returns (address[] memory) {
        return participants;
    }

    function getPrizePool() public view returns (uint256) {
        return address(this).balance;
    }
}
