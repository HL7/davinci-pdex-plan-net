### Background

Provider directories play a critical role in enabling identification of individual providers and provider organizations, as well as characteristics about them. Provider directories support a variety of use cases, including:
<ul>
<li>Patient/Payer focused</li>
<ul><li>Find provider accessibility information (specialty, office hours, languages spoken, taking patients) - enables individuals and consumers to find contact and other accessibility information for individual healthcare providers and/or healthcare organizations
</li>
<li>Relationship between provider and insurance plan (insurance accepted) or plan and provider (network) - enables individual healthcare providers, organizations, and payers to discover the relationships between providers, organizations, and payers, as well as additional details about the relationships and entities involved
</li>
</ul>
<li>Basic Information Exchange</li>
<ul>
<li>Enable electronic exchange (e.g. discovery of electronic endpoints such as IHE/EHR endpoints, FHIR server URLs, Direct addresses) - enables the electronic exchange of health information by supporting the ability to discover electronic service information including electronic endpoints or electronic addresses</li>
<li>Find an individual and/or organization (even if no electronic endpoint is available) - enables users to find contact and other identifying information about healthcare organizations and individual healthcare providers</li>
</ul>
</ul>
<p><br />
This IG addresses two actors:</p>
<ul>
<li>Health Plan API Actor:  A payer publishing a directory of its provider networks through a FHIR endpoint.</li>
<li>Application Actor:  A third party using the API published by a payer to provide useful views of the payer's provider networks for end users.</li>
</ul>

For anticipated query use cases, please see <a href="implementation.html#Representing">Representing and Searching Provider Data</a>.
