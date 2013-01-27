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
	/*
	this.pos = (_x, 0, _z);
	this.rot = _rot;
	var index = Math.floor((Math.random()*game.assets.tree_limit)+1);
	var obj = "../art_assets/tree"+index+".mdl.js";
	var tex = "../art_assets/tree"+index+".jpg";

	var loader = new THREE.JSONLoader();

    loader.load( obj, function( geometry, materials){
        var texture = THREE.ImageUtils.loadTexture(tex);
        var material = new THREE.MeshBasicMaterial( { map: texture} );
		var mesh = new THREE.Mesh( geometry, material );
		mesh.scale.set(1,1,1);

		var rayDir = new THREE.Vector3( 0, -1, 0 );
		this.ray = new THREE.Raycaster(this.pos, rayDir);
		this.ray.rayDir = rayDir;
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = game.camera.position.y;

		var intersects = this.ray.intersectObject( game.ground.mesh );

		if ( intersects.length > 0 ) {
			this.pos.y = intersects[ 0 ].point.y;
		}

		mesh.position.x = this.pos.x;
		mesh.position.y = this.pos.y;
		mesh.position.z = this.pos.z;
		game.scene.add(mesh);

    } );
	*/
    this.swapWorld = function(){
    	
    }
}
