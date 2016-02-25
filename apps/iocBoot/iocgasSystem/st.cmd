#!../../bin/linux-x86_64/cRio

## You may have to change bom to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/cRio.dbd")
cRio_registerRecordDeviceDriver(pdbbase)

## Load record instances
dbLoadRecords("${DEVIOCSTATS}/db/iocAdminSoft.db","IOC=${IOC}")
dbLoadRecords("${AUTOSAVE}/asApp/Db/save_restoreStatus.db", "P=${IOC}:")
## Detector Systems
dbLoadRecords("db/cRioTest.db",         "P=B_SVT_,R=N2_")
dbLoadRecords("db/gas_cRIO_DC.db",      "P=B_DET_,R=DC_")
dbLoadRecords("db/gas_cRIO_FTC.db",     "P=B_DET_,R=FTC_")
dbLoadRecords("db/gas_cRIO_HTCC.db",    "P=B_DET_,R=HTCC_")
dbLoadRecords("db/gas_cRIO_LTCC.db",    "P=B_DET_,R=LTCC_")
dbLoadRecords("db/gas_cRIO_LTCC_SEC.db","P=B_DET_,R=LTCC_,SEC=S1_")
dbLoadRecords("db/gas_cRIO_LTCC_SEC.db","P=B_DET_,R=LTCC_,SEC=S2_")
dbLoadRecords("db/gas_cRIO_LTCC_SEC.db","P=B_DET_,R=LTCC_,SEC=S3_")
dbLoadRecords("db/gas_cRIO_LTCC_SEC.db","P=B_DET_,R=LTCC_,SEC=S4_")
dbLoadRecords("db/gas_cRIO_LTCC_SEC.db","P=B_DET_,R=LTCC_,SEC=S5_")
dbLoadRecords("db/gas_cRIO_LTCC_SEC.db","P=B_DET_,R=LTCC_,SEC=S6_")
dbLoadRecords("db/gas_cRIO_RICH.db",    "P=B_DET_,R=RICH_")
dbLoadRecords("db/gas_cRIO_SVT.db",     "P=B_DET_,R=SVT_")

cd "${TOP}/iocBoot/${IOC}"

## autosave setup
< save_restore.cmd

iocInit

## autosave startup
## Handle autosave 'commands' contained in loaded databases.
makeAutosaveFiles()
create_monitor_set("info_positions.req", 5, "P=xxx:")
create_monitor_set("info_settings.req", 30, "P=xxx:")
#create_monitor_set("gas_dc_settings.req", 30, "P=B_DET_,R=DC_")


