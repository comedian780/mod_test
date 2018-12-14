# mod_test

Python Modbus-Server for test purposes based on [pymodbus](https://github.com/riptideio/pymodbus/blob/master/examples/common/synchronous_server.py)  

Simply start the container then manipulate the registers with a client application like [QModMaster](https://sourceforge.net/projects/qmodmaster/) to test your client/master device's Modbus TCP connectivity.
- Registers 0x00 to 0xff get initialized with zeroes
- Readable with function codes 1 to 4
- Writable with function codes 5, 6, 15 and 16

## Build container
```bash
docker build -t mod_test:your_tag /path/to/mod_test
```

## Start server
```bash
# run interactive to view the log output -> check if a connection was established/closed or what data is written/read
docker run -i --rm -p 502:502 --name some_modbus_server mod_test:your_tag

# run as daemon if the log output is not of interest
docker run -d --rm -p 502:502 --name some_modbus_server mod_test:your_tag
```
