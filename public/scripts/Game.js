function Game()
{

  this.testString = "Nope";
  this.inputControls = new Input(); 

  this.isPulse = false; 
  this.wasPulse = false; 

  this.assets = new Assets();

  this.player = new Player(); 
  this.shadowList = new Array();
  this.treeList = new Array();




  //TIME
  this.clock = new THREE.Clock();
  this.delta = this.clock;

  //WORLD INFO:
  var worldWidth = 56, worldDepth = 56;
	this.ground;
	this.sunLight;
	this.skyColor = 0xefd1b5;

  this.init = function(){
    this.setupThree();
  }

  this.setupThree = function(){
    this.renderer = new THREE.WebGLRenderer( {clearColor: this.skyColor, antialias: true } );
      this.renderer.setSize( window.innerWidth, window.innerHeight );
      document.body.appendChild( this.renderer.domElement );


      this.camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 1, 5000 );
        this.camera.position.z = 400;
        this.camera.position.y = 200;
  

        this.projector = new THREE.Projector();

        this.scene = new THREE.Scene();



        this.SetupWorld();

  } 

  this.SetupWorld = function(){

  		this.scene.fog = new THREE.FogExp2( this.skyColor, 0.0025 );

  		//GROUND PLANE
   		var data = this.generateHeight( worldWidth, worldDepth );

		var geometry = new THREE.PlaneGeometry( 7000, 7000, worldWidth - 1, worldDepth - 1 );
		geometry.applyMatrix( new THREE.Matrix4().makeRotationX( - Math.PI / 2 ) );

		for ( var i = 0, l = geometry.vertices.length; i < l; i ++ ) {

			geometry.vertices[ i ].y = data[ i ] *5;

		}
		var groundTexture = THREE.ImageUtils.loadTexture("../art_assets/concrete-tile.png");
		var groundMaterial = new THREE.MeshLambertMaterial( { color: 0x483d28} );
		geometry.computeFaceNormals();
		this.ground =  new THREE.Mesh( geometry, groundMaterial );
		this.scene.add(this.ground);


		//SUN LIGHT
		this.light = new THREE.DirectionalLight( 0xffffff, 1, 0);
		this.light.position.y = 300;
		this.light.rotation.y = Math.PI;
		this.light.rotation.x = Math.PI/2;

		this.scene.add(this.light);



        // Test geo to get stuff onscreen.
        var loader = new THREE.JSONLoader();

         loader.load( '../art_assets/tree_002-opt.mdl.js.js', function( geometry, materials){
         	var texture = THREE.ImageUtils.loadTexture("../art_assets/tree_002_dif.JPG");
         	var material = new THREE.MeshBasicMaterial( { map: texture} );
			var mesh = new THREE.Mesh( geometry, material );
			//mesh.scale.set(.2,.2,.2);
			//mesh.position.y = 30;
			this.scene.add(mesh);

         }.bind(this) );

       
        var geometry2 = new THREE.CubeGeometry( 200, 200, 200 );
      	var material = new THREE.MeshBasicMaterial( { color: 0xffffff, wireframe: true} );
      	var mesh = new THREE.Mesh( geometry2, material );
      	this.scene.add( mesh );

  }


  this.Render = function(){
  	this.renderer.render(this.scene,this.camera);
  }

  this.Update = function()
  {
  	this.delta = this.clock.getDelta();
  	//this.input.Update();
    PulseSwitch();
    this.player.Update();
    this.CameraUpdate();
    this.Render();

  }

  this.CameraUpdate = function(){
  	this.camera.position.x = this.player.pos.x;
  	this.camera.position.y = this.player.pos.y + this.player.eyeHeight;
  	this.camera.position.z = this.player.pos.z;
  }

  var PulseSwitch = function()
  {

    //<   switch logic here  >

    
    if(this.isPulse && !this.wasPulse)// begin pulse  for
    {
      for (var s in this.shadowList)
      {
        this.shadowList[s].Move(); 
      }
    }
    if(!this.isPulse && this.wasPulse)// end pulse  
    {
     
    }

  }

  this.generateHeight = function( width, height ) {

				var size = width * height, data = new Float32Array( size ),
				perlin = new ImprovedNoise(), quality = 1, z = Math.random() * 100;

				for ( var i = 0; i < size; i ++ ) {

					data[ i ] = 0

				}

				for ( var j = 0; j < 4; j ++ ) {

					for ( var i = 0; i < size; i ++ ) {

						var x = i % width, y = ~~ ( i / width );
						data[ i ] += Math.abs( perlin.noise( x / quality, y / quality, z ) * quality * 1.75 );


					}

					quality *= 5;

				}

				return data;

			}




  
}
