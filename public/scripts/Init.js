
	var game;
	var socket;
	var stats;

function firstLoad(){

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
}


tick = function(){
	requestAnimationFrame(tick);

	game.Update();
	stats.update();
}