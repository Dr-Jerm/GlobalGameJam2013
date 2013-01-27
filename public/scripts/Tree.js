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
	var texture = mojo.assets["tree"+idx];
	var texture2 = mojo.assets["column"];
	var geometry = mojo.assets["tree"+idx+"mdl"];
	var geometry2 = mojo.assets["column"+idx+"mdl"];
	this.material = new THREE.MeshBasicMaterial( {map: texture, transparent : true} );
	this.material2 = new THREE.MeshBasicMaterial( {map: texture2, transparent : true, depthWrite: false} );
	this.material2.opacity = 0.0;
	this.material.opacity = 0.0;

	mesh = new THREE.Mesh( geometry, this.material );
	mesh2 = new THREE.Mesh( geometry2, this.material2 );
	this.pos = new THREE.Vector3();
	this.pos.set( (Math.random()*7000-3500) , (0), (Math.random()*7000-3500));


	this.pos.setY(400);
   	

	mesh.scale.set(20+Math.random(),20+Math.random()*2,20)+Math.random();
	mesh2.scale.set(10+Math.random(),10+Math.random()*2,10)+Math.random();

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
