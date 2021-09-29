Class ASTM.Host.Util Extends %RegisteredObject
{

/// Convert DateTime to ASTM format
ClassMethod DateTimeToASTM(input = {$horolog})
{
    quit $translate($zdatetime(input, 8), ": ", "")
}

}
