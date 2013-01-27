function Shadow( game, _pos)
{

	
	//--------Movement-----------
	this.pos = _pos; 
	//this.pos.set(500,500,500);
	this.rot = new THREE.Vector3();
	//--------Stats---------------
	this.height = 100; 

	this.health = 100;
	this.healthMax = 100;



	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;


	var geometry = new THREE.CubeGeometry( 50, 100, 50 );
   	var material = new THREE.MeshBasicMaterial( { color: 0x000000} );
   	var mesh = new THREE.Mesh( geometry, material );

   	game.scene.add( mesh );
	
   	mesh.position = this.pos;

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

		var intersects = this.ray.intersectObject( game.ground );

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
	
}