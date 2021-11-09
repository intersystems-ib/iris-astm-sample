Class ASTM.Host.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="ASTM.Host.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="ASTM Host Listen" Category="" ClassName="EnsLib.EDI.ASTM.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">ASTM Router</Setting>
    <Setting Target="Host" Name="ArchiveIO">0</Setting>
    <Setting Target="Adapter" Name="AllowedIPAddresses"></Setting>
    <Setting Target="Adapter" Name="StayConnected">1</Setting>
    <Setting Target="Adapter" Name="GetReply">1</Setting>
    <Setting Target="Host" Name="ReplyMode">App</Setting>
  </Item>
  <Item Name="Out File" Category="" ClassName="EnsLib.EDI.ASTM.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/shared/out</Setting>
  </Item>
  <Item Name="Instrument-Host Generate Reply" Category="" ClassName="ASTM.Host.BP.GenerateReply" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="ASTM Router" Category="" ClassName="EnsLib.MsgRouter.VDocRoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">ASTM.Host.Rule.Router</Setting>
    <Setting Target="Host" Name="ResponseFrom">Instrument-Host Generate Reply</Setting>
    <Setting Target="Host" Name="RuleLogging">rd</Setting>
  </Item>
</Production>
}

}
