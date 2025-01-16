Profile: EEHealthCertificateOccupational
Parent: EEHealthCertificate
Id: ee-health-certificate-occupational
Title: "Töötervishoiu tervisetõend"
Description: "Töötervishoiu tervisetõendi baasprofiil"
* ^experimental = true
* section contains riskFactors 0..* and employer 0..1 and healthDeclaration 0..1 and additionalConditions 0..* and employerSuggestions 0..1 and employeeSuggestions 0..1
* section[riskFactors] ^short = "Tööst olenevad ohutegurid"
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
* section[additionalConditions] ^short = "Püsiva töövõime säilitamiseks vajalikud lisatingimused"
* section[additionalConditions].code = EEHealthCertificateSection#work-additional-conditions
* section[additionalConditions].entry 1..1
* section[additionalConditions].entry only Reference(Observation)
* section[additionalConditions].entry ^short = "Viide contained Observation ressursile lisatingimusega"
* section[additionalConditions].text 1..1
* section[additionalConditions].text ^short = "Vabatekst"
* section[additionalConditions].text.status = #additional
* section[employerSuggestions] ^short = "Ettepanekud tööandjale"
* section[employerSuggestions].code = EEHealthCertificateSection#employer-suggestions
* section[employerSuggestions].text 1..1
* section[employerSuggestions].text ^short = "Vabatekst"
* section[employerSuggestions].text.status = #additional
* section[employeeSuggestions] ^short = "Ettepanekud töötajale"
* section[employeeSuggestions].code = EEHealthCertificateSection#employee-suggestions
* section[employeeSuggestions].text 1..1
* section[employeeSuggestions].text ^short = "Vabatekst"
* section[employeeSuggestions].text.status = #additional
* contained contains riskFactor 0..* and employment 0..1 and additionalCondition 0..*
* contained[riskFactor] only HcertObservation
* contained[riskFactor] ^short = "Tööst olenevad ohutegurid"
* contained[riskFactor].code = http://snomed.info/sct#80943009 "Risk factor"
* contained[riskFactor].value[x] 1..1
* contained[riskFactor].value[x] only CodeableConcept
* contained[riskFactor].value[x] from https://fhir.ee/ValueSet/toost-olenevad-ohutegurid (required)
* contained[employment] only HcertObservation
* contained[employment] ^short = "Töösuhe"
* contained[employment].code = http://snomed.info/sct#364703007 "Employment detail"
* contained[additionalCondition] only HcertObservation
* contained[additionalCondition] ^short = "Püsiva töövõime säilitamiseks vajalikud lisatingimused"
* contained[additionalCondition].code = http://snomed.info/sct#225891002 "Fit for work with certain limitations"
* contained[additionalCondition].value[x] 1..1
* contained[additionalCondition].value[x] only CodeableConcept
* contained[additionalCondition].value[x] from EEHealthCertificateOccupationalAdditionalConditionVS (required)

Profile: EEHealthCertificateOccupationalEmployer
Parent: EEHealthCertificateOccupational
Id: ee-health-certificate-occupational-employer
Title: "Töötervishoiu tervisetõend tööandjale"
Description: "Töötervishoiu tervisetõendi profiil tööandjale kuvamiseks"
* ^experimental = true
* extension[confidentiality] ..0
* section[healthDeclaration] ..0
* section[employeeSuggestions] ..0
