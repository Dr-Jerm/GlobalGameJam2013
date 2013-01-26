

function firstLoad(){

	if(!Detector.webgl){
        alert('This game requires a modern browser/graphics card with WebGL enabled.\n'+
        	'We suggest Chrome or Firefox!')
    }

    socket = io.connect("http:localhost:8080")

	this.game = new Game();
	this.game.init();
	this.stats = new Stats();
	this.stats.domElement.style.position = 'absolute';
	this.stats.domElement.style.top = '0px';
	document.body.appendChild( stats.domElement );

	this.tick = function(game){
		requestAnimationFrame(tick);
		this.game.Update();
		stats.update();
	}


	this.tick(game);

	return true;
}


