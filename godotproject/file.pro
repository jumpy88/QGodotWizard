TEMPLATE = lib
CONFIG -= qt
CONFIG += c++11
TARGET = %{LibName}

@if(%{SetGodotHome})
include(config.pri)
@else
GODOT_HOME = $$(GODOT_HOME)
@endif

INCLUDEPATH += $${GODOT_HOME}/godot_headers \\
               $${GODOT_HOME}/include \\
			   $${GODOT_HOME}/include/core \\
			   $${GODOT_HOME}/include/gen

DEPENDPATH += $${GODOT_HOME}/godot_headers \\
              $${GODOT_HOME}/include \\
			  $${GODOT_HOME}/include/core \\
			  $${GODOT_HOME}/include/gen

SOURCES += \\
    lib.cpp \\
	%{ClassSrc}

HEADERS += \\
    %{ClassHdr}

unix:!macx: LIBS += -L$${GODOT_HOME}/bin/ -lgodot-cpp.linux.release.64

unix:!macx: PRE_TARGETDEPS += $${GODOT_HOME}/bin/libgodot-cpp.linux.release.64.a
