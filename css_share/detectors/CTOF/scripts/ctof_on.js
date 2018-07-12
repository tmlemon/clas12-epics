importPackage(Packages.org.csstudio.opibuilder.scriptUtil);

var label = "Turn ON ALL CTOF HV\n\n";
label +=    "      Really??"

var response = GUIUtil.openConfirmDialog(label);

if (response)
{
    var prefix = "B_DET_CTOF_HV_";

    for (var cc=1; cc<=48; cc++)
    {
        //if (cc==14) continue;

        if (cc<10) cc="0"+cc;
        pvU = prefix + "U" + cc + ":pwonoff";
        pvD = prefix + "D" + cc + ":pwonoff";
        //  java.lang.System.out.println(pvU+ " " +pvD);
        PVUtil.writePV(pvU,1);
        PVUtil.writePV(pvD,1);
    }

}
