## mod_test

Modbus-Server for test purposes
- Readable and writable with all function codes
- registers get initialized with zeroes

## Start server
```
docker run -it --rm -p 502:502 --name some_modbus_server mod_test
```
