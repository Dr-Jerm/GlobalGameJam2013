function Player()
{
	//--------Movement-----------
	this.pos = new THREE.Vector3();
	this.rot = 0; 

	this.speedRad = 0; 
	this.maxSpeedRad = 4; //update actuall speed later
	this.speedVector = new THREE.Vector3(); 

	this.accel = 0;

	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;
	//--------Stats---------------
	this.health = 100;
	this.healthMax = 100; 

//	this.gun = new gun(); 
	


	//--------Update---------------
	this.Update = function()
	{
		this.UpdateRay();
		this.Move();
	}

	this.Move = function()
	{
		this.speedRad += this.accel;
		if(this.speedRad > this.maxSpeedRad)
		{
			this.speedRad = this.maxSpeedRad;	
		}

		this.speedVector.x = this.speedRad*Math.cos(this.rot);
		this.speedVector.z = this.speedRad*Math.sin(this.rot);

		this.pos.x += this.speedVector.x;
		this.pos.y += this.speedVector.y; 
		this.pos.z += this.speedVector.z; 

	}

	this.UpdateRay = function(){
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = 500;

		var intersects = this.ray.intersectObject( game.ground );

		if ( intersects.length > 0 ) {

			this.pos.y = intersects[ 0 ].point.y;

			//cubeMesh.lookAt( dummy.position );

				}
	}



}