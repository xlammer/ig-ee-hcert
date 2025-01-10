
### Sissejuhatus

HCERT (Health Certificate) ehk Tervisetõendi teenus on keskne rakendus, mille kaudu väljastatakse, säilitatakse ja hallatakse erinevate kasutusalade tervisetõendeid (näiteks töötervishoiu tõendid, mootorsõidukijui tõendid, relvaloa tõendid jpt.). 
Ülidsema tervisekontrolli digitaliseerimise projekti tutvustuse leiab lehelt: https://www.tehik.ee/tootervishoiu-tervisekontrolli-digitaliseerimine.
 

Käesoleval saidil kirjeldatakse HCERT rakendamisega seotud juurutusjuhendit. HCERT kasutab interaktsiooniprotokollina [FHIR 
standardit](http://fhir.hl7.org). 

HCERT juurutusjuhend määratleb toetatud profiilide komplekti ja pakub iga profiili jaoks vähemalt ühe näite.
FHIR profiili saab iseloomustada kui ühe fakti sisustusreeglistiku ning juurutusjuhendi kui kogumi sisustusreeglitest ja loenditest.

### Arendusvahendid ja lähtekood

HCERT-i juurutusjuhendi lähtekood on leitav [GitHubis](https://github.com/HL7EE/ig-ee-hcert).
Antud sait on välja töötatud [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand) abiga.
Täiendava informatsiooni FHIR Shorthand kohta saab leida [Confluence-is](https://confluence.hl7.org/display/FHIRI/FHIR+Shorthand), [GitHub-is](https://github.com/HL7/fhir-shorthand) ja [Zulip](https://chat.fhir.org) kanalis: #shorthand.


### IG metadata

{% include ip-statements.xhtml %}

{% include cross-version-analysis.xhtml %}

{% include dependency-table.xhtml %}

{% include globals-table.xhtml %}
