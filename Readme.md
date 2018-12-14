# mod_test

Python Modbus-Server for test purposes based on [pymodbus](https://github.com/riptideio/pymodbus/blob/master/examples/common/synchronous_server.py)
- Registers 0x00 to 0xff get initialized with zeroes
- Readable with function codes 1 to 4
- Writable with function codes 5, 6, 15 and 16

## Build container
```bash
docker build -t mod_test:your_tag /path/to/mod_test
```

## Start server
```bash
docker run -it --rm -p 502:502 --name some_modbus_server mod_test:your_tag
```
