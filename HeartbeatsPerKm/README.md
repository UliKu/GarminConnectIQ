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

My guess is, that this value is somehow similar over different running exercises, like running slow with a lower heart rate vs running fast with a higher heart rate. It may decrease with better fitness levels, over time.

This estimate is based on the activity's average readings, not a medical
measurement or a pace-normalized average over the full activity.
