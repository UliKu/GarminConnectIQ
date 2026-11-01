import Toybox.Activity;
import Toybox.Lang;
import Toybox.Math;
import Toybox.WatchUi;

class HeartBeatsPerKmField extends WatchUi.SimpleDataField {
    function initialize() {
        SimpleDataField.initialize();
        label = "beats/km";
    }

    function compute(info as Activity.Info) {
        var heartRate = info.averageHeartRate;
        var speed = info.averageSpeed;

        if (heartRate == null || speed == null || speed <= 0) {
            return 0;
        }

        var beatsPerKm = (heartRate * 1000.0) / (speed * 60.0);
        return Math.round(beatsPerKm);
    }
}
