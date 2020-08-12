

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">
<h3>Required Search Parameters</h3>
The following search parameters are required for conformance to this implementation guide (see the <a href="CapabilityStatement-davinci-pdex-plan-net.html">capability statement</a> for details).
<table border="1">
<thead>
<tr>
<td><strong>Name</strong></td>
<td><strong>Base Resources</strong></td>
<td><strong>Type</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>
<tr>
<td><a href="SearchParameter-endpoint-organization.html">organization</a></td>
<td>Endpoint</td>
<td>reference</td>
<td>Select Endpoints managed by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-coverage-area.html">coverage-area</a></td>
<td>HealthcareService</td>
<td>reference</td>
<td>Select services available in a region described by the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-endpoint.html">endpoint</a></td>
<td>HealthcareService</td>
<td>reference</td>
<td>Select HealthcareServices with the specified endpoint</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-location.html">location</a></td>
<td>HealthcareService</td>
<td>reference</td>
<td>Select HealthcareServices available at the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-name.html">name</a></td>
<td>HealthcareService</td>
<td>string</td>
<td>Select HealthcareServices with the specified name</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-organization.html">organization</a></td>
<td>HealthcareService</td>
<td>reference</td>
<td>Select HealthcareServices provided by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-service-category.html">service-category</a></td>
<td>HealthcareService</td>
<td>token</td>
<td>Select HealthcareServices providing the specified category of services</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-service-type.html">service-type</a></td>
<td>HealthcareService</td>
<td>token</td>
<td>Select HealthcareServices of the specified type</td>
</tr>
<tr>
<td><a href="SearchParameter-healthcareservice-specialty.html">specialty</a></td>
<td>HealthcareService</td>
<td>token</td>
<td>Select services associated with the specified specialty</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-administered-by.html">administered-by</a></td>
<td>InsurancePlan</td>
<td>reference</td>
<td>Select products that are administered by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-coverage-area.html">coverage-area</a></td>
<td>InsurancePlan</td>
<td>reference</td>
<td>Select products that are offered in the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-name.html">name</a></td>
<td>InsurancePlan</td>
<td>string</td>
<td>Select products with the specified name</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-network.html">network</a></td>
<td>InsurancePlan</td>
<td>reference</td>
<td>Select products associated with the specified health insurance provider network</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-owned-by.html">owned-by</a></td>
<td>InsurancePlan</td>
<td>reference</td>
<td>Select products that are owned by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-coverage-area.html">plan-coverage-area</a></td>
<td>InsurancePlan</td>
<td>reference</td>
<td>Select plans that are available in the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-plan-type.html">plan-type</a></td>
<td>InsurancePlan</td>
<td>token</td>
<td>Select plans of the specified type</td>
</tr>
<tr>
<td><a href="SearchParameter-insuranceplan-type.html">type</a></td>
<td>InsurancePlan</td>
<td>token</td>
<td>Select insurance plans of the specified type</td>
</tr>
<tr>
<td><a href="SearchParameter-location-address.html">address</a></td>
<td>Location</td>
<td>string</td>
<td>Select Locations with the specified address</td>
</tr>
<tr>
<td><a href="SearchParameter-location-organization.html">organization</a></td>
<td>Location</td>
<td>reference</td>
<td>Select Locations managed by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-location-partof.html">partof</a></td>
<td>Location</td>
<td>reference</td>
<td>Select Locations that are part of the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-location-type.html">type</a></td>
<td>Location</td>
<td>token</td>
<td>Select Locations of the specified type</td>
</tr>
<tr>
<td><a href="SearchParameter-organization-address.html">address</a></td>
<td>Organization</td>
<td>string</td>
<td>Select organizations with the specified address (matches any of the string elements of an address)</td>
</tr>
<tr>
<td><a href="SearchParameter-organization-endpoint.html">endpoint</a></td>
<td>Organization</td>
<td>reference</td>
<td>Select Organizations with the specified endpoint</td>
</tr>
<tr>
<td><a href="SearchParameter-organization-name.html">name</a></td>
<td>Organization</td>
<td>string</td>
<td>Select Organizations with the specified name</td>
</tr>
<tr>
<td><a href="SearchParameter-organization-partof.html">partof</a></td>
<td>Organization</td>
<td>reference</td>
<td>Select Organizations that are part of the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-location.html">location</a></td>
<td>OrganizationAffiliation</td>
<td>reference</td>
<td>Select OrganizationAffiliations available at the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-network.html">network</a></td>
<td>OrganizationAffiliation</td>
<td>reference</td>
<td>Select roles where the organization is a member of the specified health insurance provider network</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-participating-organization.html">participating-organization</a></td>
<td>OrganizationAffiliation</td>
<td>reference</td>
<td>Select roles filled by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-primary-organization.html">primary-organization</a></td>
<td>OrganizationAffiliation</td>
<td>reference</td>
<td>Select roles offered by the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-role.html">role</a></td>
<td>OrganizationAffiliation</td>
<td>token</td>
<td>Select OrganizationAffiliations with the specified role</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-service.html">service</a></td>
<td>OrganizationAffiliation</td>
<td>reference</td>
<td>Select OrganizationAffiliations providing the specified service</td>
</tr>
<tr>
<td><a href="SearchParameter-organizationaffiliation-specialty.html">specialty</a></td>
<td>OrganizationAffiliation</td>
<td>token</td>
<td>Select OrganizationAffiliations associated with the specified specialty</td>
</tr>
<tr>
<td><a href="SearchParameter-practitioner-family-name.html">family</a></td>
<td>Practitioner</td>
<td>string</td>
<td>Select Practitioners with the specified family name</td>
</tr>
<tr>
<td><a href="SearchParameter-practitioner-given-name.html">given</a></td>
<td>Practitioner</td>
<td>string</td>
<td>Select Practitioners with the specified given name</td>
</tr>
<tr>
<td><a href="SearchParameter-practitioner-name.html">name</a></td>
<td>Practitioner</td>
<td>string</td>
<td>Select Practitioners with the specified name (matches against any of the elements in the HumanName data type)</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-endpoint.html">endpoint</a></td>
<td>PractitionerRole</td>
<td>reference</td>
<td>Select PractitionerRoles with the specified endpoint</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-location.html">location</a></td>
<td>PractitionerRole</td>
<td>reference</td>
<td>Select PractitionerRoles available at the specified location</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-network.html">network</a></td>
<td>PractitionerRole</td>
<td>reference</td>
<td>Select roles where the practitioner is a member of the specified health insurance provider network</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-organization.html">organization</a></td>
<td>PractitionerRole</td>
<td>reference</td>
<td>Select PractitionerRoles available at the specified organization</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-practitioner.html">practitioner</a></td>
<td>PractitionerRole</td>
<td>reference</td>
<td>Select roles filled by the specified practitioner</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-role.html">role</a></td>
<td>PractitionerRole</td>
<td>token</td>
<td>Select PractitionerRoles with the specified role</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-service.html">service</a></td>
<td>PractitionerRole</td>
<td>reference</td>
<td>Select PractitionerRoles providing the specified service</td>
</tr>
<tr>
<td><a href="SearchParameter-practitionerrole-specialty.html">specialty</a></td>
<td>PractitionerRole</td>
<td>token</td>
<td>Select PractitionerRoles associated with the specified specialty</td>
</tr>
</tbody>
</table>
</div>