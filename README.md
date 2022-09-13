# Country facts grammar

A Grammatical Framework grammar for expressing facts about countries and capitals in English and Swedish.

This grammar is a modification of an example grammar from [aarneranta/NLG-examples](https://github.com/aarneranta/NLG-examples/).

## Example sentences

We can express properties such as

`Stockholm is a city .`

which produces the following abstract syntax tree

`OneSentenceDoc (FactSentence (KindFact (NameObject (MkName Stockholm_CName)) CityKind))`

We can express attributes such as

`the population of Sweden is about 10 million .`

which produces the following abstract syntax tree

`OneSentenceDoc (FactSentence (AttributeFact PopulationAttribute (NameObject (MkName Sweden_CName)) (NumericValue (AboutNumeric (IntMillionNumeric 10)))))`

We can express universal and conditional statements about attributes such as

`the People's Republic of China is the country with the largest population .`

which produces the following abstract syntax tree

`OneSentenceDoc (FactSentence (MaxObjectKindAttributeFact (NameObject (MkName People's_Republic_of_China_CName)) CountryKind PopulationAttribute))`

## Haskell source code

We can generate Haskell source code corresponding to the grammar using the following Grammatical Framework command:

`gf -make -output-format=haskell --haskell=lexical -lexical=CName,CDName,Kind,Attribute CountriesEng.gf CountriesSwe.gf`

This command will also produce a PGF-file that can be exported.
