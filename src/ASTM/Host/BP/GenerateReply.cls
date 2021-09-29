/// 
Class ASTM.Host.BP.GenerateReply Extends Ens.BusinessProcessBPL [ DependsOn = ASTM.Host.BP.GenerateReplyContext ]
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='EnsLib.EDI.ASTM.Document' response='EnsLib.EDI.ASTM.Document' contextsuperclass='ASTM.Host.BP.GenerateReplyContext' height='2000' width='2000' >
<sequence xend='200' yend='450' >
<transform name='Transform Q to P' class='ASTM.Host.DT.QueryToResponse' source='request' target='response' xpos='200' ypos='250' />
<code name='Some Code Change' xpos='200' ypos='350' >
<annotation><![CDATA[Make some changes in response using a Method]]></annotation>
<![CDATA[  set sc = context.MakeSomeChange(.response)]]>
</code>
</sequence>
</process>
}

}
