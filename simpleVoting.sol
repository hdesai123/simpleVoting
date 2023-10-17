pragma solidity ^0.8.0;

contract SimpleVoting {
    mapping(bytes32 => uint256) public votes;
    bytes32[] public options;

    constructor(bytes32[] memory _options) {
        options = _options;
    }

    function vote(uint256 optionIndex) public {
        require(optionIndex < options.length, "Invalid option index");
        bytes32 option = options[optionIndex];
        votes[option]++;
    }
}
