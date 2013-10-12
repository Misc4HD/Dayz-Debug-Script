Dayz-Debug-Script
=================

Here i whille show you how to install dayz debug scripts i have some simple scripts and some more advanced sow you whille have a chose.

I whille try to add new debug scrpits as soon as i find/create new whannes.

<h3>Installation</h3>

1.You need to download the fille AdvancedDebug.sqf,SimpleDebug ore create a the fille and pate the code in it (make sure it is .sqf)

2.You need to get your Mission Fille from your server

3.Get a PBO maneger <a href="http://www.armaholic.com/page.php?id=16369">HERE</a>

4.Extract your mission filles using the PBO manager

5.Inside the mission folder create a map called Scripts

6.Put the AdvancedDebug.sqf,SimpleDebug in it and rename it to custom_monitor.sqf (to make it easy if you use other filles thy all are called the same)

7.Than open init.sqf go to the bottom of the fille and add

    [] ExecVM "Scripts\custom_monitor.sqf";
    
8.Edit the name of the server "yourservername" and "yourserverwebsite"
 
