pragma solidity ^0.8.1;

contract testCollections{
    mapping(string => uint) public scores;
    string[] scoreKeys;
    function addScore(string memory name, uint values) public {
        scores[name] = values;
        scoreKeys.push(name);
    }
    function getScore(string memory name) public view returns (uint){
        return scores[name];
    }
    function deleteScore(string memory name) public{
        delete scores[name];
    }
     function deleteAllScore() public{
         while (scoreKeys.length >0){
            delete scores[scoreKeys[scoreKeys.length-1]];
            scoreKeys.pop();
         }
        
    }
}
