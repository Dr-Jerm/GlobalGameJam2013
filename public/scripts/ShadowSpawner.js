function ShadowSpawner(game)
{

	this.SpawnBias = 500; 
	
	this.Update = function()
	{

		if(Math.random()*1000 < this.SpawnBias)
		{
			//this.SpawnShadow();
		}
		// 
		this.SpawnShadow();

	}


	this.SpawnShadow = function()
	{
		var pos = new THREE.Vector3();
		pos.set( (Math.random()*7000-3500) , (0), (Math.random()*7000-3500));
		var shadow = new Shadow(game, pos);
		//shadow.UpdateRay();
		game.shadowList[game.shadowList.length] = shadow;
		console.log("SpawnShadow!! at " + pos.x + " " + pos.z );
		
	
	}
	
	




}