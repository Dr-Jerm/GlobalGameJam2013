
var ItemSpawner = function() {
	this.constructor() return this;
}
ItemSpawner.prototype = {

	popul: 300,
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
			break
		}
		var type = _t;
		for(var i=0; i < popul; i++) {
			var inx = (Math.floor((Math.random()*items)+1));
			var texture = mojo.assets[type+inx];
			var geometry = mojo.assets[type+inx+"mdl"];
			var material = new THREE.MeshBasicMaterial( {map: texture} );
			var mesh = new THREE.Mesh( geometry, material );
			mesh.scale.set(.1,.1,.1);
  			mesh.position.x = 0;
        	mesh.position.y = 0;
        	mesh.position.z = 0;
        	game.scene.add(mesh);
		}
	},
	place_rand : function() {
		var pos = new THREE.Vector3();
		pos.x = (Math.random()*7000)-7000);
		pos.y = (Math.random()*200)-10);
		pos.z = (Math.random()*7000)-7000);
		return pos;
	}
}
