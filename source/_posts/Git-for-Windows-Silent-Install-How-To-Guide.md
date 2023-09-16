---
title: Git for Windows Silent Install
date: 2023-09-16 13:19:02
tags:
---

Git is a distributed version-control system for tracking changes in source code during software development. This article will serve as an informative guide and give you a clear understanding of how to perform a silent installation of Git from the command line using the EXE installer.

## How to Install Git Silently

### Git for Windows Silent Install 32-bit (EXE)

1. **Navigate** to: https://github.com/git-for-windows/git/releases
2. **Select** the version of your choice
3. **Download** the **Git-x.y.z-32-bit.exe** to a folder created at **(C:\Downloads)**
4. Open an **Elevated Command Prompt** by Right-Clicking on Command Prompt and select **Run as Administrator**
5. **Navigate** to the **C:\Downloads** folder
6. Enter the following command: **Git-x.y.z-32-bit.exe /VERYSILENT /NORESTART**
7. Press **Enter**

After a minute or so you should see the Git shortcuts in the **Start Menu, Installation Directory**, and **Programs and Features** in the Control Panel.

| Software Title:                         | Git (32-bit)                                                                                     |
| :-------------------------------------- | :----------------------------------------------------------------------------------------------- |
| Vendor:                                 | The Git Development Community                                                                    |
| Architecture:                           | x86                                                                                              |
| Installer Type:                         | EXE                                                                                              |
| Silent Install Switch:                  | **Git-x.y.z-32-bit.exe /VERYSILENT /NORESTART**                                                  |
| Silent Uninstall Switch (32-bit System) | **"%ProgramFiles%\Git\unins000.exe" /VERYSILENT /NORESTART**                                     |
| Silent Uninstall Switch (64-bit System) | **"%ProgramFiles(x86)%\Git\unins000.exe" /VERYSILENT /NORESTART**                                |
| Download Link:                          | https://github.com/git-for-windows/git/releases                                                  |
| **PowerShell Script:**                  | **https://silentinstallhq.com/git-for-windows-install-and-uninstall-powershell/**                |
| **Detection Script:**                   | **https://silentinstallhq.com/create-a-custom-detection-script-for-git-for-windows-powershell/** |

---

---

### Git for Windows Silent Install 64-bit (EXE)

1. **Navigate** to: https://github.com/git-for-windows/git/releases
2. **Select** the version of your choice
3. **Download** the **Git-x.y.z-64-bit.exe** to a folder created at **(C:\Downloads)**
4. Open an **Elevated Command Prompt** by Right-Clicking on Command Prompt and select **Run as Administrator**
5. **Navigate** to the **C:\Downloads** folder
6. Enter the following command: **Git-x.y.z-64-bit.exe /VERYSILENT /NORESTART**
7. Press **Enter**

After a minute or so you should see the Git shortcuts in the **Start Menu, Installation Directory**, and **Programs and Features** in the Control Panel.

| Software Title:          | Git (64-bit)                                                                                     |
| :-------------------------------------- | :----------------------------------------------------------------------------------------------- |
| Vendor:                  | The Git Development Community                                                                    |
| Architecture:            | x64                                                                                              |
| Installer Type:          | EXE                                                                                              |
| Silent Install Switch:   | **Git-x.y.z-64-bit.exe /VERYSILENT /NORESTART**                                                  |
| Silent Uninstall Switch: | **"%ProgramFiles%\Git\unins000.exe" /VERYSILENT /NORESTART**                                     |
| Download Link:           | https://github.com/git-for-windows/git/releases                                                  |
| **PowerShell Script:**   | **https://silentinstallhq.com/git-for-windows-install-and-uninstall-powershell/**                |
| **Detection Script:**    | **https://silentinstallhq.com/create-a-custom-detection-script-for-git-for-windows-powershell/** |

