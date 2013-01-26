function Player(game)
{
	//--------Movement-----------
	this.pos = new THREE.Vector3();
	this.speed = new THREE.Vector3(); 
	this.accel = new THREE.Vector3();
	this.MoveRot = 0; 
	this.runAccel = 0.05;
	this.friction = 1; 

	this.maxSpeed = 10 //temp value
	this.camRot = new THREE.Vector3();
	this.camRot.set(0,0,0); 
	this.lookSpeed = 1.0;

	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;
	
	//--------Stats---------------
	this.isRunning = false; 
	
	this.eyeHeight = 20; 

	this.health = 100;
	this.healthMax = 100; 

//	this.gun = new gun(); 
	


	//--------Update---------------
	this.Update = function()
	{
		//FIX THIS!!??? why is theirs fast??? -> http://alteredqualia.com/three/examples/webgl_geometry_triangulate_quads.html
		//if(game.clock.getElapsedTime % 3 === 0)
		this.UpdateRay();
		this.UpdateInput(); 
		this.Move();
	}

	this.UpdateInput = function()
	{
		if(game.inputControls.moveForward)
		{
			this.MoveRot = 3*(Math.PI/2); 
			//this.MoveRot = 0;
		}
		// else if(game.inputControls.moveForward && game.inputControls.moveLeft)
		// {
		// 	this.MoveRot = 3*(Math.PI / 4); 
		// }
		else if(game.inputControls.moveLeft)
		{
			this.MoveRot = Math.PI; 
		}
		// else if(game.inputControls.moveLeft && game.inputControls.moveBackwards)
		// {
		// 	this.MoveRot = 5*(Math.PI / 4); 
		// }
		else if(game.inputControls.moveBackward)
		{
			console.log("backward");
			this.MoveRot = 5*(Math.PI/2); 
		}
		// else if(game.inputControls.moveBackward && game.inputControls.moveRight)
		// {
		// 	this.MoveRot = 5*(Math.PI/4); 
		// }
		else if(game.inputControls.moveRight)
		{
			this.MoveRot = 0; 
		}
		// else if(game.inputControls.moveForward && game.inputControls.moveRight)
		// {
		// 	this.MoveRot = 7*(Math.PI/4); 
		// }

		if(game.inputControls.moveForward || game.inputControls.moveLeft || game.inputControls.moveRight || game.inputControls.moveBackward)
		{
			this.isRunning = true; 
		}
		else 
		{
			this.isRunning = false; 
		}


		this.camRot.setX(this.camRot.X+game.inputControls.movementX*this.lookSpeed);
		this.camRot.setY(this.camRot.Y+game.inputControls.movementY*this.lookSpeed);


	}

	this.Move = function()
	{

		
		if(this.isRunning && this.speed.length() < this.maxSpeed)//accelerate for run
		{
			this.accel.setZ(Math.sin(this.MoveRot));
			this.accel.setX(Math.cos(this.MoveRot));
		}
		else
		{
			this.accel.copy(this.speed);//de-accell from friction 
			this.accel.normalize(); 
			this.accel.negate(); 
			this.accel.multiplyScalar(this.friction);
		}

		this.speed.add(this.accel);
		this.pos.add(this.speed);


	}

	this.UpdateRay = function(){
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = game.camera.position.y +100;

		var intersects = this.ray.intersectObject( game.ground );

		if ( intersects.length > 0 ) {

			this.pos.y = intersects[ 0 ].point.y;


				}
	}



}