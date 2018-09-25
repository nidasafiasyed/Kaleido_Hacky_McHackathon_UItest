pragma solidity ^0.4.17;

// Declare a contract
contract govtcontract {

   // variable for storing an unsigned 256-bit integer
   uint256 public allocbudget;
   uint256 public rembudget;

//   struct transaction{
  //      uint  expend;
    //    uint dept;
      //  string item;
       // uint date;
       // string location;
    //}


  // transaction public trx;

   constructor(uint256 initbudget) public {
      allocbudget = initbudget;
      rembudget = initbudget;
   }

   event NoBudget(
        uint a
        );   

   // Sets the value of the stored variable
   function set(uint amt) public {
     // trx.expend=amt;
      if (amt <= rembudget) {
            rembudget = rembudget - amt;    
        }
        else {
            emit NoBudget(amt);
        }
   }

   // Gets the value of the stored variable
   function get() public constant returns (uint retVal) {
      return rembudget;
   }
}
