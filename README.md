# 📷 VISTA: Versatile Integrated System for Tracking Applications

## 🔍 Overview

**VISTA** is a flexible, scalable, and hardware-agnostic software system that transforms almost any device with an operating system, a camera, and internet access into a node of an optical motion-capture network.
The system is designed to support **IR-based marker tracking** with performance comparable to commercial systems, while remaining **low-cost**, **modular**, and **easy to deploy**.

VISTA enables real-time capture in heterogeneous environments such as research labs, classrooms, industry floors, VR setups, and robotics arenas.

---

## ✨ Features

- 🎯 **Marker-based Tracking**: capture reflective or LED-based IR markers using affordable hardware. Easily convert your room, lab, or manufacturing space into an optical tracking arena.
- 🧩 **Heterogeneous Camera Support**: use cameras with different models, framerates, image resolutions, or sensor types. VISTA automatically synchronizes and handles data from diverse sources.
- 📦 **Containerized & Portable**: thanks to Docker, VISTA runs consistently across multiple platforms — laptops, desktops, SBCs, and embedded devices.
- 🌐 **Distributed Capture Network**: each device becomes a client node that streams tracking data to a central server for aggregation, calibration, and reconstruction.
- 📁 **Automatic Device Management**: clients automatically register themselves with the central host, simplifying multi-device deployments.

---

## 🧱 Required Materials

To assemble a minimal working DIY tracking arena, you will need:

- 📸 Cameras: at least **two** cameras (USB webcams, machine-vision cameras, or board cameras)
- 🌑 Infrared Setup:
  - IR filter on each camera
  - **If using reflective markers**: Add an IR ringlight to each camera
  - **If using LED markers**: Only the filter is necessary
 
- 💻 Capture Nodes: any hardware that supports image capture and internet access, such as:
  - A laptop with a built-in webcam and an external USB camera
  - A desktop computer using multiple USB cameras
  - Four Raspberry Pi devices each equipped with a raspcam, plus a desktop server

---

## 🧩 System Architecture

### Client Nodes

Each capture device runs a small VISTA client container. Responsibilities include:

- Acquiring frames from local camera
- Pre-processing IR images
- Detecting markers
- Streaming results to the server

### Central Server

The central host performs:

- Client discovery and registration
- Global calibration of the capture volume
- Multi-view triangulation
- Real-time global tracking
- Logging and dataset creation

---

## ⚙️ Setup & Deployment

### 1️⃣ Build the Client Docker Image

On every capture device:

```bash
docker build -t vista-client .
```

### 2️⃣ Run the Client Container

```bash
docker run --net=host --privileged vista-client
```

The client automatically detects attached cameras and connects to the central server.

### 3️⃣ Prepare the IR Visual Markers

* Turn on the LED markers **or**
* Turn on the IR ringlights if using reflective markers

### 4️⃣ Configure the Central Server

Run the VISTA server container:

```bash
docker run --net=host vista-server
```

### 5️⃣ Session Setup

Once the server confirms all clients are online, begin the session setup on the GUI:
1. For each capture device, run an **intrinsic calibration** routine using [this checkerboard pattern]() and follow the instructions on the screen;
2. Run an **extrinsic calibration** routine using [this wand model]() and follow the instructions on the screen;
3. Run an **update reference** routine using [this wand model]() and follow the instructions on the screen;
4. Start a **capture** routine! 

---

## 📐 Calibration

VISTA supports multiple calibration workflows:

* **Static marker grid** calibration
* **Per-camera alignment and distortion estimation**
* **Wand-based calibration** (three markers)

Calibration files are automatically saved and distributed to all clients. You may also save a global calibration result.

---

## 📡 Networking Requirements

* A stable network with low latency (wired recommended)
* Server and clients must be reachable (same LAN or VPN)

---

## 🧪 Testing Your Setup

Before full capture:

- Verify frame rate of each camera
- Check IR illumination uniformity
- Ensure each client connects to the server
- Validate that markers appear in processed frames

Tools included:

- Live preview
- Marker detection debug mode
- Per-camera diagnostics

---
