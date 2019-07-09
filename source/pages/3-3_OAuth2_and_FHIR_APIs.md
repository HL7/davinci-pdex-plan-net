---
title: 3-3 OAuth2 and FHIR APIs
layout: default
active: 3-3 OAuth2 and FHIR APIs
---

The well defined mechanism for enabling Member/Patient authorization to share information with an application using the FHIR API is to use OAuth2.0 as the Authorization protocol. The member **SHALL** authenticate using credentials they have been issued by, or are accepted by the Health Plan. This **MAY** be the member's customer portal credentials.

After authenticating the Member **SHALL** be presented with an Authorization screen that enables them to approve the sharing of some or all information with the Third Party Application that has client application credentials registered with the Health Plan.

After successfully authorizing an application an Access Token and Optional Refresh Token **SHALL** be returned to the requesting application. 

The requesting application **SHALL** use the access token to access the Health Plan's secure FHIR API to download the information that the Member is allowed to access. 

The Health Plan **MAY** choose to make the Healthcare and Pharmacy Network directory resources available without requiring Member authorization. 