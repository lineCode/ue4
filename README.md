<img src="https://static.wixstatic.com/media/799fd4_0512b6edaeea4017a35613b4c0e9fc0b~mv2.jpg/v1/fill/w_1200,h_140,al_c,q_80,usm_0.66_1.00_0.01/networknext_logo_colour_black_RGB_tightc.jpg" alt="Network Next" width="600"/>

<br>

# Unreal Engine 4 Plugin

This repository contains the UE4 plugin for Network Next. 

It's currently tested to work with Unreal Engine version 4.16. We welcome PRs to upgrade it to more recent versions of UE4.

To install the plugin:

1. Copy plugin `NetworkNext` directory to your game plugins directory, such that `<project root>/Plugins/NetworkNext/NetworkNext.uplugin` exists

2. Edit DefaultConfig.ini to add the following lines
```
[/Script/Engine.Engine]
!NetDriverDefinitions=ClearArray
+NetDriverDefinitions=(DefName="GameNetDriver",DriverClassName="/Script/NetworkNext.NetworkNextNetDriver",DriverClassNameFallback="OnlineSubsystemUtils.IpNetDriver")
```

3. Welcome to __awesometown__. Please email glenn@networknext.com for next steps!
