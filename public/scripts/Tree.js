function Tree(game, _pos)
{
	
	//--------Movement-----------
	this.pos = _pos; 
	//this.pos.set(500,500,500);
	this.rot = new THREE.Vector3();
	this.rot.set(Math.random()*0.05,(Math.random()*Math.PI*2), Math.random()*0.05);


	
	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;
   	
   	var mesh = null;
   	var mesh2 = null;

   	var idx = Math.floor(2+ ((Math.random()-0.01)*2));
			//var idx = 2;

			if(idx == 2){
				this.texure = game.worldGen.treeTex1;
				this.material = game.worldGen.treeMaterial1;
				this.geometry = game.worldGen.treeGeo1;
				this.texure2 = game.worldGen.colTex;
				this.material2 = game.worldGen.colMaterial1;
				this.geometry2 = game.worldGen.colGeo1;
			}
			else{
				this.texure = game.worldGen.treeTex2;
				this.material = game.worldGen.treeMaterial2;
				this.geometry = game.worldGen.treeGeo2;
				this.material2 = game.worldGen.colMaterial2;
				this.geometry2 = game.worldGen.colGeo2;
				this.texure2 = game.worldGen.colTex;

			}
	this.material2.opacity = 0.0;
	this.material.opacity = 0.0;

	mesh = new THREE.Mesh( this.geometry, this.material );
	mesh2 = new THREE.Mesh( this.geometry2, this.material2 );
	this.pos = new THREE.Vector3();
	this.pos.set( (Math.random()*7000-3500) , (0), (Math.random()*7000-3500));


	this.pos.setY(400);
   	

	mesh.scale.set(10+Math.random(),10+Math.random()*2,10)+Math.random();
	mesh2.scale = mesh.scale;

	mesh.position = this.pos;
	mesh2.position = this.pos;
	mesh.rotation = this.rot;
	mesh2.rotation = this.rot;
	game.scene.add( mesh );
	game.scene.add( mesh2 );


   	this.UpdateRay = function()
	{
		//console.log("Shadow Ray");
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = game.camera.position.y+500000;

		var intersects = this.ray.intersectObject( game.ground.mesh );

		if ( intersects.length > 0 ) 
		{

			this.pos.y = intersects[ 0 ].point.y - 30;
		}
	}

	this.SetMesh = function(_mesh)
	{
		mesh = _mesh; 
		mesh.scale.set(10+Math.random(),10+Math.random()*2,10)+Math.random();

		mesh.position = this.pos;
		mesh.rotation = this.rot;
		game.scene.add( mesh );
	}

	this.updateColors = function(){
		this.material.opacity = 1-game.opacc;
		this.material2.opacity = game.opacc;
	}

  //   this.swapWorld = function(){
		// if(game.worldState == 1){
		// 	this.material.opacity = 0.0;
		// 	this.material2.opacity = 0.0;
		// }
		// else{
		// 	this.material.opacity = 1.0;
		// 	this.material2.opacity = 1.0;
		// }
    	
    // }
}
