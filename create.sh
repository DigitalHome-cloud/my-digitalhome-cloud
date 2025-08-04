#!/bin/bash

# Set root directory (relative to repo root)
ROOT="templates/circuits/nfc15100"

# Create the directory structure
echo "Creating directory structure..."
mkdir -p "$ROOT/assets/icons/circuits"
mkdir -p "$ROOT/assets/icons/install"
mkdir -p "$ROOT/assets/icons/networks"

# Create placeholder SVGs
echo "Creating placeholder icons..."
touch "$ROOT/assets/icons/circuits/lighting.svg"
touch "$ROOT/assets/icons/circuits/sockets.svg"
touch "$ROOT/assets/icons/circuits/washing-machine.svg"
touch "$ROOT/assets/icons/circuits/dryer.svg"
touch "$ROOT/assets/icons/circuits/fridge.svg"
touch "$ROOT/assets/icons/circuits/oven.svg"
touch "$ROOT/assets/icons/circuits/heating.svg"
touch "$ROOT/assets/icons/circuits/water-heater.svg"
touch "$ROOT/assets/icons/circuits/ev-charger.svg"

touch "$ROOT/assets/icons/install/encastre.svg"
touch "$ROOT/assets/icons/install/gaine.svg"
touch "$ROOT/assets/icons/install/apparent.svg"

touch "$ROOT/assets/icons/networks/lighting-loop.svg"

# Copy special-circuits.template.json if provided
if [ -f "./special-circuits.template.json" ]; then
  cp "./special-circuits.template.json" "$ROOT/special-circuits.template.json"
  echo "✔ Copied special-circuits.template.json to $ROOT/"
else
  echo "⚠ special-circuits.template.json not found in current directory."
fi

echo "✅ NF C 15-100 template structure created!"
