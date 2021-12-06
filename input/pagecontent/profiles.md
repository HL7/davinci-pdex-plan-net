

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">
<h3>
Profiles defined as part of this Implementation Guide
</h3>
<table class="codes">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Based On</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="StructureDefinition-plannet-Endpoint.html">PlannetEndpoint</a></td>
      <td><a href="http://hl7.org/fhir/R4/endpoint.html">Endpoint (R4)</a></td>
      <td>{% capture md_text %}The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-HealthcareService.html">PlannetHealthcareService</a></td>
      <td><a href="http://hl7.org/fhir/R4/healthcareservice.html">HealthcareService (R4)</a></td>
      <td>{% capture md_text %}The HealthCareService  resource typically describes services offered by an organization/practitioner at a location. The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, hospital and ambulatory care, home care, long-term care, and other health-related and community services.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-InsurancePlan.html">PlannetInsurancePlan</a></td>
      <td><a href="http://hl7.org/fhir/R4/insuranceplan.html">InsurancePlan (R4)</a></td>
      <td>{% capture md_text %}An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).

InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-Location.html">PlannetLocation</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-location.html">Location (US Core)</a></td>
      <td>{% capture md_text %}A Location is the physical place where healthcare services are provided, practitioners are employed, organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-Network.html">PlannetNetwork</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-organization.html">Organization (US Core)</a></td>
      <td>{% capture md_text %}A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals that deliver a set of services across a geography through health insurance products/plans. A network is typically owned by a payer.

In the PlanNet IG, individuals and organizations are represented as participants in a PLan-Net Network through the practitionerRole and Plan-Net-organizationAffiliation resources, respectively.
{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-Organization.html">PlannetOrganization</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-organization.html">Organization (US Core)</a></td>
      <td>{% capture md_text %}An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.
      {% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-OrganizationAffiliation.html">PlannetOrganizationAffiliation</a></td>
      <td><a href="http://hl7.org/fhir/R4/organizationaffiliation.html">OrganizationAffiliation (R4)</a></td>
      <td>{% capture md_text %}The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-Practitioner.html">PlannetPractitioner</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-practitioner.html">Practitioner (US Core)</a></td>
      <td>{% capture md_text %}Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-plannet-PractitionerRole.html">PlannetPractitionerRole</a></td>
      <td><a href="http://hl7.org/fhir/R4/practitionerrole.html">PractitionerRole (R4)</a></td>
      <td>{% capture md_text %}PractitionerRole describes the role a practitioner plays at an organization, including the services they provide, the location(s) where they work, and their availability, electronic endpoints, and other relevant information.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    
  </tbody>
</table>
</div>