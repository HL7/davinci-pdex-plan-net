<h3>Implementation Guidance</h3>
<ul>
<li>When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text.
</li>
<li>Note that the relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multiple networks, and a network may be associated with many plans.
In this IG, this i s modeled by having InsurancePlans reference networks (directionality of relationship supports this).
</li>
</ul>