# serlog
This is a simple set of scripts for logging serial port input to the system journal. I created these to monitor long-running tests for IoT devices.

---
# Prerequisites
* *nix system with `systemd` init system (e.g., Debian, *buntu, Fedora, Arch, ...)
* One or more serial ports, loaded under `/dev/tty*`
---
# Usage
Copy the files in this repository to the corresponding paths on the target system. Then issue the following commands for each serial port you want to record (where `ttyXXX` is the serial port identifier, e.g. `ttyUSB0`):

    sudo systemctl enable serlog@ttyXXX
    sudo systemctl start serlog@ttyXXX

To view the log:

    journalctl -au serlog@ttyXXX

To tail the log:

    journalctl -afu serlog@ttyXXX
