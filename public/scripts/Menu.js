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
		$('.button.credits').click(function () {
			//document.getElementById('creditscrate').style.display = 'block';
			$('.creditscrate').fadeIn(600);
		});
		$('.button.credits.close').click(function (){
			$('.creditscrate').fadeOut(300);
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
			$('.button').slideUp( 0 , function() {
				$('.menu').slideUp(300);
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
		else if(type == "model") {
			asset = this.registerModel(name, asset);
		}

		return asset;
	},

	registerImage: function (name, asset) {
		self = this;

		var texture = THREE.ImageUtils.loadTexture(asset, null, function( event ) {
			if(event instanceof THREE.Texture) {
				self.assets[name] = event;
				self.loads();
				return event;
			}
			else {
				return null;
			}
		});

		return texture;
	},

	registerModel: function(name, asset) {
		self = this;
		var loader = new THREE.JSONLoader();

		var geometry = loader.load(asset, function( geometry ) {
			if(geometry instanceof THREE.Geometry) {
				self.assets[name] = geometry;
				self.loads();
				return geometry;
			}
			else {
				return null;
			}
		});

		return geometry;
	},

	loads: function() {
		this.loaded += 1;
		
		if(this.loaded == this.size) {
			$(document).trigger("loaded");
		}
	},

	loader: function() {
		var self = this;
		$(document).bind("loaded", function () {
			console.log("All assets loaded.");
		});
	}
};
