function ShadowSpawner(game)
{

	this.SpawnBias = 100; 
	this.MaxShadows = 100; 
	
	this.Update = function()
	{

		if(Math.random()*1000 < this.SpawnBias && game.shadowList.length < this.MaxShadows)
		{
			this.SpawnShadow();
		}
		else
		{
			//wwwwwgame.shadowList[Math.round(Math.random()*game.shadowList.length)].pos.set(Math.random()*7000-3500) , (0), (Math.random()*7000-3500);
		}



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