function Input()
{

	this.keyList = new Array();
	this.moveFunctions = new Array();


	$(document).keydown(function(e){
	    // if (e.keyCode == 37) { 
	    //    console.log( "left pressed" );
	    //    return false;
	    // }
	    this.keyList[e.keyCode] = true;
    	this.checkInput();
	}.bind(this));

	$(document).keyup(function(e){
    	this.keyList[e.keyCode] = false;
    	this.checkInput();
	}.bind(this));

	$(document).click(function(e){
    	this.keyList["mouse"+event.which] = true;
    	this.checkInput();
	}.bind(this));

	this.checkInput = function()
	{
		//this.moveFunctions["left"] = this.keyList[37];
		this.moveFunctions["left"] = this.keyList[65];
		//this.moveFunctions["right"] = this.keyList[39];
		this.moveFunctions["right"] = this.keyList[68];
		//this.moveFunctions["forward"] = this.keyList[38];
		this.moveFunctions["forward"] = this.keyList[87];
		//this.moveFunctions["back"] = this.keyList[40];
		this.moveFunctions["back"] = this.keyList[83];

		this.moveFunctions["shoot"] = this.keyList["mouse1"];

		this.moveFunctions["reload"] = this.keyList["mouse3"];

		if (this.moveFunctions["left"]) { 
	    	console.log( "left" );
	   
		}
		if (this.moveFunctions["right"]) { 
	    	console.log( "right" );
	   
		}
		if (this.moveFunctions["forward"]) { 
	    	console.log( "forward" );
	    	game.player.pos.z += 1;
	   
		}
		if (this.moveFunctions["back"]) { 
	    	console.log( "back" );
	    	game.player.pos.z -= 1;
	   
		}
		if (this.moveFunctions["shoot"]) { 
	    	console.log( "shoot" );
	   
		}

		if (this.moveFunctions["reload"]) { 
	    	console.log( "reload" );
	   
		}


	}

	this.Update = function(){

	}

}