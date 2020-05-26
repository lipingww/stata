cd "/Users/bryan29/Downloads"
cd "/Users/lipingwang/Desktop"
cd "/Users/tm1300/Desktop/peace agreements"

/* ------------------------- Data cleaning for 1990 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("1990") cellrange(A2:AO46) firstrow clear
 
drop Countries PeaceProcess
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename AgreementNamePAXPeaceAgree AgreementName
rename DatePAXPeaceAgreementDatab AgreementDate
rename StagePAXPeaceAgreementData StageString
drop PartiesPAXPeaceAgreementDa

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdPartiesPAXPeaceAgreem 
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop Evidenceofpreviousagreements
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr1990

* ------------------------- Data cleaning for 1995 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("1995") cellrange(A2:AO67) firstrow clear

drop Countries PeaceProcess
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename AgreementNamePAXPeaceAgree AgreementName
rename DatePAXPeaceAgreementDatab AgreementDate
rename StagePAXPeaceAgreementData StageString
drop PartiesPAXPeaceAgreementDa

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdPartiesPAXPeaceAgreem 
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop Evidenceofpreviousagreements
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr1995

* ------------------------- Data cleaning for 2000 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("2000") cellrange(A2:AO61) firstrow clear

drop Countries PeaceProcess
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename AgreementNamePAXPeaceAgree AgreementName
rename DatePAXPeaceAgreementDatab AgreementDate
rename StagePAXPeaceAgreementData StageString
drop PartiesPAXPeaceAgreementDa

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdPartiesPAXPeaceAgreem 
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop Evidenceofpreviousagreements
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr2000

* ------------------------- Data cleaning for 2005 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("2005") cellrange(A2:AO32) firstrow clear

drop Countries PeaceProcess
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename AgreementNamePAXPeaceAgree AgreementName
rename DatePAXPeaceAgreementDatab AgreementDate
rename StagePAXPeaceAgreementData StageString
drop PartiesPAXPeaceAgreementDa

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdPartiesPAXPeaceAgreem 
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop Evidenceofpreviousagreements
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr2005

* ------------------------- Data cleaning for 2010 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("2010") cellrange(A2:AO35) firstrow clear

drop Country PeaceProcess
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename DatePAXPeaceAgreementDatab AgreementDate
rename StagePAXPeaceAgreementData StageString
drop PartiesPAXPeaceAgreementDa

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdPartiesPAXPeaceAgreem 
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop Evidenceofpreviousagreements
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr2010

* ------------------------- Data cleaning for 2013 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("2013") cellrange(A2:AO44) firstrow clear

drop A B
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename Date AgreementDate
rename Stage StageString
drop Parties

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdParties
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop PreviousAgreementsreachedasp
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr2013

* ------------------------- Data cleaning for 2018 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("2018") cellrange(A2:AO64) firstrow clear

drop Countries PeaceProcess
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename Date AgreementDate
rename Stage StageString
drop Parties

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdParty
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop PreviousAgreementsreachedasp
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr2018

* ------------------------- Data cleaning for 2019 --------------------------- *
import excel "Peace Agreements.xlsx", sheet("2019") cellrange(A2:AO19) firstrow clear

drop A B
rename C ConflictCountry 
rename D Region
drop EvidenceConflictstartdate

* Conflict Duration
rename ConflictDurationuntilagreemen ConflictDuration
label variable ConflictDuration "Conflict Duration until agreement reached"
replace ConflictDuration = . if ConflictDuration == 0
replace ConflictDuration = 0 if ConflictDuration == 1
replace ConflictDuration = 1 if G == 1
replace ConflictDuration = 2 if H == 1
replace ConflictDuration = 3 if I == 1
label define ConflictDuration 0 "0-5 yrs" 1 "6-10 yrs" 2 "11-15 yrs" 3 "16+ yrs"
label values ConflictDuration ConflictDuration
drop G H I

rename Date AgreementDate
rename Stage StageString
drop Parties

* Women as Parties
rename CodingWomenasPartiesNo0Y WomenAsParties
label variable WomenAsParties "Evidence of Women as Parties? (Yes=1)"
drop EvidenceofWomenasPartiesY
* Member States as Third Parties
drop ThirdParties
rename CodingMemberStatesno0yes MemberStatesAsThirdParties
label variable MemberStatesAsThirdParties "Evidence of Member States as Third Parties? (Yes=1)"
drop EvidenceofMemberStatesorreg
* UN Bodies as Third Parties
rename CodingUNno0yes1 UNBodiesAsThirdParties
label variable UNBodiesAsThirdParties "Evidence of UN Bodies as Third Parties? (Yes=1)"
drop EvidenceofUNbodiesasThirdP
* CSOs as Third Parties
rename CodingCSOsno0yes1 CSOsAsThirdParties
label variable CSOsAsThirdParties "Evidence of CSO as Third Parties? (Yes=1)"
drop EvidenceofCSOsasThirdPartie
* Women as Third Parties
rename CodingWomenasThirdPartiesN WomenAsThirdParties
label variable WomenAsThirdParties "Evidence of Women as Third Parties? (Yes=1)"
drop EvidenceofWomenasThirdParti
* Previous Agreements 
rename CodingPreviousAgreementsaspa PreviousAgreements 
label variable PreviousAgreements "Evidence of previous agreements as part of same peace process? (Yes=1)"
drop PreviousAgreementsreachedasp
* Gender Provisions
rename GenderProvisionsNo0Yes1 GenderProvisions
* UN Peace Keeping
rename CodingUNPeacekeepingNo0Ye UNPeaceKeeping
label variable UNPeaceKeeping "Evidence of UN peacekeeping taking place when agreement reached? (Yes=1)"
drop EvidenceofUNpeacekeepingtaki
drop Evidenceofmutitrackpeacepro Codingmultitrackprocessesno AF Codingwomeninmultitrackproc
* Rename Other Control Variables
rename AH WPS
label variable WPS "WPS Index Value"
rename AI GDPperCap 
label variable GDPperCap "GDP per capita, 2011$"
rename AJ GDP 
label variable GDP "GDP, 2011$"
rename AK MilitaryExp
label variable MilitaryExp "Military expenditure (% of GDP)"
rename AL WBL 
label variable WBL "Women, Business and the Law (WBL) Index" 
rename AM FemaleParliamentRep
label variable FemaleParliamentRep "Proportion of seats held by women in national parliaments (%) (both chambers)"
rename AN FemaleEmployment 
label variable FemaleEmployment "Female employment rate ( 25+)"
rename AO SVAC
label variable SVAC "Sexual Violence in Armed Conflict"

save yr2019


* ------------------------- Append All Years of Data --------------------------- *
use "yr1990.dta"
append using yr1995 yr2000 yr2005 yr2010 yr2013 yr2018 yr2019

* Convert Stage and Region variables to Numeric
encode StageString, generate(Stage)
order Stage, after(AgreementDate)
drop StageString

encode Region, generate(region)
order region, after(ConflictCountry)
drop Region
rename region Region

* Add labels to SVAC
label define SVAC 0 "No Reported Violence" 1 "Less Violence" 2 "Medium Violence" 3 "Massive Violence"
label values SVAC SVAC

* Create Year Variable
generate Year=year(AgreementDate) 
order Year, after(AgreementDate)
save PeaceAgreements



*Creating Ceasefire Variable
gen ceasefire=.
replace ceasefire=1 if Stage==1
replace ceasefire=0 if Stage!=1

**Conflict Duration dummies
tab ConflictDuration, gen (ConflictDuration)
ren ConflictDuration4 longestconflictduration
ren ConflictDuration1 shortestconflictduration


Trying different models


* Exluded WPS because WBL loses significance once 
asdoc logit GenderProvisions WomenAsParties UNPeaceKeeping UNBodiesAsThirdParties PreviousAgreements CSOsAsThirdParties  MilitaryExp GDPperCap FemaleParliamentRep FemaleEmployment WBL  MemberStatesAsThirdParties SVAC  shortestconflictduration, replace
mfx
asdoc, text(Pr=`e(Xmfx_y)') append
margins, dydx(*) post
outreg2 using peace_agreements.doc, append


------WPS index-- after excluding WBL, FEMALE EMPLOYMENT, GDPperCap FemaleParliamentRep

logit GenderProvisions WomenAsParties UNPeaceKeeping UNBodiesAsThirdParties PreviousAgreements CSOsAsThirdParties  MilitaryExp WPS  MemberStatesAsThirdParties SVAC  shortestconflictduration 

-----Trying to increase number of observatuons from 171-239! 

logit GenderProvisions WomenAsParties UNPeaceKeeping UNBodiesAsThirdParties PreviousAgreements CSOsAsThirdParties GDPperCap FemaleParliamentRep WBL  MemberStatesAsThirdParties Africa_exMENA 


***----dropping some variables and adding new ones.--- UN lost its significance-- highest R2
****FINAL LOGIT*////////////--265!

