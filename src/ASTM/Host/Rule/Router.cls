/// 
Class ASTM.Host.Rule.Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.VDocRuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.VDocRoutingEngine" production="ASTM.Host.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="msgClass" value="EnsLib.EDI.ASTM.Document"></constraint>
<constraint name="docCategory" value="E1394"></constraint>
<constraint name="docName" value="Q"></constraint>
<when condition="1">
<send transform="" target="Instrument-Host Generate Reply"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
