# ⚡ Ultimate ComfyUI: SageAttention & Nunchaku

**The Fastest ComfyUI Template on RunPod.**
*4-Bit Quantized Models • SageAttention 2.0 • LoRA Training • Zero Setup*

---

## 🚀 Overview

Experience **ultra-low latency** AI image and video generation with the most advanced acceleration stack available. This template combines **SageAttention 2.0** (up to 3x faster than FlashAttention2) with **Nunchaku** (MIT-HAN-LAB's 4-bit inference engine) to deliver maximum performance on NVIDIA GPUs.

Built for **FLUX.1**, **Stable Diffusion 3.5**, **SDXL**, **HunyuanVideo**, **WanVideo**, and the latest quantized models — all pre-configured and ready to generate in minutes.

---

## ✨ Key Technologies

### 🔥 SageAttention 2.0
Ultra-efficient attention kernels using INT4/INT8/FP8 quantization with matrix smoothing.

*   **3x faster** than FlashAttention2 on Ada Lovelace (RTX 4090)
*   **4.5x faster** than xformers
*   Negligible quality loss across image, video, and language models
*   Pre-built wheels included for **sm86** (A40, RTX 3090), **sm89** (RTX 4090, L40), and **sm120** (Blackwell)

### ⚔️ Nunchaku v1.2 (SVDQuant)
MIT-HAN-LAB's 4-bit inference engine — [ICLR 2025 Spotlight paper](http://arxiv.org/abs/2411.05007).

*   **2–3x speedup** with 4-bit quantized diffusion models
*   Multi-LoRA and ControlNet support
*   Auto-detects GPU architecture and installs matching wheel

**Supported 4-Bit Models:**

| Model | Type | Notes |
|-------|------|-------|
| FLUX.1-dev | Text-to-Image | 4-bit quantized, LoRA compatible |
| FLUX.1-Kontext | Image Editing | Context-aware generation |
| Qwen-Image | Text-to-Image | Including Lightning variants |
| Qwen-Image-Edit | Image Editing | 4/8-step lightning models |
| Z-Image-Turbo | Text-to-Image | 20–30% perf boost in v1.2 |
| SDXL / SDXL-Turbo | Text-to-Image | "SDXL-like speed" on 4-bit models |

### 💎 AI Toolkit (Ostris)
Professional LoRA training directly in your browser — no CLI needed.

*   Train LoRAs for **FLUX**, **SD 3.5**, **SDXL**, **Wan 2.2**, and more
*   Configurable quantization (8-bit, 6-bit, 4-bit) for low-VRAM training
*   Slider LoRA training (prompt-only, no dataset required)
*   Built-in dataset management, job monitoring, and sample previews

---

## 🎬 Supported Workflows

| Workflow | Models | Status |
|----------|--------|--------|
| **Text-to-Image** | FLUX.1, SD 3.5, SDXL, Qwen-Image, Z-Image | ✅ Ready |
| **Image-to-Image** | FLUX.1-Kontext, Qwen-Image-Edit | ✅ Ready |
| **Text-to-Video** | WanVideo 2.1/2.2 (14B & 1.3B), HunyuanVideo | ✅ Ready |
| **Image-to-Video** | WanVideo I2V, HunyuanVideo I2V | ✅ Ready |
| **LoRA Training** | FLUX, SD 3.5, SDXL, Wan 2.2 | ✅ Ready |
| **4-Bit Inference** | All Nunchaku quantized models | ✅ Ready |

---

## 🖥️ Recommended GPUs

| GPU | VRAM | Architecture | SageAttention | Nunchaku | Best For |
|-----|------|-------------|---------------|----------|----------|
| **A40** | 48 GB | Ampere (sm86) | ✅ 2.2.0 | ✅ INT4 | Training + Inference |
| **RTX 4090** | 24 GB | Ada (sm89) | ✅ 2.2.0 | ✅ INT4 | Fast image gen |
| **RTX 3090** | 24 GB | Ampere (sm86) | ✅ 2.2.0 | ✅ INT4 | Budget option |
| **L40 / L40S** | 48 GB | Ada (sm89) | ✅ 2.2.0 | ✅ INT4 | Enterprise workloads |
| **A100** | 80 GB | Ampere (sm80) | ✅ pip | ✅ INT4 | Large models + video |
| **H100** | 80 GB | Hopper (sm90) | ✅ pip | ✅ INT4/FP4 | Maximum throughput |

---

## 🔌 Service Ports

| Port | Service | Description |
|------|---------|-------------|
| **8188** | ComfyUI | Main generation interface |
| **8888** | JupyterLab | System admin & terminal |
| **8080** | FileBrowser | Upload/download models easily |
| **8675** | AI Toolkit | LoRA training browser UI |

---

## 🛠️ Pre-Installed Custom Nodes

| Node | Purpose |
|------|---------|
| ✅ [ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager) | Install, update, and manage all custom nodes |
| ✅ [ComfyUI-Crystools](https://github.com/crystian/ComfyUI-Crystools) | GPU/CPU monitoring, metadata, debugging |
| ✅ [ComfyUI-nunchaku](https://github.com/nunchaku-ai/ComfyUI-nunchaku) | 4-bit quantized model inference (SVDQuant) |
| ✅ [HuggingFace Downloader](https://github.com/jnxmx/ComfyUI_HuggingFace_Downloader) | One-click model downloads from HF |
| ✅ [Civicomfy](https://github.com/MoonGoblinDev/Civicomfy) | Civitai model browser & downloader |

---

## ⚡ Quick Start

1.  **Deploy** on RunPod with an A40, RTX 4090, or other supported GPU.
2.  **Wait** for setup (~3–5 min first boot). A live progress page shows each stage.
3.  **Launch** via Connect → HTTP Service (Port 8188).
4.  **Upload** your checkpoints using FileBrowser (Port 8080) or HuggingFace Downloader.
5.  **Generate** immediately — SageAttention and Nunchaku are pre-configured.

### Optional Environment Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `HF_TOKEN` | HuggingFace access token for gated models | `hf_xxxxx` |
| `CIVITAI_TOKEN` | Civitai API token for model downloads | `xxxxx` |
| `COMFYUI_BACKUP` | HF repo for backup/restore | `user/my-backup` |
| `RESTORE_BACKUP` | Enable first-boot restore | `1` |
| `NUNCHAKU_VERSION` | Override Nunchaku engine version | `1.2.1` |

---

## 📂 Persistent Storage

Everything in `/workspace` survives pod restarts:

```
/workspace/
├── ComfyUI/           # ComfyUI installation
│   ├── models/        # All checkpoints, LoRAs, VAEs
│   ├── custom_nodes/  # All custom nodes
│   ├── output/        # Generated images and videos
│   └── venv/          # Python virtual environment
└── ai-toolkit/        # AI Toolkit installation
    ├── repo/           # Source code
    └── venv/           # Isolated Python environment
```

---

## 🏗️ Technical Stack

| Component | Version |
|-----------|---------|
| Base Image | `nvidia/cuda:12.6.1-cudnn-devel-ubuntu22.04` |
| Python | 3.12 |
| PyTorch | 2.x (CUDA 12.4) |
| Node.js | 22.22.0 LTS |
| SageAttention | 2.2.0 |
| Nunchaku | 1.2.1 |
| ComfyUI | Latest (auto-updated) |

---

> *Maintained by [aijubied](https://github.com/ai-jubied) • Built for the Community*
