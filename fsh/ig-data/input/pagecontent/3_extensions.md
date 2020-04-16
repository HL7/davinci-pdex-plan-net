

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Extensions defined as part of this Implementation Guide.  </h3>
Where possible, extensions from the VhDIR Implementation Guide are used by reference.

<table border="1" class="extensions local">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody>
         <tr>
          <td><a href="StructureDefinition-accessibility.html">Accessibility</a></td>
          <td>{% capture md_text %}An extension to describe accessibility options offered by a practitioner or at a location.{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
          <tr>
           <td><a href="StructureDefinition-communication-proficiency.html">Communication Proficiency</a></td>
          <td>{% capture md_text %}An extension to express a practitioner’s spoken proficiency with the language indicated in practitioner.communication {% endcapture %}{{ md_text | markdownify }}</td>
        </tr> 
       <tr>
          <td><a href="StructureDefinition-endpoint-usecase.html">Endpoint Use Case</a></td>
          <td>{% capture md_text %}An enumeration of the specific use cases (service descriptions) supported by the endpoint{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-location-reference.html">Location-reference</a></td>
          <td>{% capture md_text %}A reference to  a Location resource (plannet-Location) defining the coverage area of a health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-network-reference.html">Network-reference</a></td>
          <td>{% capture md_text %}A reference to the healthcare provider insurance networks (plannet-Network) the practitioner participates in through their role{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
           <tr>
          <td><a href="StructureDefinition-newpatients.html">New Patients</a></td>
          <td>{% capture md_text %}New Patients indicates whether the practitioner is accepting new patients in their role{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
         <tr>
          <td><a href="StructureDefinition-practitioner-qualification.html">Practitioner-Qualification</a></td>
          <td>{% capture md_text %}An extension to add status and whereValie elements to a practitioner’s qualifications.{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
      <tr>
          <td><a href="StructureDefinition-qualification.html">Qualification</a></td>
          <td>{% capture md_text %}An extension to add qualifications for an organization (e.g. accreditation) or practitionerRole (e.g. registered to prescribe controlled substances).{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-via-intermediary.html">Via Intermediary</a></td>
          <td>{% capture md_text %}A reference to an alternative point of contact (plannet-PractitionerRole, plannet-Organization, plannet-OrganizationAffiliation, or plannet-Location) {% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
  </tbody>
</table>
<h3>Extensions referenced by Implementation Guide.  </h3>

<table border="1" class="extensions remote">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody>
      <tr>
           <td><a href="http://hl7.org/fhir/uv/vhdir/2018Sep/StructureDefinition-contactpoint-availabletime.html">Contactpoint Available Time</a></td>
          <td>{% capture md_text %}An extension representing the times a contact point is available{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
          <tr>
          <td><a href="http://hl7.org/fhir/R4/extension-geolocation.html">Geolocation</a></td>
          <td>{% capture md_text %}The absolute geographic location of the Location, expressed using the WGS84 datume{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>            <tr>
          <td><a href="http://hl7.org/fhir/uv/vhdir/2018Sep/StructureDefinition-org-description.html">Organization Description</a></td>
          <td>{% capture md_text %}An extension to provide a human-readable description of an organization{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        
  </tbody>
</table>
</div>