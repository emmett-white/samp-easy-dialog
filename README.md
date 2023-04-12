# samp-easy-dialog

[![sampctl](https://img.shields.io/badge/sampctl-samp--easy--dialog-2f2f2f.svg?style=for-the-badge)](https://github.com/emmett-white/samp-easy-dialog)

## Installation

Simply install to your project:

```bash
sampctl package install emmett-white/samp-easy-dialog
```

Include in your code and begin using the library:

```pawn
#include <easy-dialog>
```

## Usage

```pawn
#include "easy-dialog.inc"

public OnPlayerConnect(playerid)
{
    new string: name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string: name, sizeof name);

    Dialog_Show(playerid, "DIALOG_CONNECT", DIALOG_STYLE_MSGBOX,
        "Title", "%s, welcome!", ">>", "X", string: name
    );

    return 1;
}

Dialog:DIALOG_CONNECT(const playerid, response, listitem, string: inputtext[])
{
    if (!response) {
        SendClientMessage(playerid, -1, "X pressed");
        return 1;
    }

    SendClientMessage(playerid, -1, ">> pressed");

    return 1;
}
```

## Testing

To test, simply run the package:

```bash
sampctl package run
```
