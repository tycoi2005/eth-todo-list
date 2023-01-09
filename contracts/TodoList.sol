// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract  TodoList {
   uint public taskCount = 0;

   struct Task {
    uint id;
    string content;
    bool completed;
   }

   mapping (uint => Task) public tasks;

   function createTask (string memory content) public{
    taskCount ++;
    tasks[taskCount] = Task(taskCount, content, false);
   }

   constructor() public {
    createTask("TodoList first task");
   }
}