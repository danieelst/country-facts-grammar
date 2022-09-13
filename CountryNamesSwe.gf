concrete CountryNamesSwe of CountryNames = 

  open SyntaxSwe, ParadigmsSwe, Prelude in {

lincat
  CName = LocName ;
  CDName = LocName ** {ap : AP} ;

oper LocName = {np : NP ; isIn : Bool} ;

oper
 mkCName = overload {
  mkCName : Str -> LocName = \s -> {np = mkNP (mkPN s neutrum) ; isIn = True} ;
  mkCName : N -> LocName = \n -> {np = mkNP n ; isIn = True} ;
  mkCName : NP -> LocName = \np -> {np = np ; isIn = True} ;
  } ;

  exCName : LocName -> LocName = \name -> name ** {isIn = False} ;
  sgCName : LocName -> LocName = \name -> name ; ---- ** {np = forceNumberNP singular name.np} ;

  mkCDName = overload {
    mkCDName : Str -> Str -> CDName = \loc,ap -> lin CDName (mkCName loc ** {ap = mkAP (mkA ap)}) ;
    mkCDName : LocName -> AP -> CDName = \loc,ap -> lin CDName (loc ** {ap = ap}) ;
    } ;

lin Africa_CDName = mkCDName "Afrika" "afrikansk" ;
lin Asia_CDName = mkCDName "Asien" "asiatisk" ;
lin Central_America_CDName = mkCDName "Centralamerika" "centralamerikansk" ;
lin Europe_CDName = mkCDName "Europa" "europeisk" ;
lin North_America_CDName = mkCDName "Nordamerika" "nordamerikansk" ;
lin South_America_CDName = mkCDName "Sydamerika" "sydamerikansk" ;
lin Insular_Oceania_CDName = mkCDName "Oceanien" "oceansk" ;

lin Afghanistan_CName = mkCName "Afghanistan" ;
lin Afghan_afghani_CName = mkCName "afghani" ;
lin Kabul_CName = mkCName "Kabul" ;
lin Sudanese_pound_CName = mkCName "Sudanesiskt pund" ;
lin Costa_Rican_colón_CName = mkCName "Costaricansk colón" ;
lin Taiwan_CName = mkCName "Taiwan" ;
lin Niger_CName = mkCName "Niger" ;
lin Amsterdam_CName = mkCName "Amsterdam" ;
lin Austria_CName = mkCName "Österrike" ;
lin Morocco_CName = mkCName "Marocko" ;
lin Kiribati_dollar_CName = mkCName "Kiribati dollar" ;
lin Bahraini_dinar_CName = mkCName "Bahrainsk dinar" ;
lin Ghana_CName = mkCName "Ghana" ;
lin Pakistani_rupee_CName = mkCName "Pakistansk rupee" ;
lin Indian_rupee_CName = mkCName "Indisk rupee" ;
lin Bucharest_CName = mkCName "Bukarest" ;
lin Marshall_Islands_CName = mkCName "Marshallöarna" ;
lin Basseterre_CName = mkCName "Basseterre" ;
lin Addis_Ababa_CName = mkCName "Addis Abeba" ;
lin Mexico_CName = mkCName "Mexiko" ;
lin nakfa_CName = mkCName "Nakfa" ;
lin Cairo_CName = mkCName "Kairo" ;
lin Ethiopia_CName = mkCName "Etiopien" ;
lin Valletta_CName = mkCName "Valletta" ;
lin Argentine_peso_CName = mkCName "Argentinsk peso" ;
lin Kuwait_City_CName = mkCName "Kuwait" ;
lin Palau_CName = mkCName "Palau" ;
lin Baku_CName = mkCName "Baku" ;
lin Tirana_CName = mkCName "Tirana" ;
lin Copenhagen_CName = mkCName "Köpenhamn" ;
lin Damascus_CName = mkCName "Damaskus" ;
lin Costa_Rica_CName = mkCName "Costa Rica" ;
lin Israel_CName = mkCName "Israel" ;
lin Mozambique_CName = mkCName "Moçambique" ;
lin Victoria_CName = mkCName "Victoria" ;
lin East_Timor_centavo_coins_CName = mkCName "East Timor centavo coins" ;
lin Omani_rial_CName = mkCName "Omansk rial" ;
lin Kingstown_CName = mkCName "Kingstown" ;
lin Yaoundé_CName = mkCName "Yaoundé" ;
lin Slovenia_CName = mkCName "Slovenien" ;
lin Mali_CName = mkCName "Mali" ;
lin Cuba_CName = mkCName "Kuba" ;
lin Wellington_CName = mkCName "Wellington" ;
lin East_Timor_CName = mkCName "Östtimor" ;
lin quetzal_CName = mkCName "Quetzal" ;
lin South_Sudan_CName = mkCName "Sydsudan" ;
lin Turkey_CName = mkCName "Turkiet" ;
lin Algiers_CName = mkCName "Alger" ;
lin Jamaican_dollar_CName = mkCName "Jamaicansk dollar" ;
lin Nassau_CName = mkCName "Nassau" ;
lin Prague_CName = mkCName "Prag" ;
lin Spain_CName = mkCName "Spanien" ;
lin Serbian_dinar_CName = mkCName "Serbisk dinar" ;
lin Montevideo_CName = mkCName "Montevideo" ;
lin Sarajevo_CName = mkCName "Sarajevo" ;
lin Paris_CName = mkCName "Paris" ;
lin Luanda_CName = mkCName "Luanda" ;
lin Indonesia_CName = mkCName "Indonesien" ;
lin Seychelles_CName = mkCName "Seychellerna" ;
lin Madrid_CName = mkCName "Madrid" ;
lin Yaren_District_CName = mkCName "Yaren" ;
lin Pretoria_CName = mkCName "Pretoria" ;
lin Liberian_dollar_CName = mkCName "Liberiansk dollar" ;
lin Vietnam_CName = mkCName "Vietnam" ;
lin Tunisian_dinar_CName = mkCName "Tunisisk dinar" ;
lin Nicaragua_CName = mkCName "Nicaragua" ;
lin Taipei_CName = mkCName "Taipei" ;
lin Lithuania_CName = mkCName "Litauen" ;
lin Moroni_CName = mkCName "Moroni" ;
lin Nairobi_CName = mkCName "Nairobi" ;
lin United_Arab_Emirates_dirham_CName = mkCName "Emiratisk dirham" ;
lin Maldives_CName = mkCName "Maldiverna" ;
lin Swiss_franc_CName = mkCName "schweizisk franc" ;
lin Ghana_cedi_CName = mkCName "Ghana Cedi" ;
lin Bulgaria_CName = mkCName "Bulgarien" ;
lin Tonga_CName = mkCName "Tonga" ;
lin Maldivian_rufiyaa_CName = mkCName "Maldivisk rufiyah" ;
lin Zimbabwe_CName = mkCName "Zimbabwe" ;
lin Kenya_CName = mkCName "Kenya" ;
lin Madagascar_CName = mkCName "Madagaskar" ;
lin Bangui_CName = mkCName "Bangui" ;
lin Thimphu_CName = mkCName "Thimphu" ;
lin Phnom_Penh_CName = mkCName "Phnom Penh" ;
lin Moscow_CName = mkCName "Moskva" ;
lin São_Tomé_CName = mkCName "São Tomé" ;
lin Fiji_CName = mkCName "Fiji" ;
lin Lesotho_CName = mkCName "Lesotho" ;
lin Philippines_CName = mkCName "Filippinerna" ;
lin Barbadian_dollar_CName = mkCName "Barbadisk dollar" ;
lin Philippine_peso_CName = mkCName "Filippinsk peso" ;
lin Havana_CName = mkCName "Havanna" ;
lin 'złoty_CName' = mkCName "Złoty" ;
lin hryvnia_CName = mkCName "Hryvnja" ;
lin Port_Louis_CName = mkCName "Port Louis" ;
lin Dodoma_CName = mkCName "Dodoma" ;
lin Comoros_CName = mkCName "Komorerna" ;
lin Comorian_franc_CName = mkCName "Komoransk franc" ;
lin Buenos_Aires_CName = mkCName "Buenos Aires" ;
lin Russian_ruble_CName = mkCName "rysk rubel" ;
lin Ivory_Coast_CName = mkCName "Elfenbenskusten" ;
lin Oslo_CName = mkCName "Oslo" ;
lin North_Korea_CName = mkCName "Nordkorea" ;
lin Conakry_CName = mkCName "Conakry" ;
lin Abuja_CName = mkCName "Abuja" ;
lin Lomé_CName = mkCName "Lomé" ;
lin ariary_CName = mkCName "Madagaskisk ariary" ;
lin Iceland_CName = exCName (mkCName "Island") ;
lin Rabat_CName = mkCName "Rabat" ;
lin Yemeni_rial_CName = mkCName "Jemenitisk rial" ;
lin Dakar_CName = mkCName "Dakar" ;
lin Tunisia_CName = mkCName "Tunisien" ;
lin N'Djamena_CName = mkCName "N'Djamena" ;
lin Apia_CName = mkCName "Apia" ;
lin tugrik_CName = mkCName "Mongolisk Tögrög" ;
lin Sudan_CName = mkCName "Sudan" ;
lin Italy_CName = mkCName "Italien" ;
lin Maseru_CName = mkCName "Maseru" ;
lin Montenegro_CName = mkCName "Montenegro" ;
lin Syria_CName = mkCName "Syrien" ;
lin La_Paz_CName = mkCName "La Paz" ;
lin 'Guinea-Bissau_CName' = mkCName "Guinea-Bissau" ;
lin Seoul_CName = mkCName "Seoul" ;
lin Canadian_dollar_CName = mkCName "kanadensisk dollar" ;
lin North_Macedonia_CName = mkCName "Nordmakedonien" ;
lin Kuwait_CName = mkCName "Kuwait" ;
lin New_Zealand_dollar_CName = mkCName "Nyzeeländsk dollar" ;
lin Kenyan_shilling_CName = mkCName "Kenyansk shilling" ;
lin Amman_CName = mkCName "Amman" ;
lin rupiah_CName = mkCName "Rupiah" ;
lin Vilnius_CName = mkCName "Vilnius" ;
lin Zagreb_CName = mkCName "Zagreb" ;
lin Uganda_CName = mkCName "Uganda" ;
lin Nigerian_naira_CName = mkCName "Nigeriansk naira" ;
lin Burundi_CName = mkCName "Burundi" ;
lin baht_CName = mkCName "Baht" ;
lin Algeria_CName = mkCName "Algeriet" ;
lin Lao_kip_CName = mkCName "Laotisk Kip" ;
lin Jordanian_dinar_CName = mkCName "Jordansk dinar" ;
lin Ljubljana_CName = mkCName "Ljubljana" ;
lin Yamoussoukro_CName = mkCName "Yamoussoukro" ;
lin Japanese_yen_CName = mkCName "yen" ;
lin Malaysia_CName = mkCName "Malaysia" ;
lin kyat_CName = mkCName "Burmesisk kyat" ;
lin Nicosia_CName = mkCName "Nicosia" ;
lin Honduran_lempira_CName = mkCName "Lempira" ;
lin Nigeria_CName = mkCName "Nigeria" ;
lin Luxembourg_CName = mkCName "Luxemburg" ;
lin 'Porto-Novo_CName' = mkCName "Porto-Novo" ;
lin Lilongwe_CName = mkCName "Lilongwe" ;
lin Finland_CName = mkCName "Finland" ;
lin West_African_CFA_franc_CName = mkCName "West African CFA franc" ;
lin Dublin_CName = mkCName "Dublin" ;
lin Australia_CName = mkCName "Australien" ;
lin 'Port-au-Prince_CName' = mkCName "Port-au-Prince" ;
lin Freetown_CName = mkCName "Freetown" ;
lin Qatari_riyal_CName = mkCName "Qatarisk rial" ;
lin denar_CName = mkCName "Makedonisk denar" ;
lin Praia_CName = mkCName "Praia" ;
lin Jerusalem_CName = mkCName "Jerusalem" ;
lin Mozambican_metical_CName = mkCName "Moçambikisk Metical" ;
lin Egyptian_pound_CName = mkCName "Egyptiskt pund" ;
lin Papua_New_Guinea_CName = mkCName "Papua Nya Guinea" ;
lin Accra_CName = mkCName "Accra" ;
lin Tripoli_CName = mkCName "Tripoli" ;
lin Mongolia_CName = mkCName "Mongoliet" ;
lin Antananarivo_CName = mkCName "Antananarivo" ;
lin Eastern_Caribbean_dollar_CName = mkCName "Östkaribisk dollar" ;
lin Lesotho_loti_CName = mkCName "Lesothisk Loti" ;
lin South_African_rand_CName = mkCName "Rand" ;
lin Belgium_CName = mkCName "Belgien" ;
lin United_States_of_America_CName = mkCName "USA" ;
lin Venezuela_CName = mkCName "Venezuela" ;
lin Lobamba_CName = mkCName "Lobamba" ;
lin Ukraine_CName = mkCName "Ukraina" ;
lin Qatar_CName = mkCName "Qatar" ;
lin Peruvian_sol_CName = mkCName "Nuevo sol" ;
lin Sierra_Leone_CName = mkCName "Sierra Leone" ;
lin Ireland_CName = mkCName "Irland" ;
lin Ottawa_CName = mkCName "Ottawa" ;
lin Bratislava_CName = mkCName "Bratislava" ;
lin Ankara_CName = mkCName "Ankara" ;
lin Albanian_lek_CName = mkCName "Lek" ;
lin Portugal_CName = mkCName "Portugal" ;
lin Paraguayan_guaraní_CName = mkCName "Guarani" ;
lin Switzerland_CName = mkCName "Schweiz" ;
lin India_CName = mkCName "Indien" ;
lin Athens_CName = mkCName "Aten" ;
lin Iraq_CName = mkCName "Irak" ;
lin Singapore_CName = mkCName "Singapore" ;
lin Nuku'alofa_CName = mkCName "Nuku'alofa" ;
lin Brazil_CName = mkCName "Brasilien" ;
lin Lisbon_CName = mkCName "Lissabon" ;
lin Iranian_rial_CName = mkCName "Iransk rial" ;
lin pound_sterling_CName = mkCName "Brittiskt pund" ;
lin São_Tomé_and_Príncipe_CName = mkCName "São Tomé och Príncipe" ;
lin Turkish_lira_CName = mkCName "Turkisk lira" ;
lin Serbia_CName = mkCName "Serbien" ;
lin Chad_CName = mkCName "Tchad" ;
lin Libyan_dinar_CName = mkCName "Libysk dinar" ;
lin Beijing_CName = mkCName "Peking" ;
lin Stockholm_CName = mkCName "Stockholm" ;
lin Hungary_CName = mkCName "Ungern" ;
lin Georgetown_CName = mkCName "Georgetown" ;
lin Andorra_CName = mkCName "Andorra" ;
lin Angola_CName = mkCName "Angola" ;
lin New_Zealand_CName = mkCName "Nya Zeeland" ;
lin Denmark_CName = mkCName "Danmark" ;
lin Port_Vila_CName = mkCName "Port Vila" ;
lin Lusaka_CName = mkCName "Lusaka" ;
lin Samoa_CName = mkCName "Samoa" ;
lin People's_Republic_of_China_CName = mkCName "Kina" ;
lin 'Washington,_D.C._CName' = mkCName "Washington, D.C." ;
lin Icelandic_króna_CName = mkCName "Isländsk krona" ;
lin Dominican_Republic_CName = mkCName "Dominikanska republiken" ;
lin Armenian_dram_CName = mkCName "Dram" ;
lin boliviano_CName = mkCName "Boliviano" ;
lin Senegal_CName = mkCName "Senegal" ;
lin Saudi_Arabia_CName = mkCName "Saudiarabien" ;
lin Turkmenistan_manat_CName = mkCName "Turkmenistansk manat" ;
lin Lebanese_pound_CName = mkCName "Libanesiskt pund" ;
lin Monaco_CName = mkCName "Monaco" ;
lin Jordan_CName = mkCName "Jordanien" ;
lin Thailand_CName = mkCName "Thailand" ;
lin Romania_CName = mkCName "Rumänien" ;
lin Suva_CName = mkCName "Suva" ;
lin Naypyidaw_CName = mkCName "Naypyidaw" ;
lin Roseau_CName = mkCName "Roseau" ;
lin Riyadh_CName = mkCName "Riyadh" ;
lin Laos_CName = mkCName "Laos" ;
lin Majuro_CName = mkCName "Majuro" ;
lin Canada_CName = mkCName "Kanada" ;
lin Fijian_dollar_CName = mkCName "Fijidollar" ;
lin Tegucigalpa_CName = mkCName "Tegucigalpa" ;
lin France_CName = mkCName "Frankrike" ;
lin Somalia_CName = mkCName "Somalia" ;
lin convertible_mark_CName = mkCName "Konvertibilna marka" ;
lin Djiboutian_franc_CName = mkCName "Djiboutisk franc" ;
lin Saudi_riyal_CName = mkCName "Saudiarabisk rial" ;
lin Congolese_franc_CName = mkCName "Kongolesisk franc" ;
lin Togo_CName = mkCName "Togo" ;
lin Bangkok_CName = mkCName "Bangkok" ;
lin Minsk_CName = mkCName "Minsk" ;
lin Nouakchott_CName = mkCName "Nouakchott" ;
lin Sanaa_CName = mkCName "Sanaa" ;
lin Sovereign_Bolivar_CName = mkCName "Sovereign Bolivar" ;
lin Cape_Verde_CName = mkCName "Kap Verde" ;
lin Oman_CName = mkCName "Oman" ;
lin Swedish_krona_CName = mkCName "svensk krona" ;
lin Central_African_CFA_franc_CName = mkCName "Centralafrikansk CFA Franc" ;
lin Brazzaville_CName = mkCName "Brazzaville" ;
lin ngultrum_CName = mkCName "Ngultrum" ;
lin South_Tarawa_CName = mkCName "South Tarawa" ;
lin Turkmenistan_CName = mkCName "Turkmenistan" ;
lin Bahamian_dollar_CName = mkCName "Bahamansk dollar" ;
lin Trinidad_and_Tobago_dollar_CName = mkCName "Trinidaddollar" ;
lin Yemen_CName = mkCName "Jemen" ;
lin United_Arab_Emirates_CName = mkCName "Förenade Arabemiraten" ;
lin Brasília_CName = mkCName "Brasília" ;
lin Cuban_peso_CName = mkCName "Kubansk peso" ;
lin Tuvaluan_dollar_CName = mkCName "Tuvaluansk dollar" ;
lin Bulgarian_lev_CName = mkCName "Lev" ;
lin Tajikistani_somoni_CName = mkCName "Tadzjikistansk somoni" ;
lin Malaysian_ringgit_CName = mkCName "Malaysisk ringgit" ;
lin Baghdad_CName = mkCName "Bagdad" ;
lin Sofia_CName = mkCName "Sofia" ;
lin Bogotá_CName = mkCName "Bogotá" ;
lin Asmara_CName = mkCName "Asmara" ;
lin Brunei_CName = mkCName "Brunei" ;
lin Juba_CName = mkCName "Juba" ;
lin Tokyo_CName = mkCName "Tokyo prefektur" ;
lin Azerbaijan_CName = mkCName "Azerbajdzjan" ;
lin Beirut_CName = mkCName "Beirut" ;
lin Dili_CName = mkCName "Dili" ;
lin Georgian_lari_CName = mkCName "Georgiska lari" ;
lin Budapest_CName = mkCName "Budapest" ;
lin Reykjavík_CName = mkCName "Reykjavík" ;
lin Vientiane_CName = mkCName "Vientiane" ;
lin gourde_CName = mkCName "Gourde" ;
lin Romanian_leu_CName = mkCName "Rumänsk leu" ;
lin Nepalese_rupee_CName = mkCName "Nepalesisk rupee" ;
lin Tanzania_CName = mkCName "Tanzania" ;
lin Bahrain_CName = mkCName "Bahrain" ;
lin Trinidad_and_Tobago_CName = mkCName "Trinidad och Tobago" ;
lin Mauritius_CName = mkCName "Mauritius" ;
lin Cyprus_CName = mkCName "Cypern" ;
lin birr_CName = mkCName "Etiopisk Birr" ;
lin Chile_CName = mkCName "Chile" ;
lin Managua_CName = mkCName "Managua" ;
lin San_José_CName = mkCName "San José" ;
lin Colombian_cincuenta_centavos_CName = mkCName "Colombiansk peso" ;
lin Caracas_CName = mkCName "Caracas" ;
lin Vanuatu_vatus_CName = mkCName "Vanuatisk vatu" ;
lin Danish_krone_CName = mkCName "dansk krona" ;
lin United_Kingdom_CName = mkCName "Storbritannien" ;
lin Berlin_CName = mkCName "Berlin" ;
lin Eswatini_CName = mkCName "Swaziland" ;
lin Riga_CName = mkCName "Riga" ;
lin Ugandan_shilling_CName = mkCName "Ugandisk shilling" ;
lin The_Bahamas_CName = mkCName "Bahamas" ;
lin Uruguay_CName = mkCName "Uruguay" ;
lin United_States_dollar_CName = mkCName "amerikansk dollar" ;
lin Libya_CName = mkCName "Libyen" ;
lin Nauru_CName = mkCName "Nauru" ;
lin Latvia_CName = mkCName "Lettland" ;
lin South_Korea_CName = mkCName "Sydkorea" ;
lin Egypt_CName = mkCName "Egypten" ;
lin Kazakhstan_CName = mkCName "Kazakstan" ;
lin Vanuatu_CName = mkCName "Vanuatu" ;
lin Guatemala_CName = mkCName "Guatemala" ;
lin Dominican_peso_CName = mkCName "Dominikansk peso" ;
lin Harare_CName = mkCName "Harare" ;
lin Nepal_CName = mkCName "Nepal" ;
lin Tallinn_CName = mkCName "Tallinn" ;
lin Lebanon_CName = mkCName "Libanon" ;
lin Botswana_pula_CName = mkCName "Pula" ;
lin Kyiv_CName = mkCName "Kiev" ;
lin Bridgetown_CName = mkCName "Bridgetown" ;
lin Manila_CName = mkCName "Manila" ;
lin Colombia_CName = mkCName "Colombia" ;
lin Eritrea_CName = mkCName "Eritrea" ;
lin Croatian_kuna_CName = mkCName "Kroatisk kuna" ;
lin Manama_CName = mkCName "Manama" ;
lin Sierra_Leonean_leone_CName = mkCName "Sierraleonsk Leone" ;
lin Ngerulmud_CName = mkCName "Ngerulmud" ;
lin 'Nur-Sultan_CName' = mkCName "Nur-Sultan" ;
lin Azerbaijani_manat_CName = mkCName "Azerbajdzjansk manat" ;
lin Norwegian_krone_CName = mkCName "norsk krona" ;
lin Rome_CName = mkCName "Rom" ;
lin Islamabad_CName = mkCName "Islamabad" ;
lin Guyanese_dollar_CName = mkCName "Guyansk dollar" ;
lin Rwanda_CName = mkCName "Rwanda" ;
lin renminbi_CName = mkCName "Renminbi" ;
lin Croatia_CName = mkCName "Kroatien" ;
lin Quito_CName = mkCName "Quito" ;
lin North_Korean_won_CName = mkCName "Nordkoreansk won" ;
lin Port_Moresby_CName = mkCName "Port Moresby" ;
lin Republic_of_the_Congo_CName = mkCName "Kongo-Brazzaville" ;
lin Monrovia_CName = mkCName "Monrovia" ;
lin Andorra_la_Vella_CName = mkCName "Andorra la Vella" ;
lin Uruguayan_peso_CName = mkCName "Uruguayansk peso" ;
lin Gitega_CName = mkCName "Gitega" ;
lin Port_of_Spain_CName = mkCName "Port of Spain" ;
lin Panama_CName = mkCName "Panama" ;
lin Myanmar_CName = mkCName "Myanmar" ;
lin Belarus_CName = mkCName "Belarus" ;
lin Burkina_Faso_CName = mkCName "Burkina Faso" ;
lin Georgia_CName = mkCName "Georgien" ;
lin Belmopan_CName = mkCName "Belmopan" ;
lin Paramaribo_CName = mkCName "Paramaribo" ;
lin Muscat_CName = mkCName "Muskat" ;
lin Chilean_peso_CName = mkCName "Chilensk peso" ;
lin Kiribati_CName = mkCName "Kiribati" ;
lin Tanzanian_shilling_CName = mkCName "Tanzanisk shilling" ;
lin Russia_CName = mkCName "Ryssland" ;
lin Saint_Lucia_CName = mkCName "Saint Lucia" ;
lin Kathmandu_CName = mkCName "Katmandu" ;
lin Guyana_CName = mkCName "Guyana" ;
lin Kuwaiti_dinar_CName = mkCName "Kuwaitisk dinar" ;
lin South_Korean_won_CName = mkCName "Sydkoreansk won" ;
lin Iran_CName = mkCName "Iran" ;
lin Argentina_CName = mkCName "Argentina" ;
lin South_Africa_CName = mkCName "Sydafrika" ;
lin Tunis_CName = mkCName "Tunis" ;
lin Czech_koruna_CName = mkCName "tjeckisk krona" ;
lin Bamako_CName = mkCName "Bamako" ;
lin 'Tongan_paʻanga_CName' = mkCName "Tongansk pa'anga" ;
lin Saint_John's_CName = mkCName "Saint John's" ;
lin Paraguay_CName = mkCName "Paraguay" ;
lin Cameroon_CName = mkCName "Kamerun" ;
lin Mauritian_rupee_CName = mkCName "Mauritisk rupie" ;
lin Solomon_Islands_dollar_CName = mkCName "Salomondollar" ;
lin Lima_CName = mkCName "Lima" ;
lin Saint_Vincent_and_the_Grenadines_CName = mkCName "Saint Vincent och Grenadinerna" ;
lin Seychellois_rupee_CName = mkCName "Seychellisk rupee" ;
lin Belgrade_CName = mkCName "Belgrad" ;
lin Tuvalu_CName = mkCName "Tuvalu" ;
lin Belize_CName = mkCName "Belize" ;
lin Kinshasa_CName = mkCName "Kinshasa" ;
lin San_Marino_CName = mkCName "San Marino" ;
lin Peru_CName = mkCName "Peru" ;
lin El_Salvador_CName = mkCName "El Salvador" ;
lin Equatorial_Guinea_CName = mkCName "Ekvatorialguinea" ;
lin Bissau_CName = mkCName "Bissau" ;
lin Ouagadougou_CName = mkCName "Ouagadougou" ;
lin Germany_CName = mkCName "Tyskland" ;
lin Uzbekistan_CName = mkCName "Uzbekistan" ;
lin dalasi_CName = mkCName "Dalasi" ;
lin Gaborone_CName = mkCName "Gaborone" ;
lin forint_CName = mkCName "Forint" ;
lin Kyrgyzstan_CName = mkCName "Kirgizistan" ;
lin kwanza_CName = mkCName "Kwanza" ;
lin Banjul_CName = mkCName "Banjul" ;
lin Czech_Republic_CName = mkCName "Tjeckien" ;
lin Windhoek_CName = mkCName "Windhoek" ;
lin Liechtenstein_CName = mkCName "Liechtenstein" ;
lin riel_CName = mkCName "Kambodjansk riel" ;
lin Moldovan_leu_CName = mkCName "Moldavisk leu" ;
lin Honiara_CName = mkCName "Honiara" ;
lin Bhutan_CName = mkCName "Bhutan" ;
lin Kingston_CName = mkCName "Kingston" ;
lin Kampala_CName = mkCName "Kampala" ;
lin Kingdom_of_the_Netherlands_CName = mkCName "Konungariket Nederländerna" ;
lin Nicaraguan_córdoba_CName = mkCName "Nicaraguansk córdoba" ;
lin Malawi_CName = mkCName "Malawi" ;
lin new_shekel_CName = mkCName "Shekel" ;
lin Panamanian_balboa_CName = mkCName "Panamansk balboa" ;
lin Singapore_dollar_CName = mkCName "Singaporiansk dollar" ;
lin lilangeni_CName = mkCName "Swazisk lilangeni" ;
lin Mexico_City_CName = mkCName "Mexico City" ;
lin Dushanbe_CName = mkCName "Dusjanbe" ;
lin Zambian_kwacha_CName = mkCName "Zambisk kwacha" ;
lin Estonia_CName = mkCName "Estland" ;
lin Gabon_CName = mkCName "Gabon" ;
lin Podgorica_CName = mkCName "Podgorica" ;
lin Armenia_CName = mkCName "Armenien" ;
lin Kuala_Lumpur_CName = mkCName "Kuala Lumpur" ;
lin Namibia_CName = mkCName "Namibia" ;
lin Guatemala_City_CName = mkCName "Guatemala City" ;
lin 'Samoan_tālā_CName' = mkCName "Samoansk Tala" ;
lin Pyongyang_CName = mkCName "Pyongyang" ;
lin Barbados_CName = mkCName "Barbados" ;
lin Algerian_dinar_CName = mkCName "Algerisk dinar" ;
lin Malabo_CName = mkCName "Malabo" ;
lin Federated_States_of_Micronesia_CName = mkCName "Mikronesiska federationen" ;
lin Iraqi_dinar_CName = mkCName "Irakisk dinar" ;
lin 'St._George\'s_CName' = mkCName "Saint George's" ;
lin São_Tomé_and_Príncipe_dobra_CName = mkCName "Saotomeansk Dobra" ;
lin Norway_CName = mkCName "Norge" ;
lin Colombo_CName = mkCName "Colombo" ;
lin Hanoi_CName = mkCName "Hanoi" ;
lin Kigali_CName = mkCName "Kigali" ;
lin Malé_CName = mkCName "Malé" ;
lin Albania_CName = mkCName "Albanien" ;
lin Slovakia_CName = mkCName "Slovakien" ;
lin Suriname_CName = mkCName "Surinam" ;
lin Niamey_CName = mkCName "Niamey" ;
lin Sri_Lanka_CName = mkCName "Sri Lanka" ;
lin Khartoum_CName = mkCName "Khartoum" ;
lin Surinamese_dollar_CName = mkCName "Surinamesisk dollar" ;
lin Bandar_Seri_Begawan_CName = mkCName "Bandar Seri Begawan" ;
lin Tashkent_CName = mkCName "Tasjkent" ;
lin Bolivia_CName = mkCName "Bolivia" ;
lin Central_African_Republic_CName = mkCName "Centralafrikanska republiken" ;
lin Ulaanbaatar_CName = mkCName "Ulan Bator" ;
lin Yerevan_CName = mkCName "Jerevan" ;
lin Zambia_CName = mkCName "Zambia" ;
lin Dhaka_CName = mkCName "Dhaka" ;
lin Mauritanian_ouguiya_CName = mkCName "Mauretansk ouguiya" ;
lin Bern_CName = mkCName "Bern" ;
lin Warsaw_CName = mkCName "Warszawa" ;
lin Maputo_CName = mkCName "Maputo" ;
lin Malta_CName = mkCName "Malta" ;
lin Poland_CName = mkCName "Polen" ;
lin Sweden_CName = mkCName "Sverige" ;
lin Brazilian_real_CName = mkCName "Real" ;
lin Solomon_Islands_CName = mkCName "Salomonöarna" ;
lin Helsinki_CName = mkCName "Helsingfors" ;
lin Santo_Domingo_CName = mkCName "Santo Domingo" ;
lin 'Chișinău_CName' = mkCName "Chișinău" ;
lin Vienna_CName = mkCName "Wien" ;
lin Haiti_CName = mkCName "Haiti" ;
lin Vaduz_CName = mkCName "Vaduz" ;
lin Mogadishu_CName = mkCName "Mogadishu" ;
lin Pakistan_CName = mkCName "Pakistan" ;
lin Bosnia_and_Herzegovina_CName = mkCName "Bosnien och Hercegovina" ;
lin New_Delhi_CName = mkCName "New Delhi" ;
lin Bishkek_CName = mkCName "Bisjkek" ;
lin Skopje_CName = mkCName "Skopje" ;
lin Jakarta_CName = mkCName "Jakarta" ;
lin Guinea_CName = mkCName "Guinea" ;
lin Botswana_CName = mkCName "Botswana" ;
lin Cambodia_CName = mkCName "Kambodja" ;
lin The_Gambia_CName = mkCName "Gambia" ;
lin Abu_Dhabi_CName = mkCName "Abu Dhabi" ;
lin Libreville_CName = mkCName "Libreville" ;
lin Syrian_pound_CName = mkCName "Syriskt pund" ;
lin Tajikistan_CName = mkCName "Tadzjikistan" ;
lin Kazakhstani_tenge_CName = mkCName "Kazakstansk Tenge" ;
lin San_Salvador_CName = mkCName "San Salvador" ;
lin Bangladeshi_taka_CName = mkCName "Taka" ;
lin Malawian_kwacha_CName = mkCName "Malawisk kwacha" ;
lin Honduras_CName = mkCName "Honduras" ;
lin Saint_Kitts_and_Nevis_CName = mkCName "Saint Kitts och Nevis" ;
lin Tehran_CName = mkCName "Teheran" ;
lin Benin_CName = mkCName "Benin" ;
lin City_of_Brussels_CName = mkCName "Bryssel" ;
lin kina_CName = mkCName "Papuansk Kina" ;
lin Democratic_Republic_of_the_Congo_CName = mkCName "Kongo-Kinshasa" ;
lin Jamaica_CName = mkCName "Jamaica" ;
lin Guinean_franc_CName = mkCName "Guinesisk franc" ;
lin euro_CName = mkCName "euro" ;
lin Ashgabat_CName = mkCName "Asjchabad" ;
lin Liberia_CName = mkCName "Liberia" ;
lin Belize_dollar_CName = mkCName "Belizisk dollar" ;
lin Tbilisi_CName = mkCName "Tbilisi" ;
lin Sri_Lankan_rupee_CName = mkCName "Lankesisk rupie" ;
lin Antigua_and_Barbuda_CName = mkCName "Antigua och Barbuda" ;
lin Panama_City_CName = mkCName "Panama City" ;
lin South_Sudanese_pound_CName = mkCName "Sydsudanesiskt pund" ;
lin Uzbekistani_som_CName = mkCName "Uzbekistansk som" ;
lin Asunción_CName = mkCName "Asunción" ;
lin Rwandan_franc_CName = mkCName "Rwandisk franc" ;
lin Vietnamese_dong_CName = mkCName "Vietnamesisk dong" ;
lin Namibian_dollar_CName = mkCName "Namibisk dollar" ;
lin Djibouti_CName = mkCName "Djibouti" ;
lin Somali_shilling_CName = mkCName "Somalisk shilling" ;
lin Funafuti_CName = mkCName "Funafuti" ;
lin Burundian_franc_CName = mkCName "Burundisk franc" ;
lin Canberra_CName = mkCName "Canberra" ;
lin Belarusian_ruble_CName = mkCName "Belarusisk rubel" ;
lin Dominica_CName = mkCName "Dominica" ;
lin Greece_CName = mkCName "Grekland" ;
lin Santiago_CName = mkCName "Santiago de Chile" ;
lin Palikir_CName = mkCName "Palikir" ;
lin Moldova_CName = mkCName "Moldavien" ;
lin Ecuador_CName = mkCName "Ecuador" ;
lin Grenada_CName = mkCName "Grenada" ;
lin Kyrgyzstani_som_CName = mkCName "Kirgizistansk som" ;
lin Mauritania_CName = mkCName "Mauretanien" ;
lin Japan_CName = mkCName "Japan" ;
lin Mexican_peso_CName = mkCName "Mexikansk peso" ;
lin New_Taiwan_dollar_CName = mkCName "Taiwanesisk dollar" ;
lin Doha_CName = mkCName "Doha" ;
lin Bangladesh_CName = mkCName "Bangladesh" ;
lin Cape_Verdean_escudo_CName = mkCName "Kapverdisk escudo" ;
lin London_CName = mkCName "London" ;
lin Australian_dollar_CName = mkCName "Australisk dollar" ;
lin Moroccan_dirham_CName = mkCName "Marockansk dirham" ;
lin Monaco_City_CName = mkCName "Monaco City" ;
lin Brunei_dollar_CName = mkCName "Bruneisk dollar" ;
lin Castries_CName = mkCName "Castries" ;
}
