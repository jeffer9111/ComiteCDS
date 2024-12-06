@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Resumen Ventas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity YI_SalesOverview
  as select from I_SalesDocument
    inner join   I_SalesDocumentItem on I_SalesDocument.SalesDocument = I_SalesDocumentItem.SalesDocument
  association to I_Customer as _Customer on I_SalesDocument.SoldToParty = _Customer.Customer
{
  key I_SalesDocument.SoldToParty                                as SoldToParty,
      _Customer.CustomerName                                     as CustomerName,
      cast( substring($session.system_date,1,4) as abap.numc(4)) as FiscalYear,
      @Semantics.amount.currencyCode: 'Currency'
      sum(I_SalesDocumentItem.NetAmount)                         as NetAmount,
      I_SalesDocument.StatisticsCurrency                         as Currency,
      count( distinct I_SalesDocument.SalesDocument )            as NumberOfOffers,
      case
        when sum(I_SalesDocumentItem.NetAmount) > 1000000 then 'Alto'
        when sum(I_SalesDocumentItem.NetAmount) > 500000 then 'Medio'
        else 'Bajo'
        end                                                      as CustomerClassification,
      case
        when sum(I_SalesDocumentItem.NetAmount) > 1000000 then 3
        when sum(I_SalesDocumentItem.NetAmount) > 500000 then 2
        else 1
        end                                                      as CriticallyClassification,
      _Customer
}
group by
  I_SalesDocument.SoldToParty,
  _Customer.CustomerName,
  I_SalesDocument.StatisticsCurrency