asdoc logit GenderProvisions WomenAsParties UNPeaceKeeping UNBodiesAsThirdParties PreviousAgreements CSOsAsThirdParties MemberStatesAsThirdParties FemaleParliamentRep WBL  ceasefire, replace
mfx
asdoc, text(Pr=`e(Xmfx_y)') append
margins, dydx(*) post
outreg2 using peace_agreements.doc, replace

*****Second Logit (include WPS but exclude WBL and Parliament)*****
asdoc logit GenderProvisions WomenAsParties UNPeaceKeeping UNBodiesAsThirdParties PreviousAgreements CSOsAsThirdParties MemberStatesAsThirdParties FemaleParliamentRep WBL  ceasefire ECA EAsia Americas MENA Africa_exMENA, save(logitreg with wps)
mfx
asdoc, text(Pr=`e(Xmfx_y)') append, save(logitreg with wps)
margins, dydx(*) post
outreg2 using peace.doc, replace

****Robustness analysis
//checkrob #corevars #testingvars [options] [filename.txt] [noisily] : estimation command
//  checkrob 2 2 output.txt noisily: reg wage education experience age children if children>4, cluster(ea)

checkrob 5 4 results3.txt noisily: logit GenderProvisions WomenAsParties UNBodiesAsThirdParties CSOsAsThirdParties UNPeaceKeeping MemberStatesAsThirdParties  WBL WPS Africa_exMENA ceasefire
 


*The margins command estimates the marginal effects for each observation and reports the average marginal effect. As you can see, these numbers match exactly the marginal effects we had calculated earlier by hand for the probit and logit models. The main advantage is that margins also provides standard errors and confidence intervals, so it allows to test if the average marginal effect is statistically significant. 


/*Results:
significant variables: womenasparties, unpeacekeeping,  gdp per. capita,femaleparliament,  memberstatesasthirdparties, shortconflictduration

--Ceasefire describes failure perfectly

---Military expenditure--also checked as a dummy <3%; female employment; and SVAC didn’t give any significance in every regression I tried---both as a dummy, and as increasing violence.

---Shorter conflict duration gives you 10 percentage points lower likelihood of having gender provisions

----Women as parties-28 percentage points increase
----Un peacekeeping-27  percentage point increase
----Femaleparliament-8 percentage point increase
----Member states as third parties-13% increase
----Interesting-- WBL-8 PERCENTAGE POINTS DECLINE.

STAGES:
1)-Ceasefire- Stage1 != 0 predicts failure perfectly
2) iMP- NOT SIGNIFICANT ( 0.656 )
3) oTHER- Stage3 omitted because of collinearity
4) Pre-NOT significant 
5) Renewal- Stage5 != 0 predicts failure perfectly
6) SubComp- NOT significant
7) SubPar- NOT significant

* Descriptive Statistics

