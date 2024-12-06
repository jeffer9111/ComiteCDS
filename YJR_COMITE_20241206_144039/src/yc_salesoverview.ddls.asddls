@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Resumen Ventas - Proyección'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity YC_SalesOverview
  as projection on YI_SalesOverview
{
  key SoldToParty,
      CustomerName,
      @EndUserText.label: 'Año fiscal'
      FiscalYear,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText.label: 'Total'
      NetAmount,
      Currency,
      @EndUserText.label: 'Número de ofertas'
      NumberOfOffers,
      @EndUserText.label: 'Clasificación del cliente'
      CustomerClassification,
      CriticallyClassification,
      /* Associations */
      _Customer
}
