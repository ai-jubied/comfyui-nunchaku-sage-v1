# ⚡ ComfyUI Pro — SageAttention + Nunchaku + LoRA Training

<p align="center">
  <strong>The fastest, most complete ComfyUI template on RunPod.</strong><br>
  <em>4-Bit Quantized Inference • SageAttention 2.0 • Browser-Based LoRA Training • Zero Config</em>
</p>

<p align="center">
  <a href="https://hub.docker.com/r/aijubied/comfyui-nunchaku-sage"><img src="https://img.shields.io/docker/pulls/aijubied/comfyui-nunchaku-sage?style=flat-square&logo=docker&logoColor=white&label=Docker%20Pulls&color=2496ED" alt="Docker Pulls"></a>
  <img src="https://img.shields.io/badge/CUDA-12.6-76B900?style=flat-square&logo=nvidia&logoColor=white" alt="CUDA 12.6">
  <img src="https://img.shields.io/badge/Python-3.12-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python 3.12">
  <img src="https://img.shields.io/badge/PyTorch-2.x-EE4C2C?style=flat-square&logo=pytorch&logoColor=white" alt="PyTorch">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License">
</p>

---

## 🎯 Why ComfyUI Pro?

Most RunPod templates give you a bare ComfyUI install. **ComfyUI Pro** gives you a production-ready AI studio:

| Feature | Vanilla ComfyUI | **ComfyUI Pro** |
|---------|:-:|:-:|
| SageAttention 2.0 (3x faster) | ❌ Manual compile | ✅ Pre-built & ready |
| 4-Bit quantized inference | ❌ Not included | ✅ Nunchaku v1.2 |
| LoRA training in browser | ❌ CLI-only | ✅ AI Toolkit UI |
| Model management UI | ❌ Manual upload | ✅ FileBrowser + HF Downloader |
| GPU monitoring & debugging | ❌ Terminal only | ✅ Crystools dashboard |
| Auto-updates on every boot | ❌ Manual | ✅ Automatic |
| Live setup progress page | ❌ Blank screen | ✅ Real-time log viewer |

> **Deploy once. Generate in minutes. Train LoRAs without leaving your browser.**

---

## 🚀 Overview

