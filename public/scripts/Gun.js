var Gun = function(_g) {
	this.constructor(_g);
	return this;
}
Gun.prototype = {
	game: null,
	constructor: function(_g) {
		this.game = _g;
	},
	Update: function() {
	}
}