function Player()
{
	//--------Movement-----------
	this.pos = vec3.create();
	this.rot = 0; 

	this.speedRad = 0; 
	this.maxSpeedRad = 4; //update actuall speed later
	this.speedVector = vec3.create(); 

	this.accel = 0;

	//--------Stats---------------
	this.health = 100;
	this.healthMax = 100; 

//	this.gun = new gun(); 
	


	//--------Update---------------
	this.Update = function()
	{

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



}