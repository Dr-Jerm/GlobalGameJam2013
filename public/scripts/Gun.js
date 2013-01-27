var Gun = function(_g) {
	this.constructor(_g);
	return this;
}
Gun.prototype = {
	position: new THREE.Vector3(),
	rotation: new THREE.Vector3(),
	game: null,
	constructor: function(_g) {
		this.game = _g;
	},
	Update: function() {
		this.position.x = 3-(sin(this.game.player.pos.x))+this.game.player.pos.x;
		this.position.z = 3-(sin(this.game.player.pos.z))+this.game.player.pos.z;
	}
}