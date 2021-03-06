#!../../bin/linux-x86_64/SCE410
############################################################################
< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/proto")
############################################################################
cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/SCE410.dbd")
SCE410_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("SER1", "hallb-moxa6:4001")

## debugging...
#asynSetTraceMask("SER1",-1,0x09)
#asynSetTraceIOMask("SER1",-1,0x02)

## Load record instances
dbLoadRecords("${DEVIOCSTATS}/db/iocAdminSoft.db", "IOC=${IOC}")
dbLoadRecords("${AUTOSAVE}/asApp/Db/save_restoreStatus.db", "P=${IOC}:")
#dbLoadRecords("db/SCE410.db", "P=B_DET_,R=MOELLER1_,PORT=SER1,ADDR=1")
dbLoadRecords("db/SCE410.db", "P=B_MOLLER_,R=HELMHOLTZ_,PORT=SER1,ADDR=1")

cd "${TOP}/iocBoot/${IOC}"

## autosave setup
< save_restore.cmd

dbl > pv.list
iocInit

## Handle autosave 'commands' contained in loaded databases.
makeAutosaveFiles()
create_monitor_set("info_positions.req", 5, "P=${IOC}:")
create_monitor_set("info_settings.req", 30, "P=${IOC}:")

