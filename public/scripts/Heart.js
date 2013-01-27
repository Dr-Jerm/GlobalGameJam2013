var Heart = function(distance){
	this.constructor(distance)
	return this;
}

Heart.prototype = {
	
	mesh : null,
	pos : new THREE.Vector3( 0, 0, 0 ),
	flareTextures : new Array(),

	constructor : function(distance){
		var randX = (Math.random()-0.5)*distance;
		var randZ = (Math.random()-0.5)*distance;

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

			this.pos.y = intersects[ 0 ].point.y + 15;
		}

	   	var geometry = mojo.assets["heartmdl"];
	   	var texture = mojo.assets["heart"];
	   	var material = new  THREE.MeshLambertMaterial( {map: texture});
	   	this.mesh = new THREE.Mesh( geometry, material );
		this.mesh.scale.set(0.1,0.1,0.1);
		this.mesh.position = this.pos;

		game.scene.add(this.mesh);


		for(var i = 0; i < 4; i++){
			this.flareTextures[i] = mojo.assets["lensflare"+i];
		}

		this.addLight(0.08, 0.825, 0.99, this.pos.x, this.pos.y, this.pos.z );



	},

	addLight : function( h, s, v, x, y, z ) {

		var light = new THREE.PointLight( 0xffffff, 1.5, 4500 );
		light.position.set( x, y+10, z );
		//game.scene.add( light );

		light.color.setHSV( h, s, v );

		var flareColor = new THREE.Color( 0xffffff );
		flareColor.copy( light.color );
		THREE.ColorUtils.adjustHSV( flareColor, 0, -0.5, 0.5 );

		var lensFlare = new THREE.LensFlare( this.flareTextures[0], 700, 0.0, THREE.AdditiveBlending, flareColor );

		lensFlare.add( this.flareTextures[2], 512, 0.0, THREE.AdditiveBlending );
		lensFlare.add( this.flareTextures[2], 512, 0.0, THREE.AdditiveBlending );
		lensFlare.add( this.flareTextures[2], 512, 0.0, THREE.AdditiveBlending );

		lensFlare.add( this.flareTextures[3], 60, 0.6, THREE.AdditiveBlending );
		lensFlare.add( this.flareTextures[3], 70, 0.7, THREE.AdditiveBlending );
		lensFlare.add( this.flareTextures[3], 120, 0.9, THREE.AdditiveBlending );
		lensFlare.add( this.flareTextures[3], 70, 1.0, THREE.AdditiveBlending );

		lensFlare.customUpdateCallback = this.lensFlareUpdateCallback;
		lensFlare.position = light.position;

		game.scene.add( lensFlare );

	},


	lensFlareUpdateCallback : function( object ) {

		var f, fl = object.lensFlares.length;
		var flare;
		var vecX = -object.positionScreen.x * 2;
		var vecY = -object.positionScreen.y * 2;


		for( f = 0; f < fl; f++ ) {

			   flare = object.lensFlares[ f ];

			   flare.x = object.positionScreen.x + vecX * flare.distance;
			   flare.y = object.positionScreen.y + vecY * flare.distance;

			   flare.rotation = 0;

		}

		object.lensFlares[ 2 ].y += 0.025;
		object.lensFlares[ 3 ].rotation = object.positionScreen.x * 0.5 + THREE.Math.degToRad( 45 );

	}

}