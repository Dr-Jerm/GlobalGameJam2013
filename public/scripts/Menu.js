
Menu = function () {

	if(this.skip) {
		this.complete();	
	}
	else {
		this.menu();
	}

	return this;
};

Menu.prototype = {
	skip: true,

	constructor: Menu,
	// Initiate loading bar
	load: function() {
		console.log("Loading...");

	},

	// Add Menu
	menu: function() {
		console.log("Rendering Menu...");

		// Fade-in all components
		$('.menu').fadeIn('slow');
		//Set up buttons
		this.buttons();
	},
	// Add context menu buttons
	buttons: function() {
		var self = this;
		console.log("Adding Buttons...");
		$('.button.start').click(function () {
			self.complete();
		});
	},
	// Load assets
	await: function() {
		console.log("Awaiting User...");
	},
	// Load complete and ready to launch game
	complete: function() {
		console.log("Loading Game...");
		var loaded = firstLoad();

		if( loaded ) {
			$('.button').animate({
				marginLeft: -9000
			}, 1500 , function() {
				$('.menu').fadeOut(3000);
			});
			
		}
	}
};

AssetMojo = function () {
	return this;
};

AssetMojo.prototype = {
	loader: null,

	constructor: function() {
		this.loader = new THREE.ImageLoader();

		this.loader.addEventListener('load', function ( event ) {
			console.log(event);
		});
	},

	assets: {},

	register: function(name, asset, type) {

		if(type == "image") {
			asset = this.registerImage(name, asset);
		}

		return asset;
	},

	registerImage: function (name, asset) {
		console.log("Registering... " + asset);

		var texture = THREE.ImageUtils.loadTexture(asset);

		if(texture) {
			this.assets[name] = texture;
			return texture;
		}
		else {
			return null;
		}
	}
};
