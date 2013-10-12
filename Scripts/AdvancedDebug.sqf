dayz_spaceInterrupt = {
    private ["_dikCode", "_handled"];
    _dikCode = _this select 1;
    _handled = false;
 
    if (_dikCode == 0x44) then {
        if (debugMonitor) then {
            debugMonitor = false;
            hintSilent "";
        } else {[] spawn fnc_debug;};
    };
    _handled
};
 
fnc_debug = {
    debugMonitor = true;
    while {debugMonitor} do
    {
        _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
        if (player == vehicle player) then
        {
            _pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
        }
            else
        {
            _pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
        };
        hintSilent parseText format ["
        <t color='#ff5200' size='1.30' font='Bitstream' align='center'>yourservername</t><br/>
        <t color='#ffffff' size='1.15' font='Bitstream' align='center'>%1</t><br/><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Zombies Killed: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%2</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Headshots:</t><t color='#ff5200' size='1'font='Bitstream'align='right'>%3</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Survivors Killed: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%4</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Bandits Killed: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%5</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Blood: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%6</t><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>Humanity: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%7</t><br/><br/>
        <t color='#ffffff' size='1' font='Bitstream' align='left'>FPS: </t><t color='#ff5200' size='1' font='Bitstream' align='right'>%8</t><br/>
        <img size='4' image='%9'/><br/>
        <t size='0.8' font='Bitstream' align='center'>yourserverwebsite</t>",
        (name player),
        (player getVariable['zombieKills', 0]),
        (player getVariable['headShots', 0]),
        (player getVariable['humanKills', 0]),
        (player getVariable['banditKills', 0]),
        (player getVariable['USEC_BloodQty', r_player_blood]),
        (player getVariable['humanity', 0]),
        (round diag_fps),
        _pic];
        sleep 1;
    };
};
 
[] spawn fnc_debug;
