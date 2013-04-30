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

	this.speed = new THREE.Vector3(); 
	this.maxSpeed = 0; 
	this.rotY = 0; 

	this.targetDistence = 0;

	//---MAGIC-3D--SHIT----------------
	this.group = new THREE.Object3D();

	var rayDir = new THREE.Vector3( 0, -1, 0 );
	this.ray = new THREE.Raycaster(this.pos, rayDir);
	this.ray.rayDir = rayDir;


	var geometry = mojo.assets["fadeBodymdl"];
//	geometry = new THREE.SphereGeometry( 50, 10, 10);
   	var texture = mojo.assets["fadeBody"];
   	this.material1 = new  THREE.MeshLambertMaterial( {map: texture, transparent : true});
   	var mesh = new THREE.Mesh( geometry, this.material1 );
   	mesh.scale.set(12,12,12);

   	this.group.add( mesh );

   	var geometry = mojo.assets["fadeMask1mdl"];
//   	geometry = new THREE.SphereGeometry( 50, 10, 10);
	var idx = Math.floor(1+ Math.random()*3);
   	var texture = mojo.assets["fadeMask"+idx];
   	this.material2 = new  THREE.MeshBasicMaterial( {map: texture, transparent : true});
   	var mesh = new THREE.Mesh( geometry, this.material2 );
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
		//this.pos = this.group 
		this.UpdateAI(); 
		this.Move();

		

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

	this.UpdateAI = function()
	{
		//console.log(" sr" +  this.rotY + " sz" + this.pos.x  + " px" + game.player.pos.x + " sz" + this.pos.z + " pz" +game.player.pos.z + " x" + (game.player.pos.x - this.pos.x) + " z" +  (game.player.pos.z - this.pos.z));
		this.rotY = Math.atan2(game.player.pos.x - this.pos.x, game.player.pos.z- this.pos.z);
		this.rotY += (Math.random()-0.5)*0.5; 

		this.speed.set(this.maxSpeed*Math.sin(this.rotY), 0 , this.maxSpeed*Math.cos(this.rotY));


		

		

	}

	this.Move = function()
	{
		
		

		this.pos.add(this.speed);
		this.UpdateRay();
		this.targetDistence = this.pos.distanceTo(game.player.pos);
		
		if(this.targetDistence < 100)
		{
			this.maxSpeed = this.targetDistence*.5;
		}
		else
		{
			this.maxSpeed = 50; 
		}
		
		//console.log("Shadow Dist " + this.targetDistence + " spos " + this.pos + " mypos " + game.player.pos); 
		if(this.targetDistence < 20)
		{
			game.YOULOSEBITCH = true; 
		}


		this.group.position = this.pos;
		
		this.group.rotation.y = this.rotY - Math.PI/2 + (Math.random()-0.5)*(this.targetDistence/2000);     

	}

	this.drawUpdate = function(){
		this.material1.opacity = game.opacc;
		this.material2.opacity = game.opacc;
	}

	this.swapWorld = function(){
		// if(game.worldState == 1){
		// 	this.material1.opacity = 0.0;
		// 	this.material2.opacity = 0.0;
		// }
		// else{
		// 	this.material1.opacity = 1.0;
		// 	this.material2.opacity = 1.0;
		// }
	}
	
}