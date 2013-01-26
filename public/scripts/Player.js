function Player()
{
	//--------Movement-----------
	this.pos = new THREE.Vector3();
	this.speed = new THREE.Vector3(); 
	this.accel = new THREE.Vector3();
	this.MoveRot = 0; 
	this.runAccel = 0.1;
	this.friction = 0.02; 

	this.maxSpeed = 5.0 //temp value
	this.camRot = new THREE.Vector3();



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
		if(game.clock.getElapsedTime % 3 === 0)
			this.UpdateRay();
		this.UpdateInput(); 
		this.Move();
	}

	this.UpdateInput = function()
	{
		//console.log("player UPDATE");
		
		//console.log("game.inputControls.moveForward = " + game.inputControls.moveForward);
		console.log( "inputWQE" + game.testSring);
		
		if(game.inputControls.moveForward)
		{
			this.MoveRot = 0;
			console.log("player moveForward");
		}
		else if(game.inputControls.moveForward && game.inputControls.moveLeft)
		{
			this.MoveRot = Math.PI / 4; 
		}
		else if(game.inputControls.moveLeft)
		{
			this.MoveRot = Math.PI / 2; 
		}
		else if(game.inputControls.moveLeft && game.inputControls.moveBackwards)
		{
			this.MoveRot = 3*(Math.PI / 4); 
		}
		else if(game.inputControls.moveBackwards)
		{
			this.MoveRot = Math.PI; 
		}
		else if(game.inputControls.moveBackwards && game.inputControls.moveRight)
		{
			this.MoveRot = 5*(Math.PI/4); 
		}
		else if(game.inputControls.moveRight)
		{
			this.MoveRot = 3*(Math.PI/2); 
		}
		else if(game.inputControls.moveForwards && game.inputControls.moveRight)
		{
			this.MoveRot = 7*(Math.PI/4); 
		}

		if(game.inputControls.moveForward || game.inputControls.moveLeft || game.inputControls.moveRight || game.inputControls.moveBackwards)
		{
			this.isRunning = true; 
		}
		else 
		{
			this.isRunning = false; 
		}


	}

	this.Move = function()
	{

		
		if(this.isRunning && this.speed.length() < this.maxSpeed)//accelerate for run
		{
			this.accel.setZ(Math.Sin(this.MoveRot));
			this.accel.setX(Math.Cos(this.MoveRot));
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

		this.ray.ray.origin.y = game.camera.position.y;

		var intersects = this.ray.intersectObject( game.ground );

		if ( intersects.length > 0 ) {

			this.pos.y = intersects[ 0 ].point.y;


				}
	}



}