class ZCL_EXCEL_SECURITY definition
  public
  final
  create public .

public section.
  type-pools ABAP .

  data LOCKREVISION type FLAG .
  data LOCKSTRUCTURE type FLAG .
  data LOCKWINDOWS type FLAG .
  data REVISIONSPASSWORD type ZEXCEL_REVISIONSPASSWORD .
  data WORKBOOKPASSWORD type ZEXCEL_WORKBOOKPASSWORD .

  methods IS_SECURITY_ENABLED
    returning
      value(EP_SECURITY_ENABLED) type FLAG .
protected section.
private section.
ENDCLASS.



CLASS ZCL_EXCEL_SECURITY IMPLEMENTATION.


METHOD is_security_enabled.
  IF lockrevision EQ abap_true OR lockstructure EQ abap_true OR lockwindows EQ abap_true.
    ep_security_enabled = abap_true.
  ENDIF.
ENDMETHOD.
ENDCLASS.
