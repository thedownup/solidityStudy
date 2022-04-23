// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity =0.8;

contract Ballot {
    //选民
    struct Voter {
        bool voted;
        uint weight; // 计票的权重
        address delegate;
    }

    // 提案的类型
    struct Proposal {
        bytes32 name; // 简称（最长32个字节）
        uint voteCount; // 得票数
    }

    //地址映射
    mapping(address => Voter) public voters;

    address public chairperson;

    // 一个 `Proposal` 结构类型的动态数组
    Proposal[] public proposals;

    /// 为 `proposalNames` 中的每个提案，创建一个新的（投票）表决
    constructor(bytes32[] memory proposalNames) public {
        chairperson = msg.sender;
        voters[chairperson].weight = 1;
        //对于提供的每个提案名称，
        //创建一个新的 Proposal 对象并把它添加到数组的末尾。
        for (uint i = 0; i < proposalNames.length; i++) {
            // `Proposal({...})` 创建一个临时 Proposal 对象，
            // `proposals.push(...)` 将其添加到 `proposals` 的末尾
            proposals.push(Proposal({voteCount: 0, name: proposalNames[i]}));
        }
    }

    function giveRightToVote(address voter) public {
        require(msg.sender == chairperson, "error");
        voters[voter].weight = 2;
    }

    
}
