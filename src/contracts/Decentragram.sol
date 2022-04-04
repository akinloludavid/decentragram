pragma solidity ^0.5.0;

contract Decentragram {
    string public name = "Decentragram";

    uint256 public imageCount = 0;

    mapping(uint256 => Image) public images;

    struct Image {
        uint256 id;
        string hash;
        string description;
        uint256 tipAmount;
        address payable author;
    }

    event ImageCreated(
        uint256 id,
        string hash,
        string description,
        uint256 tipAmount,
        address payable author
    );

    function uploadImage(string memory _imgHash, string memory _description)
        public
    {
        require
        imageCount++;
        images[imageCount] = Image(
            imageCount,
            _imgHash,
            _description,
            0,
            msg.sender
        );
        emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender);
    }
}
