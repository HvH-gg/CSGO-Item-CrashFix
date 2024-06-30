#include <sourcemod>

public Plugin:myinfo =
{
	name = "HvH.gg Item Crash Fix",
	author = "imi-tat0r",
	description = "Fixes the crash related to unsupported inventory items",
	version = "1.0",
}

public OnPluginStart()
{
    HookUserMessage(GetUserMessageId("SendPlayerItemFound"), ItemFoundMsg, true);
}

public Action:ItemFoundMsg(UserMsg:msg_id, Handle:pb, const players[], playersNum, bool:reliable, bool:init) 
{
    return Plugin_Handled;
}