#include <a_samp>
#include "easy-dialog.inc"

main()
{

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