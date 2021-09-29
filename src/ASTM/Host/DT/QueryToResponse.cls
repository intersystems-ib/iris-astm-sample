Class ASTM.Host.DT.QueryToResponse Extends Ens.DataTransformDTL [ DependsOn = EnsLib.EDI.ASTM.Document ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.EDI.ASTM.Document' targetClass='EnsLib.EDI.ASTM.Document' sourceDocType='E1394:Q' targetDocType='E1394:P' create='new' language='objectscript' >
<assign value='"MyLIS"' property='target.{H:SenderNameOrId.SenderNameOrId}' action='set' />
<assign value='"ABCDEF"' property='target.{H:SenderNameOrId.SystemType}' action='set' />
<assign value='"V1.0A"' property='target.{H:SenderNameOrId.SoftwareVersion}' action='set' />
<assign value='"P"' property='target.{H:ProcessingId}' action='set' />
<assign value='"E1394-97"' property='target.{H:VersionNumber}' action='set' />
<assign value='##class(ASTM.Host.Util).DateTimeToASTM()' property='target.{H:DateAndTimeOfMessage}' action='set' />
<assign value='"1"' property='target.{Pgrp(1).P:SequenceNumber}' action='set' />
<assign value='"PID123456"' property='target.{Pgrp(1).P:LaboratoryAssignedPatientId}' action='set' />
<assign value='"Smith"' property='target.{Pgrp(1).P:PatientName.LastName}' action='set' />
<assign value='"John"' property='target.{Pgrp(1).P:PatientName.FirstName}' action='set' />
<assign value='"19631124"' property='target.{Pgrp(1).P:DateOfBirth}' action='set' />
<assign value='"M"' property='target.{Pgrp(1).P:PatientSex}' action='set' />
<assign value='"1"' property='target.{Pgrp(1).Ogrp(1).O:SequenceNumber}' action='set' />
<assign value='source.{Q:StartingRangeIdNumber.PatientId}' property='target.{Pgrp(1).Ogrp(1).O:SpecimenId}' action='set' />
<assign value='"^^^ERB\^^^Groupe\^^^Coag\^^^ESR\^^^HbA1c"' property='target.{Pgrp(1).Ogrp(1).O:UniversalTestId}' action='set' />
<assign value='"R"' property='target.{Pgrp(1).Ogrp(1).O:Priority}' action='set' />
<assign value='##class(ASTM.Host.Util).DateTimeToASTM()' property='target.{Pgrp(1).Ogrp(1).O:SpecimenCollectionDateAndTime}' action='set' />
<assign value='"N"' property='target.{Pgrp(1).Ogrp(1).O:ActionCode}' action='set' />
<assign value='"O"' property='target.{Pgrp().Ogrp().O:ReportTypes}' action='set' />
<assign value='"1"' property='target.{L:SequenceNumber}' action='set' />
<assign value='"N"' property='target.{L:TerminationCode}' action='set' />
</transform>
}

}
