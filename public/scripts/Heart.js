var Heart = function(distance){
	this.constructor(distance)
	return this;
}

Heart.prototype = {
	
	mesh : null,
	pos : new THREE.Vector3( 0, 0, 0 ),

	constructor : function(distance){
		var randX = (Math.random()-0.5)*distance;
		var randZ = (Math.random()-0.5)*distance;

		randX = 10;
		randZ = 10;

		this.pos.x = randX;
		this.pos.z = randZ;

		var rayDir = new THREE.Vector3( 0, -1, 0 );
		var ray = new THREE.Raycaster(this.pos, rayDir);
		ray.rayDir = rayDir;

		ray.ray.origin = this.pos;

		ray.ray.origin.y = this.pos.y+500000;

		var intersects = ray.intersectObject( game.ground.mesh );

		if ( intersects.length > 0 ) 
		{

			this.pos.y = intersects[ 0 ].point.y + 30;
		}

	   	var geometry = mojo.assets["heartmdl"];
	   	var texture = mojo.assets["heart"];
	   	var material = new  THREE.MeshLambertMaterial( {map: texture});
	   	this.mesh = new THREE.Mesh( geometry, material );
		this.mesh.scale.set(0.1,0.1,0.1);
		this.mesh.position = this.pos;

		game.scene.add(this.mesh);

	}

}