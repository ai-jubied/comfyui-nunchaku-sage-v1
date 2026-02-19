#!/bin/bash
# Install ComfyUI-Nunchaku and the Nunchaku inference engine
# Supports: Ampere (A40, RTX 3090), Ada Lovelace (RTX 4090, L40), Blackwell (B200)

echo "STAGE: Checking Nunchaku Installation"
cd /workspace/ComfyUI/custom_nodes

# --- Clone the official ComfyUI-Nunchaku plugin ---
if [[ ! -d "ComfyUI-nunchaku" ]]; then
    echo "Installing ComfyUI-nunchaku plugin..."
    git clone --depth 1 https://github.com/nunchaku-ai/ComfyUI-nunchaku.git

    cd ComfyUI-nunchaku
    if [[ -f requirements.txt ]]; then
        echo "Installing ComfyUI-nunchaku requirements..."
        pip install -r requirements.txt || true
    fi
    cd ..
else
    echo "ComfyUI-nunchaku plugin already installed."
fi

# --- Install the Nunchaku engine (prebuilt wheel) ---
# Detect PyTorch version and Python version for the correct wheel
if ! python -c "import nunchaku" 2>/dev/null; then
    echo "Installing Nunchaku inference engine..."

    TORCH_VER=$(python -c "import torch; v=torch.__version__.split('+')[0].split('.')[:2]; print('.'.join(v))" 2>/dev/null || echo "")
    PY_VER=$(python -c "import sys; print(f'cp{sys.version_info.major}{sys.version_info.minor}')" 2>/dev/null || echo "cp312")

    if [[ -n "$TORCH_VER" ]]; then
        # Try latest stable release wheel from GitHub
        NUNCHAKU_VERSION="${NUNCHAKU_VERSION:-1.2.1}"
        WHEEL_URL="https://github.com/nunchaku-ai/nunchaku/releases/download/v${NUNCHAKU_VERSION}/nunchaku-${NUNCHAKU_VERSION}+torch${TORCH_VER}-${PY_VER}-${PY_VER}-linux_x86_64.whl"

        echo "Attempting: pip install $WHEEL_URL"
        if pip install "$WHEEL_URL"; then
            echo "✅ Nunchaku engine v${NUNCHAKU_VERSION} installed successfully."
        else
            echo "[WARN] Prebuilt wheel not found for torch${TORCH_VER}+${PY_VER}."
            echo "[INFO] You can install Nunchaku manually via the NunchakuWheelInstaller node in ComfyUI,"
            echo "       or download the correct wheel from: https://github.com/nunchaku-ai/nunchaku/releases"
        fi
    else
        echo "[WARN] Could not detect PyTorch version. Skipping Nunchaku engine install."
        echo "[INFO] Use the NunchakuWheelInstaller node in ComfyUI to install it."
    fi
else
    echo "Nunchaku engine already installed."
fi
