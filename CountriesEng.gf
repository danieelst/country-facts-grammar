concrete CountriesEng of Countries = FactsEng, CountryNamesEng **

open SyntaxEng, ParadigmsEng, SymbolicEng in {

lin
  MkName name          = {np = name ; pron = npPron name} ;
  MkContinentName name = {np = name.np ; pron = npPron name.np} ;
  DemonymProperty name = name.ap ;

  CapitalAttribute    = mkAttribute "capital" ;
  CountryAttribute    = mkAttribute "country" ;
  PopulationAttribute = mkAttribute "population" ;
  ContinentAttribute  = mkAttribute "continent" ;
  CurrencyAttribute   = mkAttribute "currency" ;

  CountryKind    = mkCN (mkN "country") ;
  CityKind       = mkCN (mkN "city") ;
  CurrencyKind   = mkCN (mkN "currency") ;
  InhabitantKind = mkCN (mkN "inhabitant") ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ;
}
