/**
 *
 *
 */
var Menu = function() { this.constructor(); return this; };
Menu.prototype = {
	skip: false,
	constructor: function() {
		if(this.skip) {
			this.complete();	
		}
		else {
			this.menu();
		}

		return this;
	},
	// Initiate loading bar
	load: function() {
		console.log("Loading...");

	},
	// Add Menu
	menu: function() {
		// Fade-in all components
		$('.menu').fadeIn('slow');
		//Set up buttons
		this.buttons();
	},
	// Add context menu buttons
	buttons: function() {
		var self = this;
		
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

/**
 *
 *
 */
var AssetMojo = function() { this.constructor(); return this; };
AssetMojo.prototype = {

	assets: {},

	size: 0,

	loaded: 0,

	constructor: function() {
		var self = this;

		//Intialize loading
		self.loader();

		$.getJSON("json/assets.json", function(data) {
			if(self.size == 0) self.size = data.length; 
			
			$.each(data, function() {
				$this = $(this);
				self.register($this[0].name, $this[0].url, $this[0].type);
			});
		});

		return this;
	},

	register: function(name, asset, type) {
		console.log(">>>>>>>>>>>>> Registering Asset: " + name);

		if(type == "image") {
			asset = this.registerImage(name, asset);
		}

		return asset;
	},

	registerImage: function (name, asset) {
		self = this;

		var texture = THREE.ImageUtils.loadTexture(asset, null, function( event ) {
			if(event instanceof THREE.Texture) {
				self.assets[name] = event;
				
				self.loaded += 1;
				
				if(self.loaded == self.size) {
					$(document).trigger("loaded");
				}

				return event;
			}
			else {
				return null;
			}
		});

		return texture;
	},

	loader: function() {
		$(document).bind("loaded", function () {
			console.log("All assets loaded.");
		});
	}
};
