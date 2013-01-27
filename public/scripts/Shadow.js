function Shadow( game, _pos)
{

	//--------Movement-----------
	this.pos = _pos; 
	this.rot = _rot;  

	//--------Stats---------------
	this.health = 100;
	this.healthMax = 100;



	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;


	var geometry = new THREE.CubeGeometry( 200, 200, 200 );
   	var material = new THREE.MeshBasicMaterial( { color: 0x050505, wireframe: false} );
   	var mesh = new THREE.Mesh( geometry, material );
   	game.scene.add( mesh );



	this.Update = function()
	{
		//FIX THIS!!??? why is theirs fast??? -> http://alteredqualia.com/three/examples/webgl_geometry_triangulate_quads.html
		//if(game.clock.getElapsedTime % 3 === 0)
		this.UpdateRay();
		this.UpdateAI(); 
		this.Move();

	}

	this.UpdateRay = function()
	{
		this.ray.ray.origin = this.pos;

		this.ray.ray.origin.y = game.camera.position.y +100;

		var intersects = this.ray.intersectObject( game.ground );

		if ( intersects.length > 0 ) 
		{

			this.pos.y = intersects[ 0 ].point.y;
		}
	}

	this.UpdateAI = function()
	{


	}
	
}