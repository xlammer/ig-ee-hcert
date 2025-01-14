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
* category = EEHealthCertificateUsageArea#occupational
* subject = Reference(Patient/pat1)
* date = "2024-11-05T11:45:29.0437162+00:00"
* author = Reference(Author)
* title = "Töötervishoiu tervisekontroll"
* event.period.start = "2024-11-05T00:00:00.000+00:00"
* event.period.end = "2025-11-05T00:00:00.000+00:00"
// fixme add confidentiality
* contained[author] = Author
* contained[+] = Employment
* section[employer]
  * entry = Reference(Employment)
  * code = EEHealthCertificateSection#employer
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">10006966</div>"
