// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

/*
0. message to sign
1. hash(message)
2. sign(hash(message), private key) | offchain
3. ecrecover(hash(message), signature) == signer
*/

contract VerifySig{
    function verify(address _signer, string memory _message, bytes memory _sig) external pure returns(bool){
        bytes32 messageHash = getMessageHash(_message);
        bytes32 ethSignedMessageHash = getEthMessageHash(messageHash);

        return recover(ethSignedMessageHash, _sig) == _signer;
    }

    function getMessageHash(string memory message) public pure returns(bytes32){
        return keccak256(abi.encodePacked(message));
    }
    function getEthMessageHash(bytes32 messageHash) public pure returns(bytes32){
        return keccak256(abi.encodePacked("\x19Ethreum Signed Message:\n32",messageHash));
    }
    function recover(bytes32 _ethSignedMessageHash, bytes memory _sig) public pure returns(address){
        (bytes32 r, bytes32 s, uint8 v) = split(_sig);
        return ecrecover(_ethSignedMessageHash, v,r,s);
    }
    function split(bytes memory _sig) internal pure returns(bytes32 r, bytes32 s, uint8 v){
        require(_sig.length == 65, "Invalid signature legnth");
        assembly{
            r := mload(add(_sig, 32))
            s := mload(add(_sig, 64))
            v := byte(0, mload(add(_sig, 96)))
        }
    }
}