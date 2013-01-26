var game;

firstLoad = function(){

	if(!Detector.webgl){
        alert('This game requires a modern browser/graphics card with WebGL enabled.\n'+
        	'We suggest Chrome or Firefox!')
    }


	game = new Game();
	game.init();
}