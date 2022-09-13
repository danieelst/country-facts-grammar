incomplete concrete FactsFunctor of Facts = open
  Syntax,
  Symbolic,
  Grammar,
  Prelude

in {

lincat
  Doc = Text ;
  Sentence = S ;
  Fact = Cl ;
  Object = {np : NP ; pron : Pron ; isPron : Bool} ;
  Property = AP ;
  Attribute = CN ;
  Kind = CN ;
  Value = NP ;
  Name = {np : NP ; pron : Pron} ;
  Numeric = Card ;

lin
  OneSentenceDoc sent = mkText sent ;
  AddSentenceDoc doc sent = mkText doc (mkText sent) ;

  ConjSentence a b = mkS and_Conj a b ;
  FactSentence fact = mkS presentTense positivePol fact ;

  KindFact obj kind = mkCl obj.np (mkNP a_Det kind) ;
  PropertyFact obj prop = mkCl obj.np prop ;
  AttributeFact attr obj val = case obj.isPron of {
    True => mkCl (mkNP (mkDet obj.pron) attr) val ;
    _ => mkCl (mkNP the_Det (mkCN attr (mkAdv possess_Prep obj.np))) val
  } ;

  PropertyKind prop kind = mkCN prop kind ;

  NameObject name = name ** {isPron = False} ;
  PronounObject name = {np = mkNP name.pron ; pron = name.pron ; isPron = True} ;

  NumericKindValue num kind = mkNP num kind ;
  NameValue name = name.np ;
  NumericValue num = mkNP (mkDet num) ;

  IntNumeric int = <symb int : Card> ;

--------------------
-- data aggregation

lincat
  [Object] = [NP] ;

lin
  BaseObject o p = BaseNP o.np p.np ;
  ConsObject o os = ConsNP o.np os ;
  ConjObject objs = {np = ConjNP and_Conj objs ; pron = they_Pron ; isPron = False} ;

  MaxObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN largest_AP attr)) ;
  MinObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN smallest_AP attr)) ;
  MaxObjectKindAttributeFact obj kind attr = mkCl obj.np (mkVP (mkVP (mkNP the_Det kind)) (mkAdv with_Prep (mkNP the_Det (mkCN largest_AP attr)))) ;
  MinObjectKindAttributeFact obj kind attr = mkCl obj.np (mkVP (mkVP (mkNP the_Det kind)) (mkAdv with_Prep (mkNP the_Det (mkCN smallest_AP attr)))) ;

-------------------
oper
  npPron : NP -> Pron = \np -> it_Pron ;

  first_AP = mkAP (mkOrd (mkNumeral "1")) ;
}
