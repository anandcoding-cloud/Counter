# Counter
Simple Counter Contract with Factory implimentation

## Counter.sol
Is the Base Contract, which implements a simple counter.
Can only be accessed via factory, and is restricted by modifiers
As dfefault, owner and factory is the same address, who implements the factory intially.

## CounterFactory.sol
Is the factory contract
Can create multiple counters using Counter.sol
Is using the caller as the owner of the counter function.
