importPackage(Packages.org.csstudio.opibuilder.scriptUtil);

var run = PVUtil.getDouble(pvs[0]);

var P = "B_SOL:LHe:";
var R = [
	"COIL_T_AVG",
	"COIL_T_MAX",
	"COIL1_T_EST",
	"COIL2_T_EST",
	"COIL3_T_EST",
	"COIL4_T_EST",
	"COIL5_T_EST",
	"C14_DT_MAX",
	"C14ASY_DT_MAX",
	"C14ASY_DT_MAXSET",
	"C14ASY_DT_MAXDSG",
	"C14ASY_DT_MAXPCT",
	"C5BOB_DT_MAX",
	"C5BOB_DT_MAXDSG",
	"C5BOB_DT_MAXPCT",
	"CM_T_MAX",
	"CM_T_MIN",
	"CM_DT_MAX",
	"CM_DT_MAXDSG",
	"CM_DT_MAXPCT",
	"HE_CP_CD_DT",
	"HE_CP_CD_DT2",
	"HE_METAL_CD_DT",
	"HE_METAL_CD_DT2",
	"HE_METAL_WU_DT",
	"HE_METAL_WU_DT2",
	"CP_T_MAX",
	"SHLDOUT_T_MAX",
	"SHLDOUT_T_AVG",
	"SHLD_T_MAX",
	"SHLD_DP",
	"HE_SHLD4K_DT",
	"COIL_DT_Dt30",
	"COIL_DT_Dt120",
	"COIL_DT_Dt600",
	"SHLDOUT_DT_Dt30",
	"SHLDOUT_DT_Dt120",
	"SHLDOUT_DT_Dt600",
	"SHLD_CD_DT",
	"SHLD_DT_MAX",
	"SHLD4K_DT_MAX",
	"SHLD4K_DT_MAXDSG",
	"SHLD4K_DT_MAXPCT",
	"DT_MAX_PCT",
	"DP8670MAGDP",
	"HTR8620",
	"HTR8672"
	];

for (var i=0; i<R.length; i++) {
	var lc = WidgetUtil.createWidgetModel("org.csstudio.opibuilder.widgets.linkingContainer");
	lc.setPropertyValue("opi_file","../../alarms/alarm_aiao_row.opi");
	lc.setPropertyValue("auto_size",true);
	lc.setPropertyValue("zoom_to_fit",false);
	lc.setPropertyValue("border_style",0);
	lc.setPropertyValue("background_color","OPI_Background");
	lc.setPropertyValue("x", 5);
	lc.addMacro("LABEL", R[i]);
	lc.addMacro("PV", P+R[i]);
	widget.addChildToBottom(lc);
	}
