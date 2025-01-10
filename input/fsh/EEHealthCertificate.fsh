ValueSet: EEHealthCertificateStatusVS
Title: "Tervisetõendi staatus"
Id: ee-health-certificate-status
* include http://hl7.org/fhir/composition-status#preliminary "Preliminary"
* include http://hl7.org/fhir/composition-status#final "Final"
* include http://hl7.org/fhir/composition-status#cancelled "Cancelled"
* include http://hl7.org/fhir/composition-status#entered-in-error "Entered in Error"

CodeSystem: EEHealthCertificateUsageArea
Id: ee-health-certificate-usage-area
Title: "Tervisetõendi kasutusala"
* ^caseSensitive = false
* #occupational "Töötervishoiu tervisekontroll"
* #motor-vehicle "Mootorsõidukijuht"

ValueSet: EEHealthCertificateUsageAreaVS
Id: ee-health-certificate-usage-area
Title: "Tervisetõendi kasutusala"
* include codes from system EEHealthCertificateUsageArea

Profile: EEHealthCertificate
Parent: Composition
Id: ee-health-certificate
Title: "Tervisetõend"
* url ..0
* identifier 1..1
* identifier ^short = "Dokumendi number"
* status ^short = "Tõendi staatus: preliminary | final | cancelled | entered-in-error"
* status from EEHealthCertificateStatusVS (required)
* type = http://snomed.info/sct#772786005 "Medical Certificate" (exactly)
* category 1..1
* category ^short = "Tervisetõendi kasutusala"
* category from EEHealthCertificateUsageAreaVS (required)
* subject only Reference(Patient)
* subject ^short = "MPI Patient reference"
* encounter ..0
* date ^short = "Dokumendi väljastamise aeg"
* date 1..1
* useContext ..0
* author 1..1
* author only Reference(PractitionerRole)
* author ^short = "Viide contained.PractitionerRole ressursile"
* name ..0
* title ^short = "Tõendi nimetus"
* note ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event.period ^short = "Dokumendi kehtivus - algus- ja lõpuaeg"
* event.period 1..1
* event.detail ..0
* extension contains
    EEHealthCertificateConfidentialityExt named confidentiality 0..1
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = #code
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the section.code pattern"
* section contains decision 0..1 and scr 0..1 and rejectReason 0..1 and changeReason 0..1 and cancelReason 0..1 and suspendReason 0..1
* section[decision] ^short = "Tervisetõendi otsus"
* section[decision].code = EEHealthCertificateSection#decision
* section[decision].entry 1..1
* section[decision].entry only Reference(Observation)
* section[decision].entry ^short = "Viide contained Observation ressursile otsuse koodiga"
* section[scr] ^short = "Lühema tervisekontrolli aja põhjus"
* section[scr].code = EEHealthCertificateSection#short-checkup-reason
* section[scr].text 1..1
* section[scr].text ^short = "Vabatekst lühema tervisekontrolli aja põhjusega"
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

CodeSystem: EEHealthCertificateConfidentiality
Id: ee-health-certificate-confidentiality
Title: "Tervisetõendi konfidentsiaalsus"
* ^caseSensitive = false
* #tbd "TBD"

ValueSet: EEHealthCertificateConfidentialityVS
Title: "Tervisetõendi konfidentsiaalsus"
* include codes from system EEHealthCertificateConfidentiality


CodeSystem: EEHealthCertificateSection
Id: ee-health-certificate-section
Title: "Tervisetõendi sektsioon"
* ^caseSensitive = false
* #decision "Tervisetõendi otsus"
* #short-checkup-reason "Lühema tervisekontrolli aja põhjus"
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
* ^caseSensitive = false
* #yes "Jah"
* #yes-with-restrictions "Jah piirangutega"
* #no "Ei"

ValueSet: EEHealthCertificateDecisionVS
Id: ee-health-certificate-decision
Title: "Tervisetõendi otsus"
* include codes from system EEHealthCertificateDecision
