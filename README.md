# Solar System in OpenGL

This repository contains a C++ OpenGL and FreeGLUT simulation of a simple solar
system. The program creates a windowed visualization where a number of planets
orbit around a central sun and draw their orbit paths.

## Project output window

The application opens a window titled `SolarSystem` and displays a grey canvas
with a solar-system composition drawn in the middle of the scene.

A representative runtime view is shown below:

```text
+---------------------------------------------------------------------+
| SolarSystem                              [ - ] [ □ ] [ × ]      |
|                                                                     |
|        grey background                                             |
|                                                                     |
|           .----------------- Orbit Rings -----------------..        |
|          /        Sun / Planets / Orbit lines                     |
|                                                                     |
|          [Mercury] [Venus] [Earth] [Moon] [Mars]                   |
|          [Jupiter] [Saturn] [Uranus] [Neptune]                    |
|                                                                     |
+---------------------------------------------------------------------+
```

The actual GUI screenshot currently used in this workspace shows a grey main
window and a central solar-system layout with ring orbit paths, coloured planet
objects, and a bright highlighted sun.

## Features

- OpenGL rendering pipeline using FreeGLUT callbacks
- Animated planet/orbit drawing system
- Lighting-related planet material settings
- Keyboard-based camera/view adjustments through the `SolarSystem` class
- Window title set to `SolarSystem`

## Visual project layout

```text
main.cpp
  └─ GLUT setup, window title and main loop

solarsystem.cpp
  └─ Simulation state, view/camera update, planet population

stars.cpp
  └─ Drawing routines for stars, planets, orbit rings, and lighting

stars.hpp / solarsystem.hpp
  └─ Class definitions and OpenGL data structures
```

## Requirements

This project is built against the MSYS2 `ucrt64` OpenGL and FreeGLUT runtime
chain.

Required items:

- `g++` compiler
- `make`
- FreeGLUT runtime and headers
- OpenGL libraries (`opengl32`, `glu32`)

The Makefile expects the MSYS2 layout below:

```make
CXX = C:/msys64/ucrt64/bin/g++.exe
CXXFLAGS = -std=c++11 -I"C:/msys64/ucrt64/include"
LDFLAGS = -L"C:/msys64/ucrt64/lib" -lfreeglut -lopengl32 -lglu32
```

## Build

Build from the project root:

```powershell
$env:PATH = "C:\msys64\ucrt64\bin;C:\msys64\usr\bin;" + $env:PATH
C:\msys64\usr\bin\make.exe
```

Or run from an MSYS2 shell:

```bash
make
```

## Run

The generated executable is:

```text
solarsystem.exe
```

Run it from a desktop-capable Windows session with the runtime DLL path visible:

```powershell
cd "c:\Users\LINA BHARAT NHAYADE\Desktop\Solar-System-in-OpenGL"
$env:PATH = "C:\msys64\ucrt64\bin;" + $env:PATH
.\solarsystem.exe
```

The application remains active in the GLUT event loop until the window is closed
or a termination key press is handled by the code.

## Project files

- [main.cpp](main.cpp) initializes GLUT, sets the window title, and enters the main loop.
- [stars.cpp](stars.cpp) draws planets, stars, and orbit ring paths.
- [solarsystem.cpp](solarsystem.cpp) manages the solar-system update cycle and camera state.
- [solarsystem.hpp](solarsystem.hpp) and [stars.hpp](stars.hpp) define the project class model.
- [Makefile](Makefile) contains the build command sequence.


