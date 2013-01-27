
var ItemSpawner = function(_t) {
	this.constructor(_t);
 	return this;
}
ItemSpawner.prototype = {

	popul: 1000,
	range: 0,
	items: 2,
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
			var inx = 2;// (Math.floor((Math.random()*this.items)+1));
			var texture = mojo.assets[type+inx];
			var geometry = mojo.assets[type+inx+"mdl"];
			var material = new THREE.MeshBasicMaterial( {map: texture} );
			var mesh = new THREE.Mesh( geometry, material );
			mesh.scale.set(6,6,6);
  			mesh.position = this.place_rand();
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
