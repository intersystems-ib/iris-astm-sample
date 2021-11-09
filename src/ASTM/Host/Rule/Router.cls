/// 
Class ASTM.Host.Rule.Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.VDocRuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.VDocRoutingEngine" production="ASTM.Host.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="Query Messages">
<constraint name="msgClass" value="EnsLib.EDI.ASTM.Document"></constraint>
<constraint name="docCategory" value="E1394"></constraint>
<constraint name="docName" value="Q"></constraint>
<when condition="1">
<send transform="" target="Instrument-Host Generate Reply"></send>
<return></return>
</when>
</rule>
<rule name="P Messages with R segment" disabled="false">
<constraint name="msgClass" value="EnsLib.EDI.ASTM.Document"></constraint>
<constraint name="docCategory" value="E1394"></constraint>
<constraint name="docName" value="P"></constraint>
<when condition="Document.{Pgrp(1).Ogrp(1).Rgrp(1).R}!=&quot;&quot;">
<debug value="&quot;R segment is present&quot;"></debug>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
