function Game()
{

	var self = this;
  this.testString = "Here I am";
  this.inputControls = new Input(this);  

  this.player = new Player(this); 
  this.shadowList = new Array();
  this.treeList = new Array();
  this.heart;
  //this.sounds = new Sounds(this);
  this.shadowSpawner = new ShadowSpawner(this);
  this.worldGen = new WorldGen(this);
  this.renderer;
  this.renderer2;

  this.scene;
  var fog1;
  var fog2;

  //TIME
  this.clock = new THREE.Clock();
  this.delta = 0; 

  this.isPulse = false;
  this.pulseIntensity = 0; 
  this.pulseIntensityDecay = 1; 
  this.pulseIntensityMax = 35;

  this.opacc = 1; 



  // this.wasPulse = false; 

  // this.pulseloopTime = 0;
  // this.pulseloopTotalTime = 1000; 
  
  // this.pulselength = 100;
  // this.pulseIntensity = 0; 
  // this.pulseIntensityMax = 100; 
  // this.pulseTime = 0;
  // this.wubtime = 600;
  // this.dubtime = 750;

  //WORLD INFO:
  var worldWidth = 56, worldDepth = 56;
	this.ground;
	this.snow;
	this.sunLight;
	this.skyColor = new THREE.Color( 0x686d7f);
	this.doomColor = new THREE.Color(0x9b5a3a);
	this.currColor = this.skyColor.getHex;

	this.worldState = 1;


  this.init = function(){
    this.setupThree();
  }

  this.setupThree = function(){
    this.renderer = new THREE.WebGLRenderer( { antialias: true, clearColor: this.currColor } );
      this.renderer.setSize( window.innerWidth, window.innerHeight );
      document.body.appendChild( this.renderer.domElement );


      this.camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 1, 5000 );
        this.camera.position.z = 400;
        this.camera.position.y = 200;
        //this.camera.rotation.copy(this.player.camRot);

  

        this.projector = new THREE.Projector();

        this.scene = new THREE.Scene();

        this.SetupWorld();

  } 



  this.SetupWorld = function(){
  		console.log(worldWidth + worldDepth);
  		this.ground = new Ground(7000, worldWidth, worldDepth);

  		this.scene.fog = fog1 = new THREE.FogExp2( this.currColor, 0.0025 );
  		fog2 = new THREE.FogExp2( this.doomColor.getHex(), 0.0025 );
 
		this.scene.add(this.ground.mesh);

		//SUN LIGHT
		this.light = new THREE.DirectionalLight( 0xffffff, 1, 0);
		this.light.position.y = 300;
		this.light.rotation.y = Math.PI;
		this.light.rotation.x = Math.PI/2;

		this.scene.add(this.light);
		

		// SNOW & paricles
		this.snow = new Snow(this.scene);

		// Amb light
//		var ambLight = new THREE.AmbientLight( 0xffffff );
//		this.scene.add(ambLight);


    this.worldGen.Generate();
    //makeWav();
    sounds.start_beat(800);
		  //this.itemspawner = new ItemSpawner();
  }

  this.updateColors = function(){


  }

  this.SwitchWorld = function(milSec)
  {
		
    this.isPulse = !this.isPulse;

    for(var i in this.shadowList)
    {
      this.treeList[i].swapWorld();
    }
  	for(var i in this.shadowList)
    {
  		this.shadowList[i].swapWorld();
  	}

	this.ground.swapWorld();

  	if(this.worldState == 1)
    {
  		this.skyColor = 0x9b5a3a;
  		this.scene.fog = fog2;
  		this.worldState = 2;
  	}
  	else
    {
  		this.skyColor = 0x686d7f;
  		this.scene.fog = fog1;
  		this.worldState = 1;
  	}
	
}


//TEST FUNCTION FOR 
  $(document).keypress( function(event){
  	if (event.keyCode == 32)
  		self.SetPulse();
  });

  this.counter = 0;

  this.Render = function(){
  	this.renderer.setClearColorHex( this.skyColor, 1.0 );
  	this.renderer.render(this.scene,this.camera);
  }

  this.Update = function()
  {
  	this.delta = this.clock.getDelta();
  	this.inputControls.Update();

    this.UpdatePulse();

    //this.ShadowUpdate();
    this.player.Update();
    this.CameraUpdate();
    this.Render();
    this.snow.update();

    for (var s in this.shadowList)
      {
        this.shadowList[s].drawUpdate(); 
      }

  }

  this.CameraUpdate = function(){
  	this.camera.position.x = this.player.pos.x;
  	this.camera.position.y = this.player.pos.y + this.player.eyeHeight;
  	this.camera.position.z = this.player.pos.z;
    //this.camera.rotation.copy(this.player.camRot);
    this.camera.lookAt(this.player.camRot);
    
  }

  this.UpdatePulse = function()
  {
    if(this.isPulse)
    {
      this.opacc += .1;
      if(this.opacc > 1)
      {
        this.opacc = 1;
      }

      this.pulseIntensity -= this.pulseIntensityDecay; 
      if(this.pulseIntensity < 0)
      {
        this.pulseIntensity = 0;
        self.SwitchWorld();
      }
    }
    else
    {
      this.opacc -= .1;
      if(this.opacc < 0)
      {
        this.opacc = 0;
      }
    }
  
  }



  this.SetPulse = function()
  {
    if(this.isPulse)//if already in pulse switch it off to start next
    {
        self.SwitchWorld();
    }
    self.SwitchWorld();
    this.pulseIntensity = this.pulseIntensityMax; 
    this.shadowSpawner.Update();
    this.ShadowUpdate();
  }

  this.ShadowUpdate = function()
  {
    for (var s in this.shadowList)
      {
        this.shadowList[s].Update(); 
      }
  }


  
}
