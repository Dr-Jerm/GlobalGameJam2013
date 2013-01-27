var game;
var socket;
var stats;

firstLoad = function(){

	if(!Detector.webgl){
        alert('This game requires a modern browser/graphics card with WebGL enabled.\n'+
        	'We suggest Chrome or Firefox!')
    }

    socket = io.connect("http:localhost:8080")

	game = new Game();
	game.init();
	stats = new Stats();
	stats.domElement.style.position = 'absolute';
	stats.domElement.style.top = '0px';
	document.body.appendChild( stats.domElement );

	tick();

	return true;
}

// EVENT HANDLERS

function onWindowResize( event ) {

	SCREEN_WIDTH = window.innerWidth;
	SCREEN_HEIGHT = window.innerHeight;

	renderer.setSize( SCREEN_WIDTH, SCREEN_HEIGHT );

	game.camera.aspect = SCREEN_WIDTH/ SCREEN_HEIGHT;
	game.camera.updateProjectionMatrix();

}


tick = function(){
	requestAnimationFrame(tick);

	game.Update();
	stats.update();
}