Profile: HcertObservation
Parent: Observation
Title: "Temporary Observation"
Description: "Remove this profile when https://github.com/HL7/fhir-ig-publisher/issues/1018 is fixed and new IG publisher is released"
* referenceRange 0..0

Profile: EEHealthCertificate
Parent: Composition
Id: ee-health-certificate
Title: "Tervisetõend"
Description: "Tervisetõendi baasprofiil"
* ^experimental = true
* ^abstract = true
* url ..0
* identifier 1..1
* identifier ^short = "Dokumendi number"
* identifier.system = "https://fhir.ee/hcert/health-certificate-number"
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
// sections
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = #code
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the section.code value"
* section contains decision 0..1 and medicalRestriction 0..* and shortenedReason 0..1 and rejectReason 0..1 and changeReason 0..1 and cancelReason 0..1 and suspendReason 0..1
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
* section[shortenedReason] ^short = "Lühema tervisekontrolli aja põhjus"
* section[shortenedReason].code = EEHealthCertificateSection#shortened-reason
* section[shortenedReason].text 1..1
* section[shortenedReason].text ^short = "Vabatekst lühema tervisekontrolli aja põhjusega"
* section[shortenedReason].text.status = #additional
* section[rejectReason] ^short = "Eitava otsuse põhjendus"
* section[rejectReason].code = EEHealthCertificateSection#reject-reason
* section[rejectReason].text 1..1
* section[rejectReason].text ^short = "Vabatekst eitava otsuse põhjendusega"
* section[rejectReason].text.status = #additional
* section[changeReason] ^short = "Tervisetõendi muutmise põhjus"
* section[changeReason].code = EEHealthCertificateSection#change-reason
* section[changeReason].text 1..1
* section[changeReason].text ^short = "Vabatekst tervisetõendi muutmise põhjusega"
* section[changeReason].text.status = #additional
* section[cancelReason] ^short = "Tervisetõendi tühistamise põhjus"
* section[cancelReason].code = EEHealthCertificateSection#cancel-reason
* section[cancelReason].text 1..1
* section[suspendReason].text ^short = "Tervisetõendi peatamise põhjus"
* section[suspendReason].text.status = #additional
* section[suspendReason] ^short = "Tervisetõendi peatamise põhjus"
* section[suspendReason].code = EEHealthCertificateSection#suspend-reason
* section[suspendReason].text 1..1
* section[suspendReason].text ^short = "Vabatekst tervisetõendi peatamise põhjusega"
* section[suspendReason].text.status = #additional
* contained ^slicing.discriminator[0].type = #value
* contained ^slicing.discriminator[0].path = "code"
* contained ^slicing.ordered = false
* contained ^slicing.rules = #open
* contained contains author 1..1 and decision 0..1 and medicalRestriction 0..*
* contained[author] only PractitionerRole
* contained[author] ^short = "Tervisetõendi autor"
* contained[author].code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* contained[author].practitioner 1..1
* contained[author].practitioner ^short = "Viide SPD Practitioner ressursile"
* contained[author].organization 1..1
* contained[author].organization ^short = "Viide SPD Organization ressursile"
* contained[decision] only HcertObservation
* contained[decision] ^short = "Tervisetõendi otsus"
* contained[decision].code = http://snomed.info/sct#419183001 "Practitioner decision status"
* contained[decision].value[x] 1..1
* contained[decision].value[x] only CodeableConcept
* contained[decision].value[x] ^short = "Otsus"
* contained[decision].value[x] from EEHealthCertificateDecisionVS (required)
* contained[medicalRestriction] only HcertObservation
* contained[medicalRestriction] ^short = "Meditsiiniline piirang"
* contained[medicalRestriction].code = http://snomed.info/sct#246175000 "Limitation"
* contained[medicalRestriction].value[x] 1..1
* contained[medicalRestriction].value[x] only CodeableConcept
* contained[medicalRestriction].value[x] ^short = "Meditsiiniline piirang"
* contained[medicalRestriction].value[x] from EEHealthCertificateMedicalRestrictionVS (required)
* contained[medicalRestriction].note 0..1 MS
* contained[medicalRestriction].note ^short = "Kommentaar koos piirangu täpsustusega"
