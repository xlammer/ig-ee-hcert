Profile: EEHealthCertificateOccupational
Parent: EEHealthCertificate
Id: ee-health-certificate-occupational
Title: "Töötervishoiu tervisetõend"
Description: "Töötervishoiu tervisetõendi baasprofiil"
* ^experimental = true
* section contains riskFactors 0..* and employer 0..1 and healthDeclaration 0..1 and additionalConditions 0..* and employerSuggestions 0..1 and employeeSuggestions 0..1
* section[riskFactors] ^short = "Ohutegurid"
* section[riskFactors].code = EEHealthCertificateSection#risk-factors
* section[riskFactors].entry 1..1
* section[riskFactors].entry only Reference(Observation)
* section[riskFactors].entry ^short = "Viide contained Observation ressursile ohuteguriga"
* section[employer] 1..1
* section[employer] ^short = "Tööandja"
* section[employer].code = EEHealthCertificateSection#employer
* section[employer].entry 1..1
* section[employer].entry only Reference(Observation)
* section[employer].entry ^short = "Viide contained Observation ressursile töösuhega"
* section[employer].text 1..1
* section[employer].text ^short = "Tööandja asutuse registri number"
* section[employer].text.status = #additional
* section[healthDeclaration] 0..1 MS
* section[healthDeclaration] ^short = "Tervisedeklaratsioon"
* section[healthDeclaration].code = EEHealthCertificateSection#health-declaration
* section[healthDeclaration].entry 1..1
* section[healthDeclaration].entry only Reference(QuestionnaireResponse)
* section[healthDeclaration].entry ^short = "Viide QuestionnaireResponse ressursile"
* section[healthDeclaration].text 1..1
* section[healthDeclaration].text ^short = "Vabatekst"
* section[healthDeclaration].text.status = #additional
* section[additionalConditions] ^short = "Lisatingimused"
* section[additionalConditions].code = EEHealthCertificateSection#additional-conditions
* section[additionalConditions].entry 1..1
* section[additionalConditions].entry only Reference(Observation)
* section[additionalConditions].entry ^short = "Viide contained Observation ressursile lisatingimusega"
* section[additionalConditions].text 1..1
* section[additionalConditions].text ^short = "Vabatekst"
* section[additionalConditions].text.status = #additional
* section[employerSuggestions] ^short = "Ettepanekud tööandjale"
* section[employerSuggestions].code = EEHealthCertificateSection#employer-suggestions
* section[employerSuggestions].entry 1..1
* section[employerSuggestions].text 1..1
* section[employerSuggestions].text ^short = "Vabatekst"
* section[employerSuggestions].text.status = #additional
* section[employeeSuggestions] ^short = "Ettepanekud töötajale"
* section[employeeSuggestions].code = EEHealthCertificateSection#employee-suggestions
* section[employeeSuggestions].entry 1..1
* section[employeeSuggestions].text 1..1
* section[employeeSuggestions].text ^short = "Vabatekst"
* section[employeeSuggestions].text.status = #additional
* contained contains riskFactor 0..* and employment 0..1 and medicalRestriction 0..* and additionalCondition 0..*
* contained[riskFactor] only HcertObservation
* contained[riskFactor] ^short = "Ohutegur"
* contained[riskFactor].code = http://snomed.info/sct#80943009 "Risk factor"
* contained[employment] only HcertObservation
* contained[employment] ^short = "Töösuhe"
* contained[employment].code = http://snomed.info/sct#364703007 "Employment detail"
* contained[medicalRestriction] only HcertObservation
* contained[medicalRestriction] ^short = "Meditsiinilised piirang"
* contained[medicalRestriction].code = http://snomed.info/sct#225891002 "Fit for work with restrictions"
* contained[additionalCondition] only HcertObservation
* contained[additionalCondition] ^short = "Lisatingimus"
* contained[additionalCondition].code = http://snomed.info/sct#260905004 "Condition"

Profile: EEHealthCertificateOccupationalEmployer
Parent: EEHealthCertificateOccupational
Id: ee-health-certificate-occupational-employer
Title: "Töötervishoiu tervisetõend tööandjale"
Description: "Töötervishoiu tervisetõendi profiil tööandjale kuvamiseks"
* ^experimental = true
* extension[confidentiality] ..0
* section[healthDeclaration] ..0
* section[employeeSuggestions] ..0
