function ShadowSpawner(game)
{

	this.SpawnBias = 500; 



	this.UpdateSpawner = function()
	{

		if(Math.random()*1000 < SpawnBias)
		{
			this.SpawnShadow();
		}

	}




	this.SpawnShadow = function();
	{
		var pos = new TREE.Vector3();
		var pos.Set(Math.random()*100, 0, Math.random()*100); 
		game.shadowList[game.shadowList.length] = new Shadow(game, pos)
		
		console.log.("Spawned Shadow at " + pos.x + " " + pos.y );
	}
	
}


