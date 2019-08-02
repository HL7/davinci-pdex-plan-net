<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile InsurancePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:InsurancePlan</sch:title>
    <sch:rule context="f:InsurancePlan">
      <sch:assert test="count(f:ownedBy) &gt;= 1">ownedBy: minimum cardinality of 'ownedBy' is 1</sch:assert>
      <sch:assert test="count(f:administeredBy) &gt;= 1">administeredBy: minimum cardinality of 'administeredBy' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan</sch:title>
    <sch:rule context="f:InsurancePlan">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label</sch:assert>
      <sch:assert test="count(f:identifier | f:name) &gt; 0">The organization SHALL at least have a name or an idendtifier, and possibly more than one</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.contact</sch:title>
    <sch:rule context="f:InsurancePlan/f:contact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.coverage.benefit.limit</sch:title>
    <sch:rule context="f:InsurancePlan/f:coverage/f:benefit/f:limit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.generalCost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:generalCost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>InsurancePlan.plan.specificCost.benefit.cost</sch:title>
    <sch:rule context="f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
