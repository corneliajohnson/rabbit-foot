//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;
    //event allow you to write data on the block change
    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );
    struct TransferStruct {
        address sender;
        address reciver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    //an array of TransferStructs
    TransferStruct[] transactions;

    function addToBlockchain(
        address payable reciever,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        //increment tranaction count
        transactionCount += 1;

        //add the tranaction to the transactions array
        transactions.push(
            TransferStruct(
                msg.sender,
                reciever,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        //emit event
        emit Transfer(
            msg.sender,
            reciever,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
