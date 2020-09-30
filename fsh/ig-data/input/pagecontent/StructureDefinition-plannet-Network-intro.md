<h3>Implementation Guidance</h3>
<ul>
<li>The Network profile is based on USCore Organization, since there was no contradiction between the USCore profile and the Plan-Net requirements.  However, the NPI and CLIA identifier types, which are Must-Support, are clearly intended for provider organizations only and are not expected to be populated for other organization types.</li>
<li>When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text.
</li>
<li>Note that the relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multiple networks, and a network may be associated with many plans.
In this IG, this is modeled by having InsurancePlans reference networks (directionality of relationship supports this).
</li>
<li>To use the location-reference extension to indicate a network coverage area, the preferred form of reference is to create a Location instance with the State or region specified, and possibly provide a GeoJSON.
<li>Networks referenced with InsurancePlan.network apply to all InsurancePlan.plan cost sharing plans.   If InsurancePlan.network is not provided, each cost sharing plan must provide at least one network in InsurancePlan.plan.network.</li>
</ul>