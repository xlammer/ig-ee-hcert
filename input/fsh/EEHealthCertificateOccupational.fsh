Profile: EEHealthCertificateOccupational
Parent: EEHealthCertificate
Id: ee-health-certificate-occupational
Title: "Töötervishoiu tervisetõend"
* section contains riskFactors 0..* and employer 0..1 and healthDeclaration 0..1 and medicalRestriction 0..* and additionalConditions 0..* and employerSuggestions 0..1 and employeeSuggestions 0..1 and workRelatedCondition 0..*
* section[riskFactors] ^short = "Ohutegurid"
* section[riskFactors].code = EEHealthCertificateSection#risk-factors
* section[riskFactors].entry 1..1
* section[riskFactors].entry only Reference(Observation)
* section[riskFactors].entry ^short = "Viide contained Observation ressursile ohuteguriga"
* section[employer] ^short = "Tööandja"
* section[employer].code = EEHealthCertificateSection#employer
* section[employer].entry 1..1
* section[employer].entry only Reference(Observation)
* section[employer].entry ^short = "Viide contained Observation ressursile töösuhega"
* section[employer].text 1..1
* section[employer].text ^short = "Tööandja asutuse registri number"
* section[healthDeclaration] ^short = "Tervisedeklaratsioon"
* section[healthDeclaration].code = EEHealthCertificateSection#health-declaration
* section[healthDeclaration].entry 1..1
* section[healthDeclaration].entry only Reference(QuestionnaireResponse)
* section[healthDeclaration].entry ^short = "Viide QuestionnaireResponse ressursile"
* section[healthDeclaration].text 1..1
* section[healthDeclaration].text ^short = "Vabatekst"
* section[medicalRestriction] ^short = "Meditsiinilised piirangud"
* section[medicalRestriction].code = EEHealthCertificateSection#medical-restrictions
* section[medicalRestriction].entry 1..1
* section[medicalRestriction].entry only Reference(Observation)
* section[medicalRestriction].entry ^short = "Viide contained Observation ressursile (Meditsiiniline piirang)"
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
* section[employerSuggestions] ^short = "Ettepanekud töötajale"
* section[employeeSuggestions].code = EEHealthCertificateSection#employee-suggestions
* section[employeeSuggestions].entry 1..1
* section[employeeSuggestions].text 1..1
* section[employeeSuggestions].text ^short = "Vabatekst"
* section[workRelatedCondition] ^short = "Tööst põhjustatud haigestumine ja/või kutsehaigestumine"
* section[workRelatedCondition].code = EEHealthCertificateSection#work-related-condition
* section[workRelatedCondition].entry 1..1
* section[workRelatedCondition].entry only Reference(Condition)
* section[workRelatedCondition].entry ^short = "Viide contained Condition resurssidele"
* contained contains occupation 1..1 and medicalRestriction 0..* and additionalCondition 0..* and workRelatedCondition 0..*
* contained[occupation] only Observation
* contained[occupation] ^short = "Töösuhe"
* contained[medicalRestriction] only Observation
* contained[medicalRestriction] ^short = "Meditsiinilised piirang"
//fixme add code and node whe ig publisher is fixed
* contained[additionalCondition] only Observation
* contained[additionalCondition] ^short = "Lisatingimus"
* contained[workRelatedCondition] only Condition
* contained[workRelatedCondition] ^short = "Tööst põhjustatud haigestumine ja/või kutsehaigestumine"


Profile: EEHealthCertificateOccupationalEmployee
Parent: EEHealthCertificateOccupational
Id: ee-health-certificate-occupational-employee
Title: "Töötervishoiu tervisetõend töötajale"
* extension[confidentiality] ..0

Profile: EEHealthCertificateOccupationalEmployer
Parent: EEHealthCertificateOccupational
Id: ee-health-certificate-occupational-employer
Title: "Töötervishoiu tervisetõend tööandjale"
* extension[confidentiality] ..0
* section[healthDeclaration] ..0
* section[employeeSuggestions] ..0
* section[workRelatedCondition] ..0 //FIXME: show exclude contained as well?

