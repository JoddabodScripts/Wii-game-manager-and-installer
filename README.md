# Wii Game Manager

Some bash scripts I threw together to manage Wii games for USB Loader GX. Makes getting games from my computer to the Wii less annoying.

## What it does

- **Organizes my mess**: Takes WBFS files and puts them where USB Loader GX expects them
- **Moves things automatically**: Grabs games from my Downloads folder and puts them on the USB drive
- **Shows my collection**: Lists what games I already have
- **Finds new games**: Opens Vimm's Lair so I can browse
- **Asks before deleting**: Won't remove my files unless I say yes

## Install it

You'll need git installed first, then just run:

git clone https://github.com/JoddabodScripts/Wii-game-manager-and-installer.git
cd Wii-game-manager-and-installer
./install.sh
```

The install script handles everything - making the scripts executable and setting them up in your path.

## First run setup

The first time you run `wii`, it'll ask where you keep things:

# Run it once
wii

# Tell it:
# 1. Where your Downloads folder is (mine's ~/Downloads)
# 2. Where your USB drive mounts (like /media/you/WII)
```

## How I use it

1. **Find a game:**

   download --search "Mario Kart"
   ```

2. **Download it** to my Downloads folder (as a .wbfs file)

3. **Organize it:**

   wii
   ```
   (This moves, renames, and sorts everything automatically)

4. **Check what I've got:**

   wii --status
   ```

5. **Plug the USB into the Wii and play** 🎮

## Commands I use

### The main script (`wii`)

wii                    # Organize new games
wii --status          # See what games I have
wii --config          # Check my current settings
wii --reconfigure     # Change my folder paths
wii --clean           # Get rid of duplicate files
wii --paths           # Show where everything is
wii --help           # Remind me what I can do
```

### Finding games (`download`)
download                    # Open Vimm's Lair
download --search "game"   # Look for something specific
download --browse          # Scroll through all Wii games
download --suggest         # Get some recommendations
download --tools           # Wii homebrew stuff
download --help           # See all options
```

## How files get organized

After running `wii`, my USB drive looks like this:

```
my-usb-drive/
├── WBFS/                 # Where WBFS files go
└── wbfs/                # What USB Loader GX needs
    ├── Game Name [GAMEID]/
    │   └── GAMEID.wbfs
    ├── Another Game [ANOTHERID]/
    │   └── ANOTHERID.wbfs
    └── ...
```

## Where settings are saved

The script keeps my folder paths in `~/.wii_manager_config`:


DOWNLOADS_DIR="/where/i/download/stuff"
SOURCE_DIR="/usb/WBFS"
DEST_DIR="/usb/wbfs"
```

To change them:

# Either run this
wii --reconfigure

# Or edit the file directly
nano ~/.wii_manager_config
```

## What you need

- Linux (I use Arch)
- `wit` (Wii ISO Tools) - install script handles this
- A USB drive formatted as FAT32
- A Wii with USB Loader GX
- Basic comfort with terminal

## If something's broken or you have ideas

1. Check if there's already an issue about it
2. Fork the repo
3. Make your changes
4. Send a pull request

## Thanks to

- Wiimm for the `wit` tool
- Vimm's Lair for keeping games available
- Everyone in the Wii homebrew scene

Enjoy your games! 🎮

*Note: Only download games you actually own. Support the people who make games!*
