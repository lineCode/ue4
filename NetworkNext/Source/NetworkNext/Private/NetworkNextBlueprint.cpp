/*
    Network Next SDK. Copyright © 2017 - 2023 Network Next, Inc.

    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following
    conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions
       and the following disclaimer in the documentation and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote
       products derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
    IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
    OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include "NetworkNextBlueprint.h"
#include "NetworkNextNetDriver.h"
#include "NetworkNextSocketServer.h"
#include "NetworkNextSocketClient.h"
#include "Runtime/Engine/Classes/GameFramework/PlayerController.h"
#include "Runtime/Engine/Classes/Engine/NetConnection.h"
#include "Engine/Classes/Engine/World.h"
#include "IPAddress.h"

// server events

void UNetworkNextBlueprint::UpgradePlayer(UObject* WorldContextObject, APlayerController* PlayerController, const FString& UserId)
{
    if (PlayerController == nullptr)
        return;

    if (WorldContextObject == nullptr)
        return;

    UWorld* World = WorldContextObject->GetWorld();

    if (World == nullptr)
        return;

    UNetworkNextNetDriver* NetDriver = Cast<UNetworkNextNetDriver>(World->GetNetDriver());

    if (NetDriver == nullptr)
        return;

    FNetworkNextSocketServer* ServerSocket = NetDriver->ServerSocket;

    if (ServerSocket == nullptr)
        return;

    UNetConnection* Connection = PlayerController->GetNetConnection();

    if (Connection == nullptr)
        return;

    ServerSocket->UpgradeClient(Connection->GetRemoteAddr(), UserId);
}

void UNetworkNextBlueprint::ServerEvent(UObject* WorldContextObject, APlayerController* PlayerController, uint64_t ServerEvents)
{
    if (PlayerController == nullptr)
        return;

    if (WorldContextObject == nullptr)
        return;

    UWorld* World = WorldContextObject->GetWorld();

    if (World == nullptr)
        return;

    UNetworkNextNetDriver* NetDriver = Cast<UNetworkNextNetDriver>(World->GetNetDriver());

    if (NetDriver == nullptr)
        return;

    FNetworkNextSocketServer* ServerSocket = NetDriver->ServerSocket;

    if (ServerSocket == nullptr)
        return;

    UNetConnection* Connection = PlayerController->GetNetConnection();

    if (Connection == nullptr)
        return;

    ServerSocket->ServerEvent(Connection->GetRemoteAddr(), ServerEvents);
}

// client events

void UNetworkNextBlueprint::ReportServer(UObject* WorldContextObject)
{
    if (WorldContextObject == nullptr)
        return;

    UWorld* World = WorldContextObject->GetWorld();

    if (World == nullptr)
        return;

    UNetworkNextNetDriver* NetDriver = Cast<UNetworkNextNetDriver>(World->GetNetDriver());

    if (NetDriver == nullptr)
        return;

    FNetworkNextSocketClient* ClientSocket = NetDriver->ClientSocket;

    if (ClientSocket == nullptr)
        return;

    ClientSocket->ReportServer();
}

float UNetworkNextBlueprint::GetLatency(UObject* WorldContextObject)
{
    if (WorldContextObject == nullptr)
        return 0.0f;

    UWorld* World = WorldContextObject->GetWorld();

    if (World == nullptr)
        return 0.0f;

    UNetworkNextNetDriver* NetDriver = Cast<UNetworkNextNetDriver>(World->GetNetDriver());

    if (NetDriver == nullptr)
        return 0.0f;

    FNetworkNextSocketClient* ClientSocket = NetDriver->ClientSocket;

    if (ClientSocket == nullptr)
        return 0.0f;

    return ClientSocket->GetLatency();
}

float UNetworkNextBlueprint::GetJitter(UObject* WorldContextObject)
{
    if (WorldContextObject == nullptr)
        return 0.0f;

    UWorld* World = WorldContextObject->GetWorld();

    if (World == nullptr)
        return 0.0f;

    UNetworkNextNetDriver* NetDriver = Cast<UNetworkNextNetDriver>(World->GetNetDriver());

    if (NetDriver == nullptr)
        return 0.0f;

    FNetworkNextSocketClient* ClientSocket = NetDriver->ClientSocket;

    if (ClientSocket == nullptr)
        return 0.0f;

    return ClientSocket->GetJitter();
}

float UNetworkNextBlueprint::GetPacketLoss(UObject* WorldContextObject)
{
    if (WorldContextObject == nullptr)
        return 0.0f;

    UWorld* World = WorldContextObject->GetWorld();

    if (World == nullptr)
        return 0.0f;

    UNetworkNextNetDriver* NetDriver = Cast<UNetworkNextNetDriver>(World->GetNetDriver());

    if (NetDriver == nullptr)
        return 0.0f;

    FNetworkNextSocketClient* ClientSocket = NetDriver->ClientSocket;

    if (ClientSocket == nullptr)
        return 0.0f;

    return ClientSocket->GetPacketLoss();
}
