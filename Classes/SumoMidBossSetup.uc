class SumoMidBossSetup extends Object
    PerObjectConfig
    config(KFBossSquadS);

var config string BossSquad;
var config bool BonusStage;
var config float PlayerCountScale;

function ResetProperties()
{
	BossSquad="";
	BonusStage=False;
	PlayerCountScale=0.000000;
}

defaultproperties
{
}
