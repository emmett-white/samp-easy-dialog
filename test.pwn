#include <a_samp>

#define YSI_NO_HEAP_MALLOC
#define YSI_NO_OPTIMISATION_MESSAGE

#include "easy-dialog.inc"

main()
{
    print("main()");
}

public OnPlayerConnect(playerid)
{
    new string: name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string: name, sizeof name);

    Dialog_Show(playerid, "DIALOG_CONNECT", DIALOG_STYLE_MSGBOX,
        "Title", "%s, welcome!", ">>", "X", string: name
    );

    return 1;
}

Dialog: DIALOG_CONNECT(const playerid, response, listitem, string: inputtext[])
{
    if (!response)
        return SendClientMessage(playerid, -1, "response == 0 called");

    SendClientMessage(playerid, -1, "response == 1 called");

    return 1;
}