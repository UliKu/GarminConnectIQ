# Garmin Heart Beats per Kilometer

![Heart Beats per Kilometer launcher icon](resources/drawables/launcher_icon.svg)

A Connect IQ data field for the Garmin Forerunner 935. It estimates the number
of heartbeats per kilometer from the average heart rate and average running
speed since the start of the activity:

```text
beats/km = heart rate (beats/min) * 1000 / (speed (m/s) * 60)
```

For example, 150 bpm at 3.33 m/s (about 5:00 min/km) displays about 750.
The field shows `--` until average heart rate and a positive average speed are
available.

The rounded value is also recorded as a session-level custom FIT developer
field named `beats_per_km`. Garmin Connect may not display custom developer
fields.

This estimate is based on the activity's average readings, not a medical
measurement or a pace-normalized average over the full activity. The value may
be similar across different running exercises, such as running slowly with a
lower heart rate versus running quickly with a higher heart rate, and may
decrease with improved fitness over time.

## Build and run

Ensure Java is installed and available on `PATH` for the Connect IQ compiler.
Open this repository folder as a Connect IQ project in VS Code with the Monkey
C extension, select the Forerunner 935 (`fr935`) as the target, and build/run
the project on the simulator or watch.

This is an experimental project for private use based on the Garmin Connect IQ
platform; it is not an official Garmin project.
