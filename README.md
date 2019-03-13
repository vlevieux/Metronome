# Metronome
The project aims to create a luminous and sound metronome in adequacy with the user's needs. The project is composed of about twenty modules. Each module is associated with its TestBench.

The project was carried out under ModelSim and implemented with Vivado. This is a metronome prototype that has been realised in FPGA for Basys 3

## Input
Different mechanism of adjustment for beats per minute (BPM) will be made available which should be easy to use.

To adjust the BPM linearly, the metronome must be equipped with two buttons: increase the BPM and decrease the BPM.

To obtain a quick adjustment of the BPMs, the metronome must be equipped with a "TAP" button that will be used to mark the rhythm.

To enable or disable the sound, an on/off switch will be used.

## Output

The user will have a BPM and current mode display on 3 7-segment displays.
A strip of 8 LEDs will be available and will scan regularly at BPM speed, i.e. 1 outward journey corresponds to the interval between 2 beats.
