pragma solidity ^0.8.1;
contract company{
    
  struct Dept{
      string manager;
      mapping (string=>uint) employees;
  }
  mapping (string => Dept) depts;

  function addDept(string calldata deptName,string calldata manager) public{
      Dept storage dept = depts[deptName];
      dept.manager = manager;

  }
  function addEmployee(string calldata deptName,string calldata empName,uint empNo) public{
       Dept storage dept = depts[deptName];
       dept.employees[empName]=empNo;
  }
  function getEmpNo(string calldata deptName,string calldata empName) public view returns(uint){
       Dept storage dept = depts[deptName];
       return  dept.employees[empName];
  }


}