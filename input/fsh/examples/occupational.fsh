Instance: Author
InstanceOf: PractitionerRole
Usage: #inline
* id = "author-200"
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* practitioner = Reference(Practitioner/pract1)
* organization = Reference(Organization/org1)

Instance: Employment
InstanceOf: HcertObservation
Usage: #inline
* id = "employment-800"
* status = #final
* code = http://snomed.info/sct#364703007 "Employment detail"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* component[+]
  * code[0] = http://snomed.info/sct#160922003 "Job details"
  * valueCodeableConcept[0] = https://fhir.ee/CodeSystem/occupation#75130001 "Võimeister"

Instance: Decision
InstanceOf: HcertObservation
Usage: #inline
* id = "decision-200"
* status = #final
* code = http://snomed.info/sct#419183001 "Practitioner decision status"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* valueCodeableConcept = EEHealthCertificateDecision#yes

Instance: MedicalRestriction
InstanceOf: HcertObservation
Usage: #inline
* id = "restriction-200"
* status = #final
* code = http://snomed.info/sct#246175000 "Limitation"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* valueCodeableConcept = EEHealthCertificateRestriction#no-night-work
* note.text = "Öösel võib hulluks minna"

Instance: RiskFactor
InstanceOf: HcertObservation
Usage: #inline
* id = "riskFactor-200"
* status = #final
* code = http://snomed.info/sct#80943009 "Risk factor"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* valueCodeableConcept = https://fhir.ee/CodeSystem/toost-olenevad-ohutegurid#A1 "põrutused, üldvibratsioon ja seda põhjustavad seadmed"


Instance: AdditionalCondition
InstanceOf: HcertObservation
Usage: #inline
* id = "additional-200"
* status = #final
* code = http://snomed.info/sct#225891002 "Fit for work with certain limitations"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* valueCodeableConcept = EEHealthCertificateOccupationalAdditionalCondition#safety-gear "Isikukaitsevahendid"

Instance: OccupationalHealthCertExample
InstanceOf: EEHealthCertificateOccupational
Title: "Töötervishoiu tervisetõendi näidis"
Usage: #example
* id = "section-100"
* identifier[0]
  * system = "https://fhir.ee/hcert/health-certificate-number"
  * value = "DOC-12345"
* status = http://hl7.org/fhir/composition-status#preliminary
* type = http://snomed.info/sct#772786005 "Medical Certificate"
* subject = Reference(Patient/pat1)
* date = "2024-11-05T11:45:29.0437162+00:00"
* author = Reference(Author)
* title = "Töötervishoiu tervisekontroll"
* event.period.start = "2024-11-05T00:00:00.000+00:00"
* event.period.end = "2025-11-05T00:00:00.000+00:00"
* contained[author] = Author
* contained[+] = Employment
* contained[+] = Decision
* contained[+] = MedicalRestriction
* contained[+] = RiskFactor
* contained[+] = AdditionalCondition
* section[employer]
  * entry = Reference(Employment)
  * code = EEHealthCertificateSection#employer
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">10006966</div>"
* section[decision]
  * entry = Reference(Decision)
  * code = EEHealthCertificateSection#decision
* section[medicalRestriction]
  * entry = Reference(MedicalRestriction)
  * code = EEHealthCertificateSection#medical-restrictions
* section[shortenedReason]
  * code = EEHealthCertificateSection#shortened-reason
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Arst ei usalda isiku uuringute tulemustele</div>"
* section[rejectReason]
  * code = EEHealthCertificateSection#reject-reason
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Raske füüsiline töö, ei sobi selja probleemide tõttu</div>"
* section[changeReason]
  * code = EEHealthCertificateSection#change-reason
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Kirjavea parandus</div>"
* section[cancelReason]
  * code = EEHealthCertificateSection#cancel-reason
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vale otsus</div>"
* section[suspendReason]
  * code = EEHealthCertificateSection#suspend-reason
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ootab lisauringute tulemusi</div>"
* section[riskFactors]
  * code = EEHealthCertificateSection#risk-factors
  * entry = Reference(RiskFactor)
* section[healthDeclaration]
  * code = EEHealthCertificateSection#health-declaration
  * entry = Reference(QuestionnaireResponse/qre-200)
* section[additionalConditions]
  * code = EEHealthCertificateSection#work-additional-conditions
  * entry = Reference(AdditionalCondition)
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tekst mis kirjeldab lisatingumusi</div>"
* section[employerSuggestions]
  * code = EEHealthCertificateSection#employer-suggestions
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Töötajale on vaja parem valgustus</div>"
* section[employeeSuggestions]
  * code = EEHealthCertificateSection#employee-suggestions
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tööandja peab paigaldama uut valgustust</div>"
