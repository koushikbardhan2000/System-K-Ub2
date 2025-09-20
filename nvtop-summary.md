# Summary of Recent Commands

## 1. Unloading NVIDIA Kernel Modules
- Ensure no GUI or GPU-using processes remain:
  ```bash
  ps aux | grep -E 'Xorg|wayland|gnome-shell|kwin|nvidia'
  sudo pkill -f Xorg
  sudo pkill -f wayland
  ```
- Switch to text-only mode:
  ```bash
  sudo systemctl isolate multi-user.target
  ```
- Unload NVIDIA modules in dependency order:
  ```bash
  sudo modprobe -r nvidia_drm
  sudo modprobe -r nvidia_modeset
  sudo modprobe -r nvidia_uvm
  sudo modprobe -r nvidia
  ```
- Verify modules are unloaded:
  ```bash
  lsmod | grep nvidia
  ```
- After successful unload, clean up and reinstall drivers:
  ```bash
  sudo apt purge '*nvidia*' '*libnvidia*'
  sudo apt autoremove
  sudo apt autoclean
  sudo reboot
  sudo apt update
  sudo apt install nvidia-driver-580-open
  sudo reboot
  nvidia-smi
  nvtop
  ```

## 2. Rebooting into Multi-User Mode

### One-Time Switch (Temporary)
- Enter text-only target without reboot:
  ```bash
  sudo systemctl isolate multi-user.target
  ```
- Return to graphical mode:
  ```bash
  sudo systemctl isolate graphical.target
  ```

### Permanent Default Change
- Set default to multi-user on every boot:
  ```bash
  sudo systemctl set-default multi-user.target
  sudo reboot
  ```
- Revert default to graphical mode:
  ```bash
  sudo systemctl set-default graphical.target
  sudo reboot
  ```
