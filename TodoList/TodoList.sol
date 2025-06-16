// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/// @title Todo list
contract TodoList {
    struct Task {
        string text;
        bool completed;
    }

    Task[] public tasks;

    function createTask(string memory _text) public {
        tasks.push(Task(_text, false));
    }

    function markCompleted(uint _index) public {
        require(_index < tasks.length, "Invalid index");
        tasks[_index].completed = true;
    }

    function getTask(uint _index) public view returns (string memory, bool) {
        Task memory task = tasks[_index];
        return (task.text, task.completed);
    }

    function getTaskCount() public view returns (uint) {
        return tasks.length;
    }
}
