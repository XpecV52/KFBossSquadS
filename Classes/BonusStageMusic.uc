Class BonusStageMusic extends Actor;

var bool bInit;
var	sound mySong;

simulated function PostBeginPlay()
{
	Super.PostBeginPlay();
    SetTimer(3,False);
}

simulated function Timer()
{
	if( !bInit )
	{
		bInit = true;
        if(Class'KFBossSquadS'.Default.BonusStageSongPackage != "")
        {
            mySong = Sound(DynamicLoadObject(Class'KFBossSquadS'.Default.BonusStageSongPackage, class'Sound', True));
            AmbientSound = mySong;
        }
        SetTimer(1,True);
		return;
	}

    if( KFGameType(Level.Game).bWaveInProgress == True )
        return;

    Destroy();
}

defaultproperties
{
     bHidden=True
     bFullVolume=True
     SoundVolume=255
     SoundRadius=50000.000000
     TransientSoundVolume=0.000000
     bNetNotify=True
}
