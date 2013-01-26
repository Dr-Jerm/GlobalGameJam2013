function Input()
{
	//---------------------- Magic pointer lock controls here ----------------
	var havePointerLock = 'pointerLockElement' in document || 'mozPointerLockElement' in document || 'webkitPointerLockElement' in document;

	if ( havePointerLock ) {
		var element = document.body;
		var pointerlockchange = function ( event ) {
			if ( document.pointerLockElement === element || document.mozPointerLockElement === element || document.webkitPointerLockElement === element ) {
				controls.enabled = true;
				//blocker.style.display = 'none';
				} else {
				controls.enabled = false;
				//blocker.style.display = '-webkit-box';
				//blocker.style.display = '-moz-box';
				//blocker.style.display = 'box';
				//instructions.style.display = '';
				}
			}
			var pointerlockerror = function ( event ) {
			//instructions.style.display = '';
			}

			// Hook pointer lock state change events
			document.addEventListener( 'pointerlockchange', pointerlockchange, false );
			document.addEventListener( 'mozpointerlockchange', pointerlockchange, false );
			document.addEventListener( 'webkitpointerlockchange', pointerlockchange, false );

			document.addEventListener( 'pointerlockerror', pointerlockerror, false );
			document.addEventListener( 'mozpointerlockerror', pointerlockerror, false );
			document.addEventListener( 'webkitpointerlockerror', pointerlockerror, false );

			document.addEventListener( 'click', function ( event ) {

			//instructions.style.display = 'none';

			// Ask the browser to lock the pointer
			element.requestPointerLock = element.requestPointerLock || element.mozRequestPointerLock || element.webkitRequestPointerLock;

			if ( /Firefox/i.test( navigator.userAgent ) ) {
				var fullscreenchange = function ( event ) {
					if ( document.fullscreenElement === element || document.mozFullscreenElement === element || document.mozFullScreenElement === element ) {

						document.removeEventListener( 'fullscreenchange', fullscreenchange );
						document.removeEventListener( 'mozfullscreenchange', fullscreenchange );
						element.requestPointerLock();
					}

				}

				document.addEventListener( 'fullscreenchange', fullscreenchange, false );
				document.addEventListener( 'mozfullscreenchange', fullscreenchange, false );

				element.requestFullscreen = element.requestFullscreen || element.mozRequestFullscreen || element.mozRequestFullScreen || element.webkitRequestFullscreen;

				element.requestFullscreen();

			} else {

				element.requestPointerLock();
			}

		}, false );

	} else {
		nstructions.innerHTML = 'Your browser doesn\'t seem to support Pointer Lock API';
	}
	//----------------------------------------------------------------------

	//controls = new PointerLockControls( game.camera);
    //game.scene.add( controls.getObject() );


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

	$(document).mousemove(function(e){
    	
	    console.log( "mouse " + e.pageX + " " + e.pageY);
	

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