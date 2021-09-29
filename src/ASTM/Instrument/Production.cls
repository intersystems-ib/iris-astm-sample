Class ASTM.Instrument.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="ASTM.Instrument.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="In File" Category="" ClassName="EnsLib.EDI.ASTM.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">ASTM Instrument Out</Setting>
    <Setting Target="Adapter" Name="FilePath">/test/instrument-in</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.astm</Setting>
  </Item>
  <Item Name="ASTM Instrument Connect" Category="" ClassName="EnsLib.EDI.ASTM.Service.TCPService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">Out File</Setting>
    <Setting Target="Host" Name="ArchiveIO">0</Setting>
    <Setting Target="Adapter" Name="AllowedIPAddresses">!localhost</Setting>
    <Setting Target="Adapter" Name="StayConnected">1</Setting>
    <Setting Target="Adapter" Name="GetReply">1</Setting>
  </Item>
  <Item Name="ASTM Instrument Out" Category="" ClassName="EnsLib.EDI.ASTM.Operation.TCPOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="PartnerService">ASTM Instrument Connect</Setting>
  </Item>
  <Item Name="Out File" Category="" ClassName="EnsLib.EDI.ASTM.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/test/instrument-out</Setting>
  </Item>
</Production>
}

}
