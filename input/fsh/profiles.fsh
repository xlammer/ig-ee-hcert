Extension: EEHealthCertificateConfidentialityExt
Id: ee-health-certificate-confidentiality
Title: "Tervisetõendi konfidentsiaalsus"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Composition"
* . ^short = "Tervisetõendi konfidentsiaalsus"
* value[x] only Coding
* value[x] from EEHealthCertificateConfidentialityVS
* value[x].code 1..1

Profile: EEHealthCertificate
Parent: Composition
Id: ee-health-certificate
Title: "Tervisetõend"
Description: "Tervisetõend baasprofiil"
* ^experimental = true
* url ..0
* identifier 1..1
* identifier ^short = "Dokumendi number"
* status ^short = "Tõendi staatus"
* status from EEHealthCertificateStatusVS (required)
* type ^short = "Composition ressursi tüüp. Alati 'Medical Certificate'"
* type = http://snomed.info/sct#772786005 "Medical Certificate"
* category 1..1
* category ^short = "Tervisetõendi kasutusala"
* category from EEHealthCertificateUsageAreaVS (required)
* subject only Reference(Patient)
* subject 1..1
* subject ^short = "MPI Patient reference"
* encounter ..0
* date ^short = "Dokumendi väljastamise aeg"
* date 1..1
* useContext ..0
* author 1..1
* author only Reference(PractitionerRole)
* author ^short = "Viide contained.PractitionerRole ressursile"
* name ..0
* title ^short = "Tõendi nimetus. Sama mis category"
* note ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event.period ^short = "Dokumendi kehtivus - algus- ja lõpuaeg"
* event.period 1..1
* event.detail ..0
* extension contains EEHealthCertificateConfidentialityExt named confidentiality 0..1 MS
// sections
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = #code
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the section.code value"
* section contains decision 0..1 and medicalRestriction 0..* and shoretenedReason 0..1 and rejectReason 0..1 and changeReason 0..1 and cancelReason 0..1 and suspendReason 0..1
* section[decision] ^short = "Tervisetõendi otsus"
* section[decision].code = EEHealthCertificateSection#decision
* section[decision].entry 1..1
* section[decision].entry only Reference(Observation)
* section[decision].entry ^short = "Viide contained Observation ressursile otsuse koodiga"
* section[medicalRestriction] ^short = "Meditsiinilised piirangud"
* section[medicalRestriction].code = EEHealthCertificateSection#medical-restrictions
* section[medicalRestriction].entry 1..1
* section[medicalRestriction].entry only Reference(Observation)
* section[medicalRestriction].entry ^short = "Viide contained Observation ressursile (Meditsiiniline piirang)"
* section[shoretenedReason] ^short = "Lühema tervisekontrolli aja põhjus"
* section[shoretenedReason].code = EEHealthCertificateSection#shortened-reason
* section[shoretenedReason].text 1..1
* section[shoretenedReason].text ^short = "Vabatekst lühema tervisekontrolli aja põhjusega"
* section[rejectReason] ^short = "Eitava otsuse põhjendus"
* section[rejectReason].code = EEHealthCertificateSection#reject-reason
* section[rejectReason].text 1..1
* section[rejectReason].text ^short = "Vabatekst eitava otsuse põhjendusega"
* section[changeReason] ^short = "Tervisetõendi muutmise põhjus"
* section[changeReason].code = EEHealthCertificateSection#change-reason
* section[changeReason].text 1..1
* section[changeReason].text ^short = "Vabatekst tervisetõendi muutmise põhjusega"
* section[cancelReason] ^short = "Tervisetõendi tühistamise põhjus"
* section[cancelReason].code = EEHealthCertificateSection#cancel-reason
* section[cancelReason].text 1..1
* section[suspendReason].text ^short = "Tervisetõendi peatamise põhjus"
* section[suspendReason] ^short = "Tervisetõendi peatamise põhjus"
* section[suspendReason].code = EEHealthCertificateSection#suspend-reason
* section[suspendReason].text 1..1
* section[suspendReason].text ^short = "Vabatekst tervisetõendi peatamise põhjusega"
// contained resources
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "resource"
* contained ^slicing.rules = #open
* contained contains author 1..1 and decision 0..1
* contained[author] only PractitionerRole
* contained[author] ^short = "Tervisetõendi autor"
* contained[author].practitioner 1..1
* contained[author].practitioner ^short = "Viide SPD Practitioner ressursile"
* contained[author].organization 1..1
* contained[author].organization ^short = "Viide SPD Organization ressursile"
* contained[decision] only Observation
* contained[decision] ^short = "Tervisetõendi otsus"
// following breaks the build due to bug in the IG publisher
//* contained[Observation].code = http://snomed.info/sct#419183001 "Practitioner decision status" (exactly)
//* contained[Observation].valueCodeableConcept 1..1
//* contained[Observation].valueCodeableConcept ^short = "Otsus"
//* contained[Observation].valueCodeableConcept from EEHealthCertificateDecision (required)


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
* section[healthDeclaration] 0..1 MS
* section[healthDeclaration] ^short = "Tervisedeklaratsioon"
* section[healthDeclaration].code = EEHealthCertificateSection#health-declaration
* section[healthDeclaration].entry 1..1
* section[healthDeclaration].entry only Reference(QuestionnaireResponse)
* section[healthDeclaration].entry ^short = "Viide QuestionnaireResponse ressursile"
* section[healthDeclaration].text 1..1
* section[healthDeclaration].text ^short = "Vabatekst"
* section[additionalConditions] ^short = "Lisatingimused"
* section[additionalConditions].code = EEHealthCertificateSection#additional-conditions
* section[additionalConditions].entry 1..1
* section[additionalConditions].entry only Reference(Observation)
* section[additionalConditions].entry ^short = "Viide contained Observation ressursile lisatingimusega"
* section[additionalConditions].text 1..1
* section[additionalConditions].text ^short = "Vabatekst"
* section[employerSuggestions] ^short = "Ettepanekud tööandjale"
* section[employerSuggestions].code = EEHealthCertificateSection#employer-suggestions
* section[employerSuggestions].entry 1..1
* section[employerSuggestions].text 1..1
* section[employerSuggestions].text ^short = "Vabatekst"
* section[employeeSuggestions] ^short = "Ettepanekud töötajale"
* section[employeeSuggestions].code = EEHealthCertificateSection#employee-suggestions
* section[employeeSuggestions].entry 1..1
* section[employeeSuggestions].text 1..1
* section[employeeSuggestions].text ^short = "Vabatekst"
* contained contains riskFactor 0..* and employment 1..1 and medicalRestriction 0..* and additionalCondition 0..*
* contained[riskFactor] only Observation
* contained[riskFactor] ^short = "Ohutegur"
* contained[employment] only Observation
* contained[employment] ^short = "Töösuhe"
* contained[medicalRestriction] only Observation
* contained[medicalRestriction] ^short = "Meditsiinilised piirang"
//fixme add code and node whe ig publisher is fixed
* contained[additionalCondition] only Observation
* contained[additionalCondition] ^short = "Lisatingimus"

Profile: EEHealthCertificateOccupationalEmployer
Parent: EEHealthCertificateOccupational
Id: ee-health-certificate-occupational-employer
Title: "Töötervishoiu tervisetõend tööandjale"
Description: "Töötervishoiu tervisetõendi profiil tööandjale kuvamiseks"
* ^experimental = true
* extension[confidentiality] ..0
* section[healthDeclaration] ..0
* section[employeeSuggestions] ..0