Experience **ultra-low latency** AI image and video generation with the most advanced acceleration stack available. This template combines **SageAttention 2.0** (up to 3x faster than FlashAttention2) with **Nunchaku** (MIT-HAN-LAB's 4-bit inference engine) to deliver maximum performance on NVIDIA GPUs.

Built for **FLUX.2**, **LTX-2**, **WAN2.2**, **Qwen**, **Z image Turbo**, and the latest quantized models — all pre-configured and ready to generate.

---

## ✨ Core Technologies

### 🔥 SageAttention 2.0

Ultra-efficient attention kernels using INT4/INT8/FP8 quantization with matrix smoothing.

- **3x faster** than FlashAttention2 on Ada Lovelace (RTX 4090)
- **4.5x faster** than xformers
- Negligible quality loss across image, video, and language models
- Pre-built wheels for **sm86** (A40, RTX 3090), **sm89** (RTX 4090, L40), and **sm120** (Blackwell)

### ⚔️ Nunchaku v1.2 (SVDQuant)

MIT-HAN-LAB's 4-bit inference engine — [ICLR 2025 Spotlight](http://arxiv.org/abs/2411.05007).

- **2–3x speedup** with 4-bit quantized diffusion models
- Multi-LoRA and ControlNet support
- Auto-detects GPU architecture and installs matching wheel

**Supported 4-Bit Models:**

| Model | Type | Notes |
|-------|------|-------|
| FLUX.1-dev | Text-to-Image | 4-bit quantized, LoRA compatible |
| FLUX.1-Kontext | Image Editing | Context-aware generation |
| Qwen-Image | Text-to-Image | Including Lightning variants |
| Qwen-Image-Edit | Image Editing | 4/8-step lightning models |
| Z-Image-Turbo | Text-to-Image | 20–30% perf boost in v1.2 |
| SDXL / SDXL-Turbo | Text-to-Image | Full 4-bit quantization |

### 💎 AI Toolkit (Ostris)

Professional LoRA training directly in your browser — no CLI needed.

- Train LoRAs for **FLUX.2**, **Qwen**, **LTX-2**, **Wan 2.2**, and more
- Configurable quantization (8-bit, 6-bit, 4-bit) for low-VRAM training
- Slider LoRA training (prompt-only, no dataset required)
- Built-in dataset management, job monitoring, and sample previews

---

## ⚡ Quick Start

1. **Deploy** → Choose an A40, RTX 4090, or other supported GPU on RunPod
2. **Wait** → First boot takes ~3–5 min (a live progress page shows each stage)
3. **Connect** → Click **HTTP Service → Port 8188** to open ComfyUI
4. **Upload models** → Use FileBrowser (Port 8080) or HuggingFace Downloader node
5. **Generate** → SageAttention + Nunchaku are automatically active. Just create!

---

## 🖥️ Recommended GPUs

| GPU | VRAM | Architecture | SageAttention | Nunchaku | Best For |
|-----|------|:----------:|:---:|:---:|----------|
| **A40** | 48 GB | Ampere (sm86) | ✅ | ✅ | Training + Inference |
| **RTX 4090** | 24 GB | Ada (sm89) | ✅ | ✅ | Fast image generation |
| **RTX 3090** | 24 GB | Ampere (sm86) | ✅ | ✅ | Budget-friendly |
| **L40 / L40S** | 48 GB | Ada (sm89) | ✅ | ✅ | Enterprise workloads |
| **A100** | 80 GB | Ampere (sm80) | ✅ | ✅ | Large video models |
| **H100** | 80 GB | Hopper (sm90) | ✅ | ✅ | Maximum throughput |

---

## 🔌 Service Ports

| Port | Service | Access Via |
|:----:|---------|------------|
| **8188** | ComfyUI | Main generation interface |
| **8888** | JupyterLab | Terminal & system admin |
| **8080** | FileBrowser | Drag-and-drop model uploads |
| **8675** | AI Toolkit | LoRA training browser UI |

---

## 🛠️ Pre-Installed Custom Nodes

| Node | Purpose |
|------|---------|
| [ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager) | Install, update, and manage all custom nodes |
| [ComfyUI-Crystools](https://github.com/crystian/ComfyUI-Crystools) | GPU/CPU monitoring, metadata, debugging |
| [ComfyUI-nunchaku](https://github.com/nunchaku-ai/ComfyUI-nunchaku) | 4-bit quantized model inference (SVDQuant) |
| [HuggingFace Downloader](https://github.com/jnxmx/ComfyUI_HuggingFace_Downloader) | One-click model downloads from HF |
| [Civicomfy](https://github.com/MoonGoblinDev/Civicomfy) | Civitai model browser & downloader |

---

## ⚙️ Environment Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `HF_TOKEN` | HuggingFace access token for gated models | `hf_xxxxx` |
| `CIVITAI_TOKEN` | Civitai API token for model downloads | `xxxxx` |
| `COMFYUI_BACKUP` | HuggingFace repo for backup/restore | `user/my-backup` |
| `RESTORE_BACKUP` | Restore from backup on first boot | `1` |
| `NUNCHAKU_VERSION` | Override Nunchaku engine version | `1.2.1` |

---

## 📂 Persistent Storage

Everything under `/workspace` survives pod restarts:

```
/workspace/
├── ComfyUI/              # ComfyUI installation
│   ├── models/           # Checkpoints, LoRAs, VAEs, embeddings
│   ├── custom_nodes/     # All custom nodes
│   ├── output/           # Generated images and videos
│   └── venv/             # Python virtual environment
└── ai-toolkit/           # AI Toolkit (Ostris)
    ├── repo/             # Source code
    └── venv/             # Isolated Python environment
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
| ComfyUI | Latest stable (auto-updated) |

---

## ❓ FAQ

<details>
<summary><strong>How long does first boot take?</strong></summary>
About 3–5 minutes. A live progress page on port 8188 shows real-time setup status so you know exactly what's happening.
</details>

<details>
<summary><strong>Are my models and outputs saved between restarts?</strong></summary>
Yes! Everything in <code>/workspace</code> is persisted. Models, outputs, custom nodes, settings — all survive pod stops and restarts.
</details>

<details>
<summary><strong>Can I use this for video generation?</strong></summary>
Absolutely. WanVideo 2.1/2.2 (both 14B and 1.3B), HunyuanVideo, and their Image-to-Video variants are all supported. For 48GB+ VRAM GPUs (A40, L40, A100), video generation works best.
</details>

<details>
<summary><strong>How do I train a LoRA?</strong></summary>
Open AI Toolkit on port 8675 in your browser. Upload your dataset, configure training parameters, and start training — all from the UI. No command line needed.
</details>

<details>
<summary><strong>What if my GPU architecture isn't listed?</strong></summary>
SageAttention and Nunchaku will fall back to pip installation. Most NVIDIA GPUs with compute capability 8.0+ are supported.
</details>

<details>
<summary><strong>Can I install more custom nodes?</strong></summary>
Yes! ComfyUI-Manager is pre-installed. Use it to browse, install, and update any custom node from the ComfyUI ecosystem directly within the UI.
</details>

---

## 🐳 Docker Image

```bash
docker pull aijubied/comfyui-nunchaku-sage:latest
```

---

<p align="center">
  <strong>Built by <a href="https://github.com/ai-jubied">aijubied</a> • For the Community</strong><br>
  <sub>⭐ Star this repo if it saves you time!</sub>
</p>
