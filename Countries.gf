abstract Countries = Facts, CountryNames ** {

flags startcat = Doc ;

fun
  MkName          : CName  -> Name ;
  MkContinentName : CDName -> Name ;
  DemonymProperty : CDName -> Property ;

  CapitalAttribute    : Attribute ;
  CountryAttribute    : Attribute ;
  PopulationAttribute : Attribute ;
  ContinentAttribute  : Attribute ;
  CurrencyAttribute   : Attribute ;

  CountryKind    : Kind ;
  CityKind       : Kind ;
  CurrencyKind   : Kind ;
  InhabitantKind : Kind ;
}
