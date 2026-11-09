# Teal Pill

An island for KDE Plasma 6: a pill in the panel with what is playing, and what else is going
on. It works with every player that speaks MPRIS: Spotify, Elisa, Haruna, mpv, Firefox, Chromium and Brave…

![Teal Pill: the pill in the top bar and its card](preview/teal-pill.png)

- **The pill**: the cover and bars that sway while music plays; on hover, it widens to show
  the title, or keeps it shown if you choose so. Middle click plays or pauses, the wheel
  sets the volume, the mouse's back and forward buttons skip.
- **The card**, on click: it comes out just under the pill, which stays there to fold it back.
  The cover, the title and the artist; the progress between the times; previous, play/pause,
  next; a button that opens the player; the lyrics. With several players open, each one is
  there to pick.
- **What else is going on**:
  - plugging the charger in or out widens the pill for a moment, in green, with the
    battery's level;
  - connecting headphones widens it for a moment, with their battery;
  - so does the power profile changing: `game-performance` holds it during a game;
  - colored signs: a peach microphone while an app records, a green camera while
    one films, a mauve screen while it is shared or recorded. These three are always on, and
    the tooltip and the card say which app it is;
  - a yellow disk, and a warning at the start, when the system was started from a snapshot;
  - copies and downloads get a bubble of their own beside the pill, their progress
    around it.
- **The cover's color**: the dancing bars and the progress take the cover's color, as the [Catppuccin](https://catppuccin.com) Mocha color of the same
  hue. Every album has its color, always within the palette; gray covers keep teal.
- **Synced lyrics**: from [lrclib.net](https://lrclib.net), a free and open database. Nothing
  is sent until you open them; then, while the card is open, the song's title and artist are.
  The line being sung stays centered and lit.

Made for [Lagoon](https://github.com/elomkdn/lagoon-kde), at home in any Plasma
theme. In English and French.

## Install

Teal Pill needs only Plasma 6.

- **A clone of the repository**:

  ```sh
  git clone https://github.com/elomkdn/teal-pill.git
  cd teal-pill
  ./install.sh
  ```

  To update: `git pull`, `./install.sh`, then log out and back in. To remove:
  `./install.sh --uninstall`.

- **The release file**, offline: download `teal-pill.plasmoid` from the
  [releases](https://github.com/elomkdn/teal-pill/releases), then right-click a panel,
  *Add Widgets…*, *Get New Widgets…*, *Install Widget From Local File…*, and pick it. Or:

  ```sh
  kpackagetool6 -t Plasma/Applet -i teal-pill.plasmoid
  ```

Then right-click a panel, *Add Widgets…*, **Teal Pill**.

## Settings

| Setting | Default |
|---|---|
| Players to follow, picked among those open | the one playing |
| Show in the panel when nothing plays | no |
| Always show the title in the panel, not only on hover | no |
| Accent from the cover | yes |
| In the island: charger, transfers, headphones, power profile, snapshot | yes |

## Credits

Based on [PlasMusic Toolbar](https://github.com/ccatterina/plasmusic-toolbar) by Claudio
Catterina (GPL-3.0): `Player.qml`, which follows the MPRIS players, is his, unchanged. The
interface is new.

## License

[GPL-3.0-or-later](LICENSE).
