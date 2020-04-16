

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Code Systems defined as part of this Implementation Guide.  </h3>
<p></p>
<table border="1" class="codesytems local">
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
        <td><a href="CodeSystem-EndpointConnectionTypeCS.html">Endpoint ConnectionTypes</a></td>
        <td>{% capture md_text %}Endpoint ConnectionTypes.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
        <tr>
        <td><a href="CodeSystem-EndpointPayloadTypeCS.html">Endpoint Payload Types</a></td>
        <td>{% capture md_text %}Endpoint Payload Types.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
         <tr>
        <td><a href="CodeSystem-OrgTypeCS.html">Organization Type</a></td>
        <td>{% capture md_text %}Organization Type.{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
  </tbody>
</table>

<h3>Value Sets defined as part of this Implementation Guide.  </h3>
<p>
Where possible, value sets from the VhDIR Implementation Guide are used by reference.
</p>
<table border="1" class="valuesets local">
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
        <td><a href="ValueSet-EndpointConnectionTypeVS.html">Endpoint ConnectionTypes</a></td>
        <td>{% capture md_text %}Endpoint ConnectionTypes.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
        <tr>
        <td><a href="ValueSet-EndpointPayloadTypeVS.html">Endpoint Payload Types</a></td>
        <td>{% capture md_text %}Endpoint Payload Types.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
       <tr>
        <td><a href="ValueSet-EndpointUsecaseVS.html">Endpoint Usecases</a></td>
        <td>{% capture md_text %}Endpoint Usecases.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
       <tr>
        <td><a href="ValueSet-PlanTypeVS.html">Insurance Plan Type</a></td>
        <td>{% capture md_text %}Insurance Plan Type {% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
    <tr>
        <td><a href="ValueSet-OrgTypeVS.html">Organization Type</a></td>
        <td>{% capture md_text %}Organization Type.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
  </tbody>
</table>


<h3>VhDir value sets used in this Implementation Guide</h3>
<p>These value sets are referenced directly by Plan-Net resources.   Additional external value sets are referenced by extensions.</p>
<table border="1" class="valuesets external">
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
        <td><a href="http://hl7.org/fhir/uv/vhdir/2018Sep/ValueSet-valueset-qualificationstatus.html">Credential Status</a></td>
        <td>{% capture md_text %}VhDir Credential Status (physical / postal).{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
      <tr>
        <td><a href="http://hl7.org/fhir/uv/vhdir/2018Sep/ValueSet-valueset-accessibility.html">VHDir Accessibility</a></td>
        <td>{% capture md_text %}VhDir Accessibility.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>    
  </tbody>
</table>

</div>