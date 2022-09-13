concrete CountriesSwe of Countries = FactsSwe, CountryNamesSwe **

open SyntaxSwe, ParadigmsSwe, SymbolicSwe, (I=IrregSwe), Prelude

in {

lin
  MkName name          = {np = name.np ; pron = npPron name.np} ;
  MkContinentName name = {np = name.np ; pron = npPron name.np} ;
  DemonymProperty name = name.ap ;

  CapitalAttribute    = mkAttribute "huvudstad" ;
  CountryAttribute    = mkAttribute "land"      ;
  PopulationAttribute = mkAttribute "befolkning" ;
  ContinentAttribute  = mkAttribute "kontinent" ;
  CurrencyAttribute   = mkAttribute "valuta" ;

  CountryKind    = mkCN (mkN "land" "landet" "länder" "länderna") ;
  CityKind       = mkCN (mkN "stad" "städer") ;
  CurrencyKind   = mkCN (mkN "valuta") ;
  InhabitantKind = mkCN (mkN "invånare" "invånare") ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ; ----
}
