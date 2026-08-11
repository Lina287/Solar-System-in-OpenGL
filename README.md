# Solar System in OpenGL

This project is a small OpenGL/GLUT-based solar system visualization implemented in C++.
It renders a stylized solar system with orbit rings, animated planets, and a
light source-based planet drawing model.

## Features

- OpenGL rendering pipeline using FreeGLUT for windowing and input callbacks
- A central sun and orbiting planets with orbit radius visualization
- Keyboard controls for camera movement and reset behavior
- A window titled `SolarSystem` showing the rendered solar-system scene

## Visual project layout

The program is organized around a small render loop and a data model for the
stars/planets:

```text
┌───────────────────────────────────────────────┐
│                     main.cpp                   │
│  GLUT window setup + input callback routing   │
└───────────────────────┬───────────────────────┘
                        │
                        ▼
┌───────────────────────────────────────────────┐
│                 SolarSystem class               │
│  Updates camera, orbit state, and redraw flow │
└───────────────────────┬───────────────────────┘
                        │
                        ▼
┌───────────────────────────────────────────────┐
│                    stars.cpp                    │
│  Star/Planet/LightPlanet drawing primitives   │
└───────────────────────────────────────────────┘
```

## Output window

When the program is launched, it opens a GLUT window titled `SolarSystem`.
The visualization fills the main window with a grey background and displays an
animated planetary orbit layout centered around the sun.

The rendered scene is conceptually arranged as follows:

```text
           [Orbit Ring]
               Sun
      [Mercury]  [Venus]  [Earth] [Moon]
       [Mars]   [Jupiter] [Saturn]
      [Uranus] [Neptune]
```

A typical output view is a square OpenGL canvas with the sun at the center and
planet objects moving along elliptical orbit paths.

## Requirements

The project is built against the MSYS2/MinGW ucrt64 OpenGL toolchain and FreeGLUT
runtime.

Required native tooling and libraries:

- C++ compiler (`g++`)
- Make (`make`)
- FreeGLUT (`freeglut`)
- OpenGL headers and system libraries (`opengl32`, `glu32`)

The project Makefile expects the MSYS2 installation layout below:

```make
CXX = C:/msys64/ucrt64/bin/g++.exe
CXXFLAGS = -std=c++11 -I"C:/msys64/ucrt64/include"
LDFLAGS = -L"C:/msys64/ucrt64/lib" -lfreeglut -lopengl32 -lglu32
```

## Build

From the project root:

```powershell
$env:PATH = "C:\msys64\ucrt64\bin;C:\msys64\usr\bin;" + $env:PATH
C:\msys64\usr\bin\make.exe
```

Or from an MSYS2 shell:

```bash
make
```

## Run

The executable produced by the build is:

```text
solarsystem.exe
```

Run it with:

```powershell
cd "c:\Users\LINA BHARAT NHAYADE\Desktop\Solar-System-in-OpenGL"
$env:PATH = "C:\msys64\ucrt64\bin;" + $env:PATH
.\solarsystem.exe
```

The application uses GLUT callbacks and remains active until the window is closed or
it receives a termination key input.

## Project files

- `main.cpp` initializes GLUT, sets the window title, and starts the main loop
- `stars.cpp` performs planet/star drawing and orbit rendering
- `solarsystem.cpp` implements the simulation update loop and camera state
- `solarsystem.hpp` and `stars.hpp` declare the application classes and structures
- `Makefile` defines the build steps for the project

