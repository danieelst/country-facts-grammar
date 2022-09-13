concrete FactsSwe of Facts =
  FactsFunctor - [AttributeFact]
  with
    (Syntax = SyntaxSwe),
    (Symbolic = SymbolicSwe),
    (Grammar = GrammarSwe)

**
  open ParadigmsSwe,(E=ExtendSwe) in {

lin
  AttributeFact attr obj val = mkCl (mkNP (E.GenNP obj.np) attr) val ;

-- functor parameters
oper
  largest_AP : AP = GrammarSwe.AdjOrd (mkOrd (mkA "stor" "större" "störst")) ;
  smallest_AP : AP = GrammarSwe.AdjOrd (mkOrd (mkA "liten" "litet" "lilla" "små" "mindre" "minst" "minsta")) ;
  total_AP : AP = mkAP (mkA "sammanlagd") ;
  only_AP : AP = mkAP (invarA "enda") ;

  npNum : NP -> Num = \np ->
    singularNum ; ---- case ifPluralNP np of {False => singularNum ; True => pluralNum} ;


-- functions left to instantiation
lin
  IntMillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "miljon" "miljoner")) ;
  IntBillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "miljard" "miljarder")) ;

  AboutNumeric num = mkCard (pmkAdN "ungefär") num ;
  OverNumeric num = mkCard (pmkAdN "över") num ;
  UnderNumeric num = mkCard (pmkAdN "under") num ;

oper  ---- should be in RGL
  pmkAdN : Str -> AdN = \s -> lin AdN {s = s} ;
}
