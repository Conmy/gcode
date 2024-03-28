
# Makerbot Replicator 2

I've set up a Makerbot Replicator 2 over Octoprint.

Octorprint has GPX installed through the Plugin Manager that allows octoprint to convert gcode to x3g that the replicator 2 can understand.

This way I can learn and send Gcode to the printer via octoprint.

## Octoprint

Octoprint is installed on a raspberry pi 3 model A by flashing the octoPi image to a SD card and putting this into the raspberry pi.

I didn't set up WiFi on the Pi as this had issues. Instead, I have a wired Ethernet connected.

This might not be ideal for some people - especially when you have a Wifi-enabled device. WiFi would make the whole setup more portable but I was having trouble with this so opted for what I had available to me.

### Plugins

#### GPX

This is the main plugin that is needed. Install this through the octoprint settings menu under the "Plugin Manager" heading in the left menu.

After this is installed, all code can be Gcode from now on.

#### GPX Settings

Enable GPX: Yes
Clear coordinate system before start: Yes
Show pre-release updates: No
Verbose GPX logging: No

Machine type: Replicator 2
Pause after connection: 2 secs

Gcode flavor: MakerBot
Recalc build progress: Yes
Ditto printing: No
Nominal filament width: unset
Actual filament width: unset
Recalculate extrusion: No
Packing density: unset

### Printer Profiles

Create a printer profile in Octoprint.

In Settings, go to "Printer Profiles" > "Add Profile"

My settings are as follows:

#### General

Name: Makerbot
Identifier: _default
Model: Replicator 2

#### Print bed & build volume

> No == unchecked

Form Factor: Rectangular
Origin: Center
Heated Bed: No
Heated Chamber: No
Width (X): 255 mm
Depth (Y): 145 mm
Height (Z): 150 mm
Custom Bounding Box: No

#### Axes

X: 6000 mm/min
Y: 6000 mm/min
Z: 200 mm/min
E: 300 mm/min

#### Hotend & extruder

Nozzle Diameter: 0.4 mm
Number of Extruders: 1
Default extrusion length: 5 mm

## Useful Links:
I've found a useful list of gcode scripts for the replicator inside this project:
https://github.com/jetty840/ReplicatorG
