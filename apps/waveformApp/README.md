# waveformApp

Just a sequencer to read a list of PV names from a file and
periodically update their values in an output waveform.

### Example ioc startup commands:
```
dbLoadRecords("db/waveformApp.db","P=a:,R=1:,NELM=100,FTVL=FLOAT,PERIOD=5,FNAME=pvList1.txt")
dbLoadRecords("db/waveformApp.db","P=a:,R=2:,NELM=800,FTVL=FLOAT,PERIOD=5,FNAME=pvList2.txt")
seq waveform, "P=a:,R=1:"
seq waveform, "P=a:,R=2:"
```
Where output waveforms would be in `a:1:wf` and `a:2:wf`, and NELM should be at least
as large as number of PVs in FNAME.
