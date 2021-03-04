<img src="https://static.wixstatic.com/media/799fd4_0512b6edaeea4017a35613b4c0e9fc0b~mv2.jpg/v1/fill/w_1200,h_140,al_c,q_80,usm_0.66_1.00_0.01/networknext_logo_colour_black_RGB_tightc.jpg" alt="Network Next" width="600"/>

<br>

# Unreal Engine 4 Plugin

This repository contains the UE4 plugin for Network Next.

It's tested working with Unreal Engine 4.25.

# Usage

First, copy the entire **NetworkNext** folder into your **Plugins** directory.

Second, add the following to the bottom of **Config/DefaultEngine.ini**

    [/Script/Engine.Engine]
    !NetDriverDefinitions=ClearArray
    +NetDriverDefinitions=   (DefName="GameNetDriver",DriverClassName="/Script/NetworkNext.NetworkNextNetDriver",DriverClassNameFallback="/Script/NetworkNext.NetworkNextNetDriver")

    [/Script/NetworkNext.NetworkNextNetDriver]
    NextHostname=prod.spacecats.net
    CustomerPublicKey="M/NxwbhSaPjUHES+kePTWD9TFA0bga1kubG+3vg0rTx/3sQoFgMB1w=="
    CustomerPrivateKey="M/NxwbhSaPiXITC+B4jYjdo1ahjj5NEmLaBZPPCIKL4b7c1KeQ8hq9QcRL6R49NYP1MUDRuBrWS5sb7e+DStPH/exCgWAwHX"
    NetConnectionClassName="/Script/NetworkNext.NetworkNextConnection"

Finally, customize with your own keypair generated by running **keypair.exe** in the root directory.

*Welcome to Network Next!*
