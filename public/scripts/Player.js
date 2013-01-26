function Player()
{
	//--------Movement-----------
	this.pos = new Point();
	this.rot = 0; 

	this.speedRad = 0; 
	this.maxSpeedRad = 4; //update actuall speed later
	this.speedVector = new Point(); 

	this.accel = 0;

	//--------Stats---------------
	this.health = 100;
	this.healthMax = 100; 

	this.gun = new gun(); 
	



	//--------Update---------------
	this.Update = new function()
	{

		this.UpdateSpeed();
	}

	this.UpdateSpeed = new function()
	{
		this.speedRad += this.accel;
		if(this.speedRad > this.maxSpeedRad)
		{
			this.speedRad = this.maxSpeedRad;	
		}

		speedVector.x = speedRad*Math.cos(rot);
		speedVector.z = speedRad*Math.sin(rot);

		pos.x += speedVector.x;
		pos.y += speedVector.y; 
		pos.z += speedVector.z; 

	}