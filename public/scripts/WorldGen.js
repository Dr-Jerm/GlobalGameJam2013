function WorldGen(game)
{

	var TreeNum = 1600;

	this.Generate = function()
	{
		console.log("Generate");
		this.GenerateTrees();
		this.GenerateDetails();
		
	}

	this.GenerateTrees = function()
	{
		
		//var type = _t;
		//for(var i=0; i < this.popul; i++) {
			//var inx = 2;//(Math.floor((Math.random()*this.items)+1));
			var texture = mojo.assets["tree2"];
			var geometry = mojo.assets["tree2mdl"];
			var material = new THREE.MeshBasicMaterial( {map: texture} );
			
		

		console.log("GenerateTrees ");
		var tree = null; 
		var pos = null;
		var i; 
		for(i=0; i < TreeNum; i++)
		{
			mesh = new THREE.Mesh( geometry, material );
			pos = new THREE.Vector3();
			pos.set( (Math.random()*7000-3500) , (0), (Math.random()*7000-3500));
			pos.setY(400);
			tree = new Tree(game, pos);
			tree.UpdateRay();
			tree.SetMesh(mesh);

			game.treeList[game.treeList.length] = tree;
			console.log("Spawn Tree at " + pos.x + " " + pos.z + " " + tree.pos.x + " " + tree.pos.y + " " + tree.pos.z)
		}

	}


	this.GenerateDetails = function()
	{
		var tex = mojo.assets["snowman"];
		var geo = mojo.assets["snowmanmdl"];
		var matrl = new THREE.MeshBasicMaterial( {map: tex} );
		var mesh = new THREE.Mesh( geo, matrl );
		mesh.scale.set(10,10,10);

		var rayDir = new THREE.Vector3( 0, -1, 0 );
		this.ray = new THREE.Raycaster(mesh.position, rayDir);
		this.ray.rayDir = rayDir;
	
		mesh.position.x = 1;
  		mesh.position.y = -1;
		mesh.position.z = 1;
		while( mesh.position.y == -1) {
			this.ray.ray.origin = mesh.position;
			this.ray.ray.origin.y = game.camera.position.y +100;
			var intersects = this.ray.intersectObject( game.ground );
			if( intersects.length > 0 ) {
				mesh.position.y = intersects[0].point.y -.5;
			}
 		}
		game.scene.add(mesh);
	}

}