
## **Additional Files You Should Include**

### **install.sh** (Optional installer)
```bash
#!/bin/bash

echo "Installing Wii Game Manager you need git btw..."

# Check for wit
if ! command -v wit &> /dev/null; then
    echo "Error: 'wit' is not installed."
    echo "Please install it first:"
    echo "  Arch: sudo pacman -S wit"
    echo "  Ubuntu: sudo apt install wit"
    exit 1
fi

# Copy scripts
sudo cp wii download /usr/local/bin/
sudo chmod +x /usr/local/bin/wii /usr/local/bin/download

echo "✅ Installation complete!"
echo ""
echo "Usage:"
echo "  wii           # First run will setup paths"
echo "  download      # Browse Wii games"
echo ""
echo "Enjoy your automated Wii setup! 🎮"
