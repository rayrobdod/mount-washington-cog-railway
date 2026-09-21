Mount Washington Cog Railway
===================================
Engines of the Mount Washington Cog Railway

-------
1 About
-------

This trainset provides train engines and carriages based on the engines
and carriages used by or built by The Mount Washington Cog Railway in
New Hampshire, United States.

The set includes five normal engines, two carriages, and two eyecandy
service vehicles.

GRF ID:   "RRD\01", 0x52524401

---------------------
2 General information
---------------------

2.1 Requirements
----------------
Developed with OpenTTD 15.3


2.2 Installation
----------------
OpenTTD:
  see https://wiki.openttd.org/en/Manual/NewGRF


2.3 Parameter settings
----------------------

- 1st parameter: Bitset that disables subsets of engines
  - 0x01: disable worker service vehicles:
          Specifically the Devil's Shingle and the Hornet.
          These engines do not accept wagons and have minimal passenger
          capacity, making these engines more eyecandy than useful.
  - 0x02: disable prototype vehicles:
          specifically the Spirit

- 2nd parameter: Vehicle start dates
  - 0: Use real introduction dates.
       Introduction dates range from 1866 to 2008
  - 1: Use dates scaled for a 1950-2050 game.
       Introduction dates range from 1947 to 2008;
       a new engine (counting Spirit) is introduced approximately every
       20 years


2.4 Usage
---------

The vehicles in this set will prefer to run on a standard-guage rack
track if available, then narrow-guage rack track, then will fall back
to base-game `RAIL`.

I do not know of any rail sets that provide standard-guage rack track.

Two options for sets that provide narrow-guage rack track are:
- French Train Sets Narrow Guage
  <https://www.tt-forums.net/viewtopic.php?t=84269>
- NNGT (New Narrow Gauge Tracks)
  <https://www.tt-forums.net/viewtopic.php?t=87490>
    also available in the in-game content downloader


To create the appearance of an engine pushing a carriage uphill and
guiding downhill:
- Set the game setting "Allow trains to flip when reversing" to "None"
  (requires OpenTTD 16)
- Create a line with one uphill station and one downhill station
- Place the depot uphill of the downhill station
- Flip the engine in the depot (Ctrl+Click)
- When creating train orders, put visiting the downhill station first

Both the passenger car and flatcar are considered to have a cab and
will negate the reversing penalty.

--------------
3 Known issues
--------------

------------------------
4 Background information
------------------------

The Mount Washington Cog Railway is a rack railroad that climbs the side
of Mount Washington in New Hampshire, United States. Mount Washington is
the highest peak in the eastern United States. The railway was built
between 1866 and 1869, and has been in operation since.

The running speed of the trains on this railway is 5mph (8km/h) or less.
Considering that the railway has a 25% average grade, compared to
OpenTTD's default calculations of 3% grade and maximum of 10% grade, and
that OpenTTD's default trains have no difficulty maintaining well
over 8km/h even over long inclines, the engines in this set have their
max speed multiplied by a factor so that their speeds are in the 30km/h
range instead of in the single digits.


The earliest class of engine in this set, represented by Peppersass,
is a steam engine with a vertical boiler, which would rotate and kept
vertical by gravity.

The earlier service vehicle is the Devil's Shingle. It is not much more
than a seat that slides down the center rack rail. It isn't powered,
but it attaches to the rack rail and was used by employees to quickly
descend the mountain.

The next class of engine, represented by George Stephenson, continues to
have a vertical boiler, but seems to be more fixed in angle relative to
the vehicle, and with a covered cab.

The next class of engine, represented by Hercules, is a steam engine
with a more traditional horizontal boiler, though the boiler is slightly
slanted to counteract the steep grade. Two engines of this class run
regularly as of 2026.

The later service vehicle is represented by Green Hornet. It is
a small diesel designed for quickly moving workers up the track.

A prototype diesel, the Spirit of '76, was built in 1976 but never used
in service and quickly cut up for being ahead of its time.

The final class of engine, represented by Wajo Nanatasis (Mountain
Hummingbird), is a diesel. The cited reasons to switch from mostly
running steam to mostly running diesels is reduced environmental impact,
reduced cost of fuel and maintenance and faster speed. Multiple press
releases in 2008 about the new train engine do tout its 600 HP diesel
generator, so that is one hard number available.


The passenger car as used in 2026 is described as "historical in
design", and old pictures depict a similar passenger car to the one
used. The car's capacity is 70 passengers - 14 rows, 5 people per row.

The flatcar isn't described anywhere, but does appear in pictures of
the initial construction of the railroad's tracks, presumably used to
transport rails, ties and supports from the base station up to the part
being constructed.

----------------------------
5 Frequently Asked Questions
----------------------------

---------
6 Credits
---------

- Raymond Dodge

Tools used:
- NewGRF Meta Language
- RichardWheeler's PixelTool <https://bundles.openttdcoop.org/pixeltool/push/LATEST/>
- https://www.tt-wiki.net/wiki/User:FooBar/Generic_NewGRF_Readme

Vehicle References:
- https://www.thecog.com/
- https://web.archive.org/web/20080828082347/http://www.cog-railway.com/pics_loco.htm
- http://www.whitemountainhistory.org/cog-railway

---------------------
7 Contact information
---------------------

7.1 Bug reports
---------------
Please report any bugs you find at
  bug tracker: https://github.com/rayrobdod/mount-washington-cog-railway/issues
  or forum topic: http://www.tt-forums.net/viewtopic.php?t=<00000>

Always included a detailed description of the bug, preferably with
screenshot and savegame. Also state the exact game version you're using,
as well as the version of this NewGRF.

If you have a savegame that includes NewGRFs not available on OpenTTD's
Online Content, then please try to reproduce the bug in a new game
which has all NewGRFs easily accessible.

If you're using a patched version of the game, please try to reproduce
the bug on an official game build. If you can't reproduce the bug, then
don't report it here but in the forum topic of the patch(pack) instead.


7.2 Other problems
------------------
If you have any problems using this NewGRF that are not covered in the
Frequently Asked Questions above, then you can ask your questions in the
forum topic: http://www.tt-forums.net/viewtopic.php?t=<00000>


---------
8 License
---------

Mount Washington Cog Railway NewGRF
Copyright (C) 2026 Raymond Dodge

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

----------------------
9 Obtaining the source
----------------------

- https://github.com/rayrobdod/mount-washington-cog-railway
