![alt tag](https://github.com/JeffersonLab/clas12-epics/blob/master/css_share/common/images/clas12_color.svg)

# clas12-epics
CLAS12 EPICS 

EPICS applications, drivers, and operator interfaces for CLAS12.  External, 
third-party modules and support should not be maintained within this repository.

EPICS base, extensions, support modules, and synApps have been compiled for 
linux-x86, linux-x86_64, and vxWorks-ppc604. IOCs should run 64-bit binaries, 
exceptions should be documented. 

## Known Issues
#### FCUP
When deploying iocclassc4, the FCUP calculation will need to be updated on HPS 
screens.  "scaler_calc1" will not function as it did.  See "fcup_calc.db for the
new PV.

## Versions
  * EPICS_BASE 3.14.12.5
  * EPICS_HOST_ARCH linux-x86_64 (rhel7 32/64-bit, VxWorks 5.5 PPC)
  * CSS 4.1.1
  * synApps 5.8

## Contributing
In general, we follow the "fork-and-pull" Git workflow.

1. Fork the repo on GitHub
2. Commit changes to a branch in your fork
3. Submit pull request "upstream" with your changes (provide clear comments)
4. Merge changes in to "upstream" repo

NOTE: Be sure to merge the latest from "upstream" before making a pull request.
