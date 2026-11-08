import Toybox.Activity;
using Toybox.FitContributor as Fit;
import Toybox.Lang;
import Toybox.Math;
import Toybox.WatchUi;

class HeartBeatsPerKmField extends WatchUi.SimpleDataField {
    var mBeatsPerKmField as Fit.Field;
    var mLastRecordedBeatsPerKm as Lang.Numeric = -1;

    function initialize() {
        SimpleDataField.initialize();
        label = "beats/km";
        mBeatsPerKmField = createField("beats_per_km", 0, Fit.DATA_TYPE_UINT32, {
            :mesgType => Fit.MESG_TYPE_SESSION,
            :units => "beats/km"
        });
    }

    function compute(info as Activity.Info) {
        var heartRate = info.averageHeartRate;
        var speed = info.averageSpeed;

        if (heartRate == null || speed == null || speed <= 0) {
            return 0;
        }

        var beatsPerKm = (heartRate * 1000.0) / (speed * 60.0);
        var roundedBeatsPerKm = Math.round(beatsPerKm).toNumber();
        if (roundedBeatsPerKm != mLastRecordedBeatsPerKm) {
            mBeatsPerKmField.setData(roundedBeatsPerKm);
            mLastRecordedBeatsPerKm = roundedBeatsPerKm;
        }

        return roundedBeatsPerKm;
    }

    function onTimerReset() {
        mLastRecordedBeatsPerKm = -1;
    }
}
