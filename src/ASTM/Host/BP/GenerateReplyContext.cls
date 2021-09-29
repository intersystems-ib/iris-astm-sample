Class ASTM.Host.BP.GenerateReplyContext Extends Ens.BP.Context
{

/// Make some dummy change using EnsLib.EDI.ASTM.Document
Method MakeSomeChange(Output msg As EnsLib.EDI.ASTM.Document)
{
    set ret = $$$OK
    try {
        do msg.SetValueAt("Mayfield", "Pgrp(1).P:5.1")
        do msg.SetValueAt("Baker", "Pgrp(1).P:5.2")
        
    } catch ex {
        set ret = ex.AsStatus()
    }
    quit ret
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
