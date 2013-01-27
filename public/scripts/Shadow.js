function Shadow( game, _pos)
{

	
	//--------Movement-----------
	this.pos = _pos; 
	//this.pos.set(500,500,500);
	this.rot = new THREE.Vector3();
	//--------Stats---------------
	this.height = -10; 

	this.health = 100;
	this.healthMax = 100;

	this.group = new THREE.Object3D();

	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;


	var geometry = mojo.assets["fadeBodymdl"];
   	var texture = mojo.assets["fadeBody"];
   	var material = new  THREE.MeshLambertMaterial( {map: texture});
   	var mesh = new THREE.Mesh( geometry, material );
   	mesh.scale.set(12,12,12);

   	this.group.add( mesh );

   	geometry = mojo.assets["fadeMask1mdl"];
   	texture = mojo.assets["fadeMask1"];
   	material = new  THREE.MeshLambertMaterial( {map: texture});
   	mesh = new THREE.Mesh( geometry, material );
	mesh.scale.set(12,12,12);
	mesh.position.y = 30;
	mesh.position.x = 6;


	this.group.add(mesh);


   	game.scene.add(this.group);
	
   	this.group.position = this.pos;

	this.Update = function()
	{
		//FIX THIS!!??? why is theirs fast??? -> http://alteredqualia.com/three/examples/webgl_geometry_triangulate_quads.html 
		//Because they are mocking you. just like git. 
		//if(game.clock.getElapsedTime % 3 === 0)
		//this.UpdateRay();
		//this.UpdateAI(); 
		//this.Move();


	}

	this.UpdateRay = function()
	{
		//console.log("Shadow Ray");
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = game.camera.position.y+500000;

		var intersects = this.ray.intersectObject( game.ground.mesh );

		if ( intersects.length > 0 ) 
		{

			this.pos.y = intersects[ 0 ].point.y + (this.height/2);
		}
	}

	this.Move = function()
	{


	}

	this.UpdateAI = function()
	{


	}

	this.swapWorld = function(){

	}
	
}