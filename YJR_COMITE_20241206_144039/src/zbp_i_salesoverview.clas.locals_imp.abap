CLASS lhc_yi_salesoverview DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR SalesOverview RESULT result.

*    METHODS create FOR MODIFY
*      IMPORTING entities FOR CREATE SalesOverview.
*
*    METHODS update FOR MODIFY
*      IMPORTING entities FOR UPDATE SalesOverview.
*
*    METHODS delete FOR MODIFY
*      IMPORTING keys FOR DELETE SalesOverview.

    METHODS read FOR READ
      IMPORTING keys FOR READ SalesOverview RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK SalesOverview.

ENDCLASS.

CLASS lhc_yi_salesoverview IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

*  METHOD create.
*  ENDMETHOD.
*
*  METHOD update.
*  ENDMETHOD.
*
*  METHOD delete.
*  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_yi_salesoverview DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_yi_salesoverview IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
