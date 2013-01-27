
var ItemSpawner = function() {
	this.constructor() return this;
}
ItemSpawner.prototype = {

	range: 0,
	constructor: function() {
	},
	place_rand : function() {
		var pos = new THREE.Vector3();
		pos.x = (Math.random()*7000)-7000);
		pos.y = (Math.random()*200)-10);
		pos.z = (Math.random()*7000)-7000);
		return pos;
	}
}
