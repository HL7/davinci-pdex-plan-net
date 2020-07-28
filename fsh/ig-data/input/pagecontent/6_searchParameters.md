

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3 name="Search Parameters">Required Search Parameters </h3>
The following search parameters are required for conformance to this implementation guide (see the <a href="capability.html">capability statement</a> for details).
<table border="1" class="codes">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Base Resources</b>
      </td>
      <td>
        <b>Type</b>
      </td>
      <td>
        <b>Description</b>
      </td>
    </tr>
  </thead>
  <tbody>
    <tr>
 <tr>
              <td><a href="SearchParameter-endpoint-organization.html">organization</a></td>
              <td>Endpoint</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Endpoints managed by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
               <tr>
              <td><a href="SearchParameter-healthcareservice-coverage-area.html">coverage-area</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select services available in a region described by the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-healthcareservice-endpoint.html">endpoint</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices with the specified endpoint{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
               <tr>
              <td><a href="SearchParameter-healthcareservice-location.html">location</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices available at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-healthcareservice-name.html">name</a></td>
              <td>HealthcareService</td>
              <td>string</td>
              <td>{% capture md_text %}Select HealthcareServices with the specified name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
              <tr>
              <td><a href="SearchParameter-healthcareservice-organization.html">organization</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices provided by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-healthcareservice-service-category.html">service-category</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices providing the specified category of services{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-healthcareservice-service-type.html">service-type</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-healthcareservice-specialty.html">specialty</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select services associated with the specified specialty{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-insuranceplan-administered-by.html">administered-by</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products that are administered by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-insuranceplan-coverage-area.html">coverage-area</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products that are offered in the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-insuranceplan-coverage-type.html">coverage-type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select products offering the specified type of coverage{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
               <tr>
              <td><a href="SearchParameter-insuranceplan-name.html">name</a></td>
              <td>InsurancePlan</td>
              <td>string</td>
              <td>{% capture md_text %}Select products with the specified name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-insuranceplan-network.html">network</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products associated with the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-owned-by.html">owned-by</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products that are owned by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-plan-coverage-area.html">plan-coverage-area</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select plans that are available in the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            <tr>
              <td><a href="SearchParameter-insuranceplan-plan-type.html">plan-type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select plans of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-type.html">type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select insurance plans of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-location-address.html">address</a></td>
              <td>Location</td>
              <td>string</td>
              <td>{% capture md_text %}Select Locations with the specified address{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-location-organization.html">organization</a></td>
              <td>Location</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Locations managed by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-partof.html">partof</a></td>
              <td>Location</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Locations that are part of the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-type.html">type</a></td>
              <td>Location</td>
              <td>token</td>
              <td>{% capture md_text %}Select Locations of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organization-address.html">address</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select organizations with the specified address (matches any of the string elements of an address){% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organization-endpoint.html">endpoint</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations with the specified endpoint{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organization-name.html">name</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select Organizations with the specified name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organization-partof.html">partof</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations that are part of the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organization-type.html">type</a></td>
              <td>Organization</td>
              <td>token</td>
              <td>{% capture md_text %}Select Organizations of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-identifier-assigner.html">identifier-assigner</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select OrganizationAffiliations with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
             <tr>
              <td><a href="SearchParameter-organizationaffiliation-location.html">location</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select OrganizationAffiliations available at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-network.html">network</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles where the organization is a member of the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-participating-organization.html">participating-organization</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles filled by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-primary-organization.html">primary-organization</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles offered by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-role.html">role</a></td>
              <td>OrganizationAffiliation</td>
              <td>token</td>
              <td>{% capture md_text %}Select OrganizationAffiliations with the specified role{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-service.html">service</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select OrganizationAffiliations providing the specified service{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-organizationaffiliation-specialty.html">specialty</a></td>
              <td>OrganizationAffiliation</td>
              <td>token</td>
              <td>{% capture md_text %}Select OrganizationAffiliations associated with the specified specialty{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitioner-family-name.html">family</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified family name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitioner-given-name.html">given</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified given name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitioner-name.html">name</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified name (matches against any of the elements in the HumanName data type){% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitionerrole-endpoint.html">endpoint</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles with the specified endpoint{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitionerrole-location.html">location</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles available at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
             <tr>
              <td><a href="SearchParameter-practitionerrole-network.html">network</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles where the practitioner is a member of the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitionerrole-organization.html">organization</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles available at the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
             <tr>
              <td><a href="SearchParameter-practitionerrole-practitioner.html">practitioner</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles filled by the specified practitioner{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
             <tr>
              <td><a href="SearchParameter-practitionerrole-qualification-code.html">qualification-code</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles with a type of qualification matching the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitionerrole-role.html">role</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles with the specified role{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
             <tr>
              <td><a href="SearchParameter-practitionerrole-service.html">service</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles providing the specified service{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-practitionerrole-specialty.html">specialty</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles associated with the specified specialty{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
  </tbody>
</table>
</div>