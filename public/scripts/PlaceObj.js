
var ItemSpawner = function(_t) {
	this.constructor(_t);
 	return this;
}
ItemSpawner.prototype = {

	popul: 1600,
	range: 0,
	items: 1,
	constructor: function(_t) {
		switch(_t) {
			case "tree":break;
			case "rock":break;
			case "bush":break;
			case "grass":break;
			default:
				_t = "tree";
			break;
		}
		var type = _t;
		for(var i=0; i < this.popul; i++) {
			var inx = 2;//(Math.floor((Math.random()*this.items)+1));
			var texture = mojo.assets[type+inx];
			var geometry = mojo.assets[type+inx+"mdl"];
			var material = new THREE.MeshBasicMaterial( {map: texture} );
			var mesh = new THREE.Mesh( geometry, material );
			mesh.scale.set(10,10,10);
			
			var rayDir = new THREE.Vector3( 0, -1, 0 );
			this.ray = new THREE.Raycaster(mesh.position, rayDir);
			this.ray.rayDir = rayDir;
			
			mesh.rotation.x = (Math.random()*.04);
			mesh.rotation.y = Math.random();
			mesh.rotation.z = (Math.random()*.04);

  			mesh.position = this.place_rand();
  			mesh.position.y = -1;
			while( mesh.position.y == -1) {
				this.ray.ray.origin = mesh.position;

				this.ray.ray.origin.y = game.camera.position.y +100;

				var intersects = this.ray.intersectObject( game.ground );

				if( intersects.length > 0 ) {
					mesh.position.y = intersects[0].point.y;
				}
			}

        	game.scene.add(mesh);
		}
	},
	place_rand : function() {
		var pos = new THREE.Vector3();
		pos.x = ((Math.random()*7000)-3500);
		pos.y = ((Math.random()*170)+70);
		pos.z = ((Math.random()*7000)-3500);
		return pos;
	}
}
