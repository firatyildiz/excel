class ZCL_EXCEL_STYLE_PROTECTION definition
  public
  final
  create public .

public section.

  constants C_PROTECTION_HIDDEN type ZEXCEL_CELL_PROTECTION value '1'. "#EC NOTEXT
  constants C_PROTECTION_LOCKED type ZEXCEL_CELL_PROTECTION value '1'. "#EC NOTEXT
  constants C_PROTECTION_UNHIDDEN type ZEXCEL_CELL_PROTECTION value '0'. "#EC NOTEXT
  constants C_PROTECTION_UNLOCKED type ZEXCEL_CELL_PROTECTION value '0'. "#EC NOTEXT
  data HIDDEN type ZEXCEL_CELL_PROTECTION .
  data LOCKED type ZEXCEL_CELL_PROTECTION .

  methods CONSTRUCTOR .
  methods GET_STRUCTURE
    returning
      value(EP_PROTECTION) type ZEXCEL_S_STYLE_PROTECTION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_EXCEL_STYLE_PROTECTION IMPLEMENTATION.


method CONSTRUCTOR.
  locked = me->c_protection_locked.
  hidden = me->c_protection_unhidden.
  endmethod.


method GET_STRUCTURE.
  ep_protection-locked = me->locked.
  ep_protection-hidden = me->hidden.
  endmethod.
ENDCLASS.
