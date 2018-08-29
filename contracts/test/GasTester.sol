pragma solidiy ^0.4.24;

contract GasTester {
    event logGas(uint256 _gas);

    modifier logGasUsed() {
        uint256 gasBefore = gasleft();
        _;
        uint256 gasAfter = gasleft();
        logGas(gasBefore - gasAfter);
    }
}
