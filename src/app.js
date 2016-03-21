var gyro = require('./gyro');

var scene = new THREE.Scene();
var camera = new THREE.PerspectiveCamera(
  75, window.innerWidth/window.innerHeight, 0.1, 1000 );

var renderer = new THREE.WebGLRenderer();
renderer.setSize( window.innerWidth, window.innerHeight );
document.body.appendChild( renderer.domElement );

object = new THREE.AxisHelper( 50 );
object.position.set( 0, 0, 0 );
scene.add( object );

camera.position.x = -5;
camera.position.y = -5;
camera.position.z = 5;
var updateCamera = function(tiltLR, tiltFB, dir) {
  camera.rotation.x = tiltFB;
  camera.rotation.y = tiltLR;
  camera.rotation.z = dir;
}

var render = function () {
	requestAnimationFrame( render );

	renderer.render(scene, camera);
};

gyro.initDeviceOrientationWatcher(updateCamera);

render();
