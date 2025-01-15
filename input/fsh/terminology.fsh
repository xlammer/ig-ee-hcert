ValueSet: EEHealthCertificateStatusVS
Title: "Tervisetõendi staatus"
Id: ee-health-certificate-status
* ^experimental = false
* include http://hl7.org/fhir/composition-status#preliminary "Preliminary"
* include http://hl7.org/fhir/composition-status#final "Final"
* include http://hl7.org/fhir/composition-status#cancelled "Cancelled"
* include http://hl7.org/fhir/composition-status#entered-in-error "Entered in Error"

CodeSystem: EEHealthCertificateUsageArea
Id: ee-health-certificate-usage-area
Title: "Tervisetõendi kasutusala"
* ^experimental = false
* ^caseSensitive = false
* #occupational "Töötervishoiu tervisekontroll"
* #driver "Mootorsõidukijuht"

ValueSet: EEHealthCertificateUsageAreaVS
Id: ee-health-certificate-usage-area
Title: "Tervisetõendi kasutusala"
* ^experimental = false
* include codes from system EEHealthCertificateUsageArea

CodeSystem: EEHealthCertificateConfidentiality
Id: ee-health-certificate-confidentiality
Title: "Tervisetõendi konfidentsiaalsus"
* ^experimental = false
* ^caseSensitive = false
* #tbd "TBD"

ValueSet: EEHealthCertificateConfidentialityVS
Title: "Tervisetõendi konfidentsiaalsus"
* ^experimental = false
* include codes from system EEHealthCertificateConfidentiality

CodeSystem: EEHealthCertificateSection
Id: ee-health-certificate-section
Title: "Tervisetõendi sektsioon"
* ^experimental = false
* ^caseSensitive = false
* #decision "Tervisetõendi otsus"
* #shortened-reason "Lühema tervisekontrolli aja põhjus"
* #reject-reason "Eitava otsuse põhjendus"
* #change-reason "Tervisetõendi muutmise põhjus"
* #cancel-reason "Tervisetõendi tühistamise põhjus"
* #suspend-reason "Tervisetõendi peatamise põhjus"
* #risk-factors "Ohutegurid"
* #employer "Tööandja"
* #health-declaration "Tervisedeklaratsioon"
* #medical-restrictions "Meditsiinilised piirangud"
* #additional-conditions "Lisatingimused"
* #employer-suggestions "Ettepanekud tööandjale"
* #employee-suggestions "Ettepanekud töötajale"
* #work-related-condition "Tööst põhjustatud haigestumine ja/või kutsehaigestumine"

CodeSystem: EEHealthCertificateDecision
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
* ^experimental = false
* ^caseSensitive = false
//fixme: sõnastus
* #yes "Jah"
* #yes-with-restrictions "Jah, piirangutega"
* #no "Ei"

ValueSet: EEHealthCertificateDecisionVS
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
* ^experimental = false
* include codes from system EEHealthCertificateDecision

CodeSystem: EEHealthCertificateMedicalRestriction
Id: ee-health-certificate-medical-restriction
Title: "Tervisetõendi meditsiiniline piirang"
Description: "Poolik nimekiri piirangutest"
* ^experimental = false
* ^caseSensitive = false
* #glasses "prillid"
* #contact-lenses "kontaktläätsed"
* #sun-shade "päikesevari"
//fixme: add rest of the concepts

ValueSet: EEHealthCertificateMedicalRestrictionVS
Id: ee-health-certificate-medical-restriction
Title: "Tervisetõendi meditsiiniline piirang"
* ^experimental = false
* include codes from system EEHealthCertificateMedicalRestriction


CodeSystem: EEHealthCertificateOccupationalAdditionalCondition
Id: ee-health-certificate-occupational-additional-condition
Title: "Püsiva töövõime säilitamiseks vajalikud lisatingimus"
* ^experimental = false
* ^caseSensitive = false
* #safety-gear "Isikukaitsevahendid"
* #work-related-changes "Töökorralduslikud muudatused"
* #work-environment "Töökeskkond"
* #other "Muu"


ValueSet: EEHealthCertificateOccupationalAdditionalConditionVS
Id: ee-health-certificate-occupational-additional-condition
Title: "Püsiva töövõime säilitamiseks vajalikud lisatingimus"
* ^experimental = false
* include codes from system EEHealthCertificateOccupationalAdditionalCondition