The information above provides a quick overview of the software title, vendor, silent install, and silent uninstall switches. The download link provided take you directly to the vendors website. Continue reading if you are interested in additional details and configurations.

---

---

## Additional Configurations

### Create a Git Installation Log File

The Git installer offers the option to generate a log file during installation to assist with troubleshooting should any problems arise. You can use the following commands to create a verbose log file with details about the installation.

#### Git 32-bit Silent Install (EXE) with Logging

> **Git-x.y.z-32-bit.exe /VERYSILENT /NORESTART /LOG="%WINDIR%\Temp\Git32-Install.log"**

#### Git 64-bit Silent Install (EXE) with Logging

> **Git-x.y.z-64-bit.exe /VERYSILENT /NORESTART /LOG="%WINDIR%\Temp\Git64-Install.log"**

---

---

### Enable Git Auto Updates

The Git installer does NOT enable auto updates by default. If you want auto updates enabled, you can run the following command line switch.

#### Git 32-bit Silent Install (EXE) with Auto Updates Enabled

> **Git-x.y.z-32-bit.exe /VERYSILENT /NORESTART /COMPONENTS=ext,ext\shellhere,ext\guihere,gitlfs,assoc,assoc_sh,autoupdate**

#### Git 64-bit Silent Install (EXE) with Auto Updates Enabled

> **Git-x.y.z-64-bit.exe /VERYSILENT /NORESTART /COMPONENTS=ext,ext\shellhere,ext\guihere,gitlfs,assoc,assoc_sh,autoupdate**

---

---

### Include the Git Desktop Shortcut During Install

The Git installer does NOT include a desktop shortcut by default. If you want the desktop shortcut included during installation, then you can run the following command line switch.

#### Git 32-bit Silent Install (EXE) with Desktop Shortcut

> **Git-x.y.z-32-bit.exe /VERYSILENT /NORESTART /COMPONENTS=icons,icons\desktop,ext,ext\shellhere,ext\guihere,gitlfs,assoc,assoc_sh**

#### Git 64-bit Silent Install (EXE) with Desktop Shortcut

> **Git-x.y.z-64-bit.exe /VERYSILENT /NORESTART /COMPONENTS=icons,icons\desktop,ext,ext\shellhere,ext\guihere,gitlfs,assoc,assoc_sh**

---

---

### Change the Git Default Installation Directory

You can also change the default installation directory by using the following command line parameters. In this example, I’m installing GIMP to **“C:\Git”**

#### Git 32-bit (EXE)

> **Git-x.y.z-32-bit.exe /DIR="C:\Git" /VERYSILENT /NORESTART**

#### Git 64-bit (EXE)

> **Git-x.y.z-64-bit.exe /DIR="C:\Git" /VERYSILENT /NORESTART**

---

---

### How to Uninstall Git for Windows Silently

*Check out the following posts for a scripted solution:*

> **[Git for Windows Install and Uninstall (PowerShell)](https://silentinstallhq.com/git-for-windows-install-and-uninstall-powershell/)**<br/> **[Git for Windows Silent Uninstall (PowerShell)](https://silentinstallhq.com/git-for-windows-silent-uninstall-powershell/)**

1. Open an **Elevated Command Prompt** by Right-Clicking on Command Prompt and select **Run as Administrator**
2. Enter one of the following commands:

#### Git 32-bit Silent Uninstall (EXE) on 32-bit System

> **"%ProgramFiles%\Git\unins000.exe" /VERYSILENT /NORESTART**

#### Git 32-bit Silent Uninstall (EXE) on 64-bit System

> **"%ProgramFiles(x86)%\Git\unins000.exe" /VERYSILENT /NORESTART**

#### Git 64-bit Silent Uninstall (EXE) on 64-bit System

> **"%ProgramFiles%\Git\unins000.exe" /VERYSILENT /NORESTART**

Always make sure to test everything in a development environment prior to implementing anything into production. The information in this article is provided “As Is” without warranty of any kind.
