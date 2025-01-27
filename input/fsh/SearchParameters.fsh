// NOTE: Most search params are still in the resources folder as FHIR JSON. Will move over to here as they are ported to FSH or new ones are created

Instance: organization-period
InstanceOf: SearchParameter
Usage: #definition
* name = "Plannet_sp_organizationaffiliation_period"
* description = "Select Organization entries available during the specified period"
* status = #active
* code = #period
* base = #Organization
* type = #date
* expression = "Organization.extension.where(url='http://hl7.org/fhir/StructureDefinition/organization-period').value"
* multipleOr = true

Instance: practitioner-period
InstanceOf: SearchParameter
Usage: #definition
* name = "Plannet_sp_organizationaffiliation_period"
* description = "Select Organization entries available during the specified period"
* status = #active
* code = #period
* base = #Practitioner
* type = #date
* expression = "Practitioner.extension.where(url='http://hl7.org/fhir/us/davinci-pdex-plan-net/SearchParameter/practitioner-period').value"
* multipleOr = true