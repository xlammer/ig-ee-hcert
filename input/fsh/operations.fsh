Instance: ee-health-certificate-pdf
InstanceOf: OperationDefinition
Usage: #definition
Description: "FHIR operatsioon PDF dokumendi generereerimiseks tervisetõend (Composition) ressursi põhjal"
* version = "5.0.0"
* name = "EEHealthCertificatePdf"
* title = "Tervisetõendi PDF genereerimine"
* status = #active
* kind = #operation
* experimental = false
* affectsState = false
* code = #pdf
* resource = #Composition
* system = false
* type = false
* instance = true
* parameter[0].name = #role
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Isiku roll kelle jaoks on PDF genereeritud"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "PDF dokument binaarses formaadis"
* parameter[=].type = #Binary
