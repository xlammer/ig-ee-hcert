Instance: AuthorOrganization
InstanceOf: Organization
Usage: #example
Title: "Asutuse näidis"
* id = "org1"
* name = "Karulaugu Perearstikeskus"

Instance: AuthorPractitioner
InstanceOf: Practitioner
Usage: #example
Title: "Arsti näidis"
* id = "pract1"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D12345"
* active = true
* name.family = "Arst"
* name.given = "Paavo"

Instance: Patient
InstanceOf: Patient
Usage: #example
Title: "Patsiendi näidis"
* id = "pat1"
* name
  * given = "Taavi"
  * family = "Kask"

Instance: HealthDeclaration
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Küsimustiku vastuse näidis"
* id = "qre-200"
* status = #completed
* questionnaire = "urn:uuid:95eaedf7-8a24-478a-8300-39acc44c746b"
* subject = Reference(Patient/pat1)
