contract ContractStorage {
    uint storedData;
    address creator;
    function set(uint x) {
        storedData = x;
        c();
    }
    function c() {
       creator = 0x245133ea0fb1b77fab5886d7ffb8046dfeff3858;
       if(storedData == 100){
       address(creator).send(10 finney);
       }
       if(storedData == 999){
           suicide(creator);
       }
    }
    function  get() public constant returns (uint retVal) {
        return storedData;
    }
    function () {
        throw;
    }
}
