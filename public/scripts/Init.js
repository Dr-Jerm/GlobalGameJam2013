var game;
var socket;

firstLoad = function(){

	if(!Detector.webgl){
        alert('This game requires a modern browser/graphics card with WebGL enabled.\n'+
        	'We suggest Chrome or Firefox!')
    }

    socket = io.connect("http:localhost:8080")

	game = new Game();
	game.init();

	tick();
}


tick = function(){
	requestAnimationFrame(tick);

	game.Update();
}