abstract Facts = {

flags startcat = Doc ;

cat
  Doc ;       -- complete document
  Sentence ;  -- sentence with determinate tense and polarity
  Fact ;      -- predicative clause whose tense and polarity can vary
  Object ;    -- argument in predication, either constant or pronoun
  Property ;  -- modifying adjectival phrase, e.g. "European"
  Attribute ; -- single property of an object, e.g. "population"
  Kind ;      -- type of objects, e.g. "European country"
  Value ;     -- value of an attribute, such as entity name or numeric
  Name ;      -- name of an entity, e.g. "Honduras", "South America"
  Numeric ;   -- cardinal number, e.g. "23", "100 million", "over a billion"

fun
  OneSentenceDoc : Sentence -> Doc ;           -- S.
  AddSentenceDoc : Doc -> Sentence -> Doc ;    -- D. S.

  ConjSentence  : Sentence -> Sentence -> Sentence ; -- S and S
  FactSentence  : Fact -> Sentence ;                 -- F

  KindFact      : Object -> Kind -> Fact ;               -- O is a K
  PropertyFact  : Object -> Property -> Fact ;           -- O is P
  AttributeFact : Attribute -> Object -> Value -> Fact ; -- the A of O is V

  NameObject : Name -> Object ;     -- N
  PronounObject : Name -> Object ;  -- it

  PropertyKind : Property -> Kind -> Kind ;  -- P K

  NumericKindValue : Numeric -> Kind -> Value ; -- N K
  NameValue : Name -> Value ;                   -- N
  NumericValue : Numeric -> Value ;             -- N V

  IntNumeric : Int -> Numeric ;         -- I
  IntMillionNumeric : Int -> Numeric ;  -- I million
  IntBillionNumeric : Int -> Numeric ;  -- I billion
  AboutNumeric : Numeric -> Numeric ;   -- about N
  OverNumeric : Numeric -> Numeric ;    -- over N
  UnderNumeric : Numeric -> Numeric ;   -- over N

--------------------
-- data aggregation

cat
  [Object] {2} ;

fun
  ConjObject : [Object] -> Object ;  -- O, O and O

  MaxObjectAttributeFact : Object -> Attribute -> Fact ; -- O has the largest A
  MinObjectAttributeFact : Object -> Attribute -> Fact ; -- O has the smallest A

  MaxObjectKindAttributeFact : Object -> Kind -> Attribute -> Fact ; -- O is the K with the largest A
  MinObjectKindAttributeFact : Object -> Kind -> Attribute -> Fact ; -- O is the K with the smallest A
}
