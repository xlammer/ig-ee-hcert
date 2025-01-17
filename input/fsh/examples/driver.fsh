Instance: DecisionDriver
InstanceOf: HcertObservation
Usage: #inline
* id = "decision-222"
* status = #final
* code = http://snomed.info/sct#419183001 "Practitioner decision status"
* subject = Reference(Patient/pat1)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* valueCodeableConcept = EEHealthCertificateDecision#no

Instance: DriverHealthCertExample
InstanceOf: EEHealthCertificateDriver
Title: "Mootorsõiduki juhtimise tervisetõendi näidis"
Usage: #example
* id = "section-300"
* identifier[0]
  * system = "https://fhir.ee/hcert/health-certificate-number"
  * value = "HCERT-321"
* status = http://hl7.org/fhir/composition-status#final
* type = http://snomed.info/sct#772786005 "Medical Certificate"
* subject = Reference(Patient/pat1)
* date = "2024-11-05T11:45:29.0437162+00:00"
* author = Reference(Author)
* title = "Mootorsõiduki juhtimise tervisetõend"
* event.period.start = "2024-11-05T00:00:00.000+00:00"
* event.period.end = "2025-11-05T00:00:00.000+00:00"
* contained[author] = Author
* contained[+] = DecisionDriver
* section[decision]
  * entry = Reference(DecisionDriver)
  * code = EEHealthCertificateSection#decision
* section[rejectReason]
  * code = EEHealthCertificateSection#reject-reason
  * text.status = #additional
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ei tunne värve</div>"
