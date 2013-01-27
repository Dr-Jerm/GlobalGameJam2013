Snow = function(scene){
	this.scene = scene;

	this.particles = [];
	this.geometry = new THREE.Geometry();
	this.materials = [];
	this.color;
	
	for (var i = 0; i < 6000; i ++ ) {
		var vertex = new THREE.Vector3();
		vertex.x = Math.random() * 2000 - 1000;
		vertex.y = Math.random() * 2000 - 1000;
		vertex.z = Math.random() * 2000 - 1000;

		this.geometry.vertices.push( vertex );
	}

	this.parameters = [ [ [1.0, 1.0, 1.0], 5 ], [ [0.95, 1, 1], 4 ], [ [0.90, 1, 1], 3 ], [ [0.85, 1, 1], 2 ], [ [0.80, 1, 1], 1 ] ];

	for (var i = 0; i < this.parameters.length; i ++ ) {

		var size  = this.parameters[i][1] * 2;
		this.color = this.parameters[i][0];
		
		this.materials[i] = new THREE.ParticleBasicMaterial( 
				{ size: size, 
					//map: THREE.ImageUtils.loadTexture( 'images/particle.png' ), 
					color: 0xE1E1FF,
					transparent: true,
					depthWrite: false
					} ); 

		var particle = new THREE.ParticleSystem( this.geometry, this.materials[i] );

		particle.rotation.x = Math.random() * 6;
		particle.rotation.y = Math.random() * 6;
		particle.rotation.z = Math.random() * 6;

		this.particles.push(particle);
		this.scene.add( particle );
	}
	
	this.update = function(){

		var time = Date.now() * 0.00005;
		
		for (var i = 0; i < this.particles.length; i ++ ) {
			var object = this.particles[ i ];

			if ( object instanceof THREE.ParticleSystem ) {
				object.rotation.y = time * ( i < 4 ? i + 1 : - ( i + 1 ) );
			}
		}
	}
}