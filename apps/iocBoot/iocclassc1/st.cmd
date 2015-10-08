## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
cd "$IOC_root_classc1"

############################################################################
< cdCommands
############################################################################
< ../nfsCommands
############################################################################
cd topbin
ld < classc1.munch
cd top

## Register all support components
dbLoadDatabase("dbd/classc1.dbd")
classc1_registerRecordDeviceDriver(pdbbase)

epicsEnvSet( "EPICS_CA_ADDR_LIST", "129.57.255.4")

## Struck Scalers
#drvSIS3801Config("Port name",
#                  baseAddress,
#                  interruptVector,
#                  int interruptLevel,
#                  channels,
#                  signals)
drvSIS3801Config("SIS38XX_1", 0x08000000, 220, 6, 16, 32)

dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=0, INP=@asyn(SIS38XX_1 0)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=1, INP=@asyn(SIS38XX_1 1)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=2, INP=@asyn(SIS38XX_1 2)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=3, INP=@asyn(SIS38XX_1 3)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=4, INP=@asyn(SIS38XX_1 4)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=5, INP=@asyn(SIS38XX_1 5)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=6, INP=@asyn(SIS38XX_1 6)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=7, INP=@asyn(SIS38XX_1 7)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=8, INP=@asyn(SIS38XX_1 8)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=9, INP=@asyn(SIS38XX_1 9)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=10, INP=@asyn(SIS38XX_1 10)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=11, INP=@asyn(SIS38XX_1 11)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=12, INP=@asyn(SIS38XX_1 12)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=13, INP=@asyn(SIS38XX_1 13)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=14, INP=@asyn(SIS38XX_1 14)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=15, INP=@asyn(SIS38XX_1 15)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=16, INP=@asyn(SIS38XX_1 16)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=17, INP=@asyn(SIS38XX_1 17)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=18, INP=@asyn(SIS38XX_1 18)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=19, INP=@asyn(SIS38XX_1 19)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=20, INP=@asyn(SIS38XX_1 20)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=21, INP=@asyn(SIS38XX_1 21)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=22, INP=@asyn(SIS38XX_1 22)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=23, INP=@asyn(SIS38XX_1 23)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=24, INP=@asyn(SIS38XX_1 24)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=25, INP=@asyn(SIS38XX_1 25)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=26, INP=@asyn(SIS38XX_1 26)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=27, INP=@asyn(SIS38XX_1 27)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=28, INP=@asyn(SIS38XX_1 28)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=29, INP=@asyn(SIS38XX_1 29)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=30, INP=@asyn(SIS38XX_1 30)")
dbLoadRecords("db/bom_scaler.db", "SCLR=bom_sc, FIFO=16, CHAN=31, INP=@asyn(SIS38XX_1 31)")

dbLoadRecords("db/bom_stop_start.db",   "SCLR=bom_sc")
dbLoadRecords("db/bom_read_control.db", "SCLR=bom_sc")
dbLoadRecords("db/bom_sum.db",          "SCLR=bom_sc")

## Joerger Scalers
# NOTE: this function is not defined in iocsh, only vxworks shell
VSCSetup(3, 0x0a000000, 200)
# scaler_c, d, e
cd startup
dbLoadTemplate("joerger_classc1.substitutions")
cd top

## harp_generic
# OMS VME driver setup parameters: 
#     (1)cards, (2)base address(short, 16-byte boundary), 
#     (3)interrupt vector (0=disable or  64 - 255), (4)interrupt level (1 - 6),
#     (5)motor task polling rate (min=1Hz,max=60Hz)
omsSetup(2, 0x8000, 180, 5, 10)
dbLoadRecords("db/motor.db","motor_name=harp_2c21, card=0, slot=2, srev=2000, urev=2.54, direction=Neg, velo=5.0, accl=0.1")
dbLoadRecords("db/scan.db","motor_name=harp_2c21, start_at=25, end_at=60.0, start_speed=5.0, scan_speed=0.5, acq_time=0.1")
#
dbLoadRecords("db/motor.db","motor_name=harp_tagger, card=0, slot=1, srev=2000, urev=2.54, direction=Neg, velo=0.5, accl=0.01")
dbLoadRecords("db/scan.db","motor_name=harp_tagger, start_at=18, end_at=58.0, start_speed=5.0, scan_speed=0.5, acq_time=0.07")
dbLoadRecords("db/radiators.db")

## IOC monitoring, etc
dbLoadRecords("$(DEVIOCSTATS)/db/iocAdminVxWorks.db", "IOC=iocclassc1")
dbLoadRecords("$(AUTOSAVE)/asApp/Db/save_restoreStatus.db", "P=iocclassc1:")

cd startup

## autosave setup
< save_restore.cmd

iocInit "../resource.def"

## Handle autosave 'commands' contained in loaded databases.
makeAutosaveFiles()
create_monitor_set("info_positions.req", 5, "P=iocscalerTest:")
create_monitor_set("info_settings.req", 30, "P=iocscalerTest:")
create_monitor_set("joerger_classc1_settings.req", 60)

## Start any sequence programs
seq &reset_motor, "name=up_2c21_reset, motor_name=harp_2c21"
seq &harp_scan_generic, "name=up_2c21_scan, motor_name=harp_2c21"

seq &reset_motor, "name=h_tagger_reset, motor_name=harp_tagger"
seq &harp_scan_generic, "name=h_tagger_scan, motor_name=harp_tagger"

