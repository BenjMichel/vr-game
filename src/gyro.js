var initDeviceOrientationWatcher = function(callback) {
  if (window.DeviceOrientationEvent) {
    // Listen for the deviceorientation event and handle the raw data
    window.addEventListener('deviceorientation', function(eventData) {
      // gamma is the left-to-right tilt in degrees, where right is positive
      var tiltLR = eventData.gamma / 180 * Math.PI;

      // beta is the front-to-back tilt in degrees, where front is positive
      var tiltFB = eventData.beta  / 180 * Math.PI;

      // alpha is the compass direction the device is facing in degrees
      var dir = eventData.alpha / 180 * Math.PI - Math.PI;

      // call our orientation event handler
      callback(tiltLR, tiltFB, dir);
    }, false);
  } else {
    document.getElementById("doEvent").innerHTML = "Not supported."
  }
}

module.exports.initDeviceOrientationWatcher = initDeviceOrientationWatcher;
