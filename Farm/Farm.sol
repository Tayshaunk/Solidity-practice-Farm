//SPDX-License-Identifier: GPL

pragma solidity ^0.8.10;

contract RobotMaker{


    // global functions
    uint numberofRobots;
    string public Roboname;
    string public Robovoice;
    int public Roboversion;
 

    //user input info
    function setname(string memory _value) public {
        Roboname = _value;
    }
    function setvoice(string memory _value2) public {
        Robovoice = _value2;
    }

    function setversion(int userInput) public{
        Roboversion = userInput;
    }

 
    // Name of factory
    string public constant FACTORY_NAME = "DA best Robot Maker!";
    
        
    //stucture
    struct Robot{
        string model;
        string voice;
        int version;
    }

    Robot[] public machine;


    //function

    function Robotdeploy() public{
        machine.push(Robot(Roboname, Robovoice, Roboversion));
        numberofRobots += 1;
    }

 
}
