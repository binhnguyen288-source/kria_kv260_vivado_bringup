# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "M_AW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_IDW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_UW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_AW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_DW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_IDW" -parent ${Page_0}


}

proc update_PARAM_VALUE.M_AW { PARAM_VALUE.M_AW } {
	# Procedure called to update M_AW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_AW { PARAM_VALUE.M_AW } {
	# Procedure called to validate M_AW
	return true
}

proc update_PARAM_VALUE.M_DW { PARAM_VALUE.M_DW } {
	# Procedure called to update M_DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_DW { PARAM_VALUE.M_DW } {
	# Procedure called to validate M_DW
	return true
}

proc update_PARAM_VALUE.M_IDW { PARAM_VALUE.M_IDW } {
	# Procedure called to update M_IDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_IDW { PARAM_VALUE.M_IDW } {
	# Procedure called to validate M_IDW
	return true
}

proc update_PARAM_VALUE.M_UW { PARAM_VALUE.M_UW } {
	# Procedure called to update M_UW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_UW { PARAM_VALUE.M_UW } {
	# Procedure called to validate M_UW
	return true
}

proc update_PARAM_VALUE.S_AW { PARAM_VALUE.S_AW } {
	# Procedure called to update S_AW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AW { PARAM_VALUE.S_AW } {
	# Procedure called to validate S_AW
	return true
}

proc update_PARAM_VALUE.S_DW { PARAM_VALUE.S_DW } {
	# Procedure called to update S_DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_DW { PARAM_VALUE.S_DW } {
	# Procedure called to validate S_DW
	return true
}

proc update_PARAM_VALUE.S_IDW { PARAM_VALUE.S_IDW } {
	# Procedure called to update S_IDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_IDW { PARAM_VALUE.S_IDW } {
	# Procedure called to validate S_IDW
	return true
}


proc update_MODELPARAM_VALUE.M_UW { MODELPARAM_VALUE.M_UW PARAM_VALUE.M_UW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_UW}] ${MODELPARAM_VALUE.M_UW}
}

proc update_MODELPARAM_VALUE.M_IDW { MODELPARAM_VALUE.M_IDW PARAM_VALUE.M_IDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_IDW}] ${MODELPARAM_VALUE.M_IDW}
}

proc update_MODELPARAM_VALUE.M_AW { MODELPARAM_VALUE.M_AW PARAM_VALUE.M_AW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_AW}] ${MODELPARAM_VALUE.M_AW}
}

proc update_MODELPARAM_VALUE.M_DW { MODELPARAM_VALUE.M_DW PARAM_VALUE.M_DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_DW}] ${MODELPARAM_VALUE.M_DW}
}

proc update_MODELPARAM_VALUE.S_AW { MODELPARAM_VALUE.S_AW PARAM_VALUE.S_AW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AW}] ${MODELPARAM_VALUE.S_AW}
}

proc update_MODELPARAM_VALUE.S_DW { MODELPARAM_VALUE.S_DW PARAM_VALUE.S_DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_DW}] ${MODELPARAM_VALUE.S_DW}
}

proc update_MODELPARAM_VALUE.S_IDW { MODELPARAM_VALUE.S_IDW PARAM_VALUE.S_IDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_IDW}] ${MODELPARAM_VALUE.S_IDW}
}

