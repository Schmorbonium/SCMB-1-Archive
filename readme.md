# Project Archive and Documentation

## Archiving with GitArchiver.bat

Our project's repositories have been meticulously archived using the `./gitArchive/GitArchiver.bat` script. This archival process ensures a comprehensive preservation of our project's history, encompassing all commits, branches, and tags.

### Location of Archived Bundles

All bundled repositories are conveniently located in `./gitArchive/bundles`. These bundles represent a complete snapshot of each repository at the time of archiving.

## Inspecting and Restoring Bundles

To inspect or restore these bundles, including their entire commit history, branches, and tags, you can use the provided scripts:
- For Windows: `ExpandRepos.bat`
- For Unix/Linux: `ExpandRepos.sh`

These scripts will expand the bundles into standard Git repositories, allowing for full inspection and continuation of development if necessary.

### Note on Repositories with Submodules

Certain repositories in our project (`MemIo-Board`, `RegFile-Board`, `ALU-Board`, `Controller-Board`, `GPU-micro`) include submodules. When using the expand scripts, these submodules will initially attempt to clone from their respective sources on GitHub.

#### Offline Access to Submodules

In case of GitHub or internet connectivity issues, archived copies of these submodules are available in `./gitArchive/bundles`. 










#### Submodule Restoration Instructions

For issues with GitHub access, manually restore submodules from the archived copies. Detailed instructions are in `Submodule_Restoration_Guide.txt` within `./gitArchive`.

---

# Project Repositories Overview

## Documentation Repos
- **SCMB-01-Report**: Final report on the project.
- **ECE-4710**: Internal documentation including PCBs, peer reviews, progress reports, and implementation plans.
- **project-website**: Initial site code, replaced by the ECE-4710 repository.
- **3d-breakout-proposal**: Original project proposal documentation.

## Microcontroller Repos
- **Common-Lib**: Common libraries for all sub-repos.
- **MemIo-Board**: Build and flash files for the MemIo-board microcontroller.
- **RegFile-Board**: Build and flash files for the RegFile-board microcontroller.
- **ALU-Board**: Build and flash files for the ALU-board microcontroller.
- **Controller-Board**: Build and flash files for the Controller-board microcontroller.
- **GPU-micro**: Build and flash files for the GPU-board microcontroller.
- **DaisyUartTester**: Test program for the IBC-packet library functionality.
- **SCMB-01_Controller**: Initial build and flash files for the Controller-board (replaced by Controller-Board repo).

## Support/Testing Repos
- **SCMB-01_sim**: Verilog implementation of the emulated RISC-V processor.
- **scmb-fibonacci**: Collection of test programs for emulation functionality.
- **scmb-tetris**: Program intended for demo day.
- **Solder-Stencils**: Solder mask design files for PCB assembly.
- **scmb-serial-helper**: Scripts for testing USB interface serial data.
- **Final-PCB-designs**: Design files for final PCB assembly.

## Demo Day Software Repos
- **riscv-compiler**: Fork of a RISC-V compiler for no OS support.
- **SCMB-01-Interface**: Fork of qtrvsim, intended to mirror the processor state on demo day.
- **Scribe-SCMB-01**: Fork of Scribe-Text-Editor, for writing and compiling C code for the emulated processor on demo day.
