//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error {

    uint public devotionLevel;
    bool public purity = false;
    uint public magicDiamond ;

    function increasePurity() public {
        devotionLevel += 1;
    }
    
    function EnterTheMagicTemple() public {
        require(devotionLevel == 10, "You have not a one hundred percent pure heart");
        purity = true;

    }

    function healTheAvatar() public  view returns (string memory){
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (magicDiamond <= 10) {
            revert("Not enough magic Diamond to heal");
        }else{
            return "Healed";
        }
    }

    uint public num;

    function takeTheMagicDiamond() public {
 
        assert(purity == true);
        magicDiamond += 1;

    }
}
