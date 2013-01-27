function Player(game)
{
	//--------Movement-----------
	this.pos = new THREE.Vector3();
	this.speed = new THREE.Vector3(); 
	this.accel = new THREE.Vector3();
	this.MoveRot = 0; 
	this.runAccel = 0.3;
	this.friction = 0.5; 
	this.maxSpeed = 3 //temp value


	this.camRot = new THREE.Vector3();
	this.camRot.set(0,0,0); 
	this.lookSpeed = .001;

	this.camTarget = new THREE.Vector3(); 
	this.camTarget.set(0,0,0);
	this.camTargetWorld = new THREE.Vector3(); 
	this.camTargetWorld.set(100,100,100);

	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;
	
	//--------Stats---------------
	this.isRunning = false; 
	
	this.eyeHeight = 5; 

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
		this.letsLook();
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


		this.camRot.setY(this.camRot.y - game.inputControls.mouseMovementX*this.lookSpeed);
		this.MoveRot -= this.camRot.y;

		//this.camRot.setX(this.camRot.x - game.inputControls.mouseMovementY*this.lookSpeed);



		//this.camTarget.set(Math.sin(this.camRot.x),Math.sin(this.camRot.y)+this.eyeHeight,0);
		
		//this.camTarget.set(this.camTarget.x + game.inputControls.mouseMovementX*this.lookSpeed, this.camTarget.y + game.inputControls.mouseMovementX*this.lookSpeed, this.camTarget.z); 
		//console.log(">" + this.camRot.x + " " + this.camRot.y + " " + this.camRot.z + " mx" + game.inputControls.mouseMovementX + " my" + game.inputControls.mouseMovementY);
		//console.log(">" + this.camTarget.x + " " + this.camTarget.y + " " + this.camTarget.z);
		//this.camTargetWorld.add(this.pos);
		//console.log(this.camTarget.x + " " + this.camTarget.y + " " + this.camTarget.z);

		//this.camRot.setX(this.camRot.X+game.inputControls.movementX*this.lookSpeed);
		//this.camRot.setY(this.camRot.Y+game.inputControls.movementY*this.lookSpeed);



	}

	this.Move = function()
	{

		
		if(this.isRunning && this.speed.length() < this.maxSpeed)//accelerate for run
		{
			this.accel.setZ(Math.sin(this.MoveRot)*this.runAccel);
			this.accel.setX(Math.cos(this.MoveRot)*this.runAccel);
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

	this.letsLook = function()
	{

		//controls = new THREE.FirstPersonControls( game.camera );
		/*
		controls.movementSpeed = this.movementSpeed; // How fast the player can walk around
		controls.lookSpeed = this.lookSpeed; // How fast the player can loo
	//--------Mk around with the mouse
		controls.lookVertical = false; // Don't allow the player to look up or down. This is a temporary fix to keep people from flying
		controls.noFly = true; // Don't allow hitting R or F to go up or down
	*/
	}


	this.UpdateRay = function()
	{
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = game.camera.position.y +100;

		var intersects = this.ray.intersectObject( game.ground );

		if ( intersects.length > 0 ) 
		{

			this.pos.y = intersects[ 0 ].point.y;


		}
	}



}