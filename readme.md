

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

In case of issues with GitHub or internet connectivity, we have also archived copies of these submodules. This ensures that you can still access and use the submodules even if cloning from GitHub fails. The archived submodules are located in the same `./gitArchive/bundles` directory.

# Documentation Repos
## SCMB-01-Report
    This is our final report on this project
## ECE-4710
    This repo contains Our internal documentation including PCBs peer review documentation, progress reports, and expected implementations.
    This documentation is displayed in the form of a simple markdown render side. 
## project-website
    This is the code to support our Site that was eventually replaced with the above repo.
## 3d-breakout-proposal
    This was our initial project proposal documentation

# Microcontroller Repos
## Common-Lib
    These are common libraries required by all of the sub repos
## MemIo-Board
    This is code/build files for building and flashing the microcontroller running the MemIo-board
## RegFile-Board
    This is code/build files for building and flashing the microcontroller running the RegFile-board
## ALU-Board
    This is code/build files for building and flashing the microcontroller running the ALU-board
## Controller-Board
    This is code/build files for building and flashing the microcontroller running the Controller-board
## GPU-micro
    This is code/build files for building and flashing the microcontroller running the GPU-board
## DaisyUartTester
    This is code/build files for building and flashing a test program to ensure the function of the IBC-packet library
## SCMB-01_Controller
    This is code/build files for building and flashing the microcontroller running the Controller-board (Replaced by above Controller-Board repo)


# Support/Testing Repos
## SCMB-01_sim
    A complete Verilog implementation of our emulated risc-v processor.
## scmb-fibonacci
    This evolved into a collection of test programs to ensure the functionality of our emulation.
## scmb-tetris
    This contains the program we intended on using on demo day
## Solder-Stencils
    This contains all the solder mask design files for PCB assembly
## scmb-serial-helper
    A set of test scripts to test the serial data of our USB interface
## Final-PCB-designs 
    A set of test scripts to test the serial data of our USB interface


# Demo Day Software Repos
## riscv-compiler
    Our fork of a risc-v compiler to compile for no OS support
## SCMB-01-Interface
    Our fork of qtrvsim, originally intended to mirror the current state of our processor on demo day. 
## Scribe-SCMB-01
    Our fork of Scribe-Text-Editor, originally intended to allow the user to write/compile c code to run on the emulated processor on demo day. 



# Notes
This is a direct mirror of the repos from our project cloned with --mirror for deep copy

git clone --mirror --recursive <Repo>

