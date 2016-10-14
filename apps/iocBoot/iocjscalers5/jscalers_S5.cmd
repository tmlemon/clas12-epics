#!../../bin/linux-x86_64/iocscalers
< envPaths
cd ${TOP}

Init_SCALERS()

Start_SCALERS_CRATE("0","ADCECAL5")
Start_SCALERS_CRATE("1","ADCPCAL5")
Start_SCALERS_CRATE("2","ADCFTOF5")
Start_SCALERS_CRATE("3","TDCECAL5")
Start_SCALERS_CRATE("4","TDCPCAL5")
Start_SCALERS_CRATE("5","TDCFTOF5")


## Register all support components
dbLoadDatabase("dbd/iocscalers.dbd")
iocscalers_registerRecordDeviceDriver(pdbbase)

## Load record instances
dbLoadRecords("db/iocAdminSoft.db", "IOC=${IOC}")

dbLoadTemplate("db/jscalers_S5_ECAL_FADC.sub")
dbLoadTemplate("db/jscalers_S5_PCAL_FADC.sub")
dbLoadTemplate("db/jscalers_S5_FTOF_FADC.sub")
dbLoadTemplate("db/jscalers_S5_ECAL_DISC.sub")
dbLoadTemplate("db/jscalers_S5_PCAL_DISC.sub")
dbLoadTemplate("db/jscalers_S5_FTOF_DISC.sub")

dbLoadRecords("db/jscalers_ECAL_sums.db","TYPE=FADC,SEC=5,CH=1")
dbLoadRecords("db/jscalers_ECAL_sums.db","TYPE=DISC,SEC=5,CH=3")
dbLoadRecords("db/jscalers_PCAL_sums.db","TYPE=FADC,SEC=5,CH=1")
dbLoadRecords("db/jscalers_PCAL_sums.db","TYPE=DISC,SEC=5,CH=3")
dbLoadRecords("db/jscalers_FTOF_sums.db","TYPE=FADC,SEC=5,CH=1")
dbLoadRecords("db/jscalers_FTOF_sums.db","TYPE=DISC,SEC=5,CH=3")

dbLoadTemplate("db/jscalers_TDCPCAL5_TRIG.sub")
dbLoadTemplate("db/jscalers_TDCFTOF5_TRIG.sub")

cd ${TOP}/iocBoot/${IOC}

iocInit

dbl > pv.list
