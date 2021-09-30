Simple ASTM integration using IRIS for Health

# Setup
Build the image and run the containers:
```
docker-compose build
docker-compose up -d
```

# Usage

Use the default `superuser` / `SYS` account.

## Interoperability productions

You will find two running productions:
* [Instrument.Production](http://localhost:52773/csp/astm-instrument/EnsPortal.ProductionConfig.zen?PRODUCTION=ASTM.Instrument.Production&$NAMESPACE=ASTM-HOST) simulates an instrument that sends ASTM query or result messages.
* [Host.Production](http://localhost:52773/csp/astm-host/EnsPortal.ProductionConfig.zen?PRODUCTION=ASTM.Host.Production&$NAMESPACE=ASTM-HOST) simulates a host that receives instrument ASTM messages and return reply messages.

## Simulate some messages

### Query
* Simulate that instrument queries host for pending analysis. 
* Copy [test/query.astm](test/query.astm) into [test/instrument-in](test/instrument-in)
* Instrument received response will be stored in [test/instrument-out](test/instrument-out)

### Result
* Simulate that instrument sends results.
* Copy [test/result.astm](test/result.astm) into [test/instrument-in](test/instrument-in)

Have a look at the received messages and try to figure out what happens in each case :)
