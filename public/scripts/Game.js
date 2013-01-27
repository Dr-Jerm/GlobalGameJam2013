function Game()
{

	var self = this;
  this.testString = "Here I am";
  this.inputControls = new Input(this);  

  this.player = new Player(this); 
  this.shadowList = new Array();
  this.treeList = new Array();
  this.ShadowSpawner = new ShadowSpawner(this);

  this.renderer;
  this.renderer2;

  this.scene;


  //TIME
  this.clock = new THREE.Clock();
  this.delta = 0; 

  // this.isPulse = false; 
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
	this.sunLight;
	this.skyColor = 0xefd1b5;

	this.worldState = 1;


  this.init = function(){
    this.setupThree();
  }

  this.setupThree = function(){
    this.renderer = new THREE.WebGLRenderer( { antialias: true, clearColor: this.skyColor } );
      this.renderer.setSize( window.innerWidth, window.innerHeight );
      document.body.appendChild( this.renderer.domElement );


      this.camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 1, 5000 );
        this.camera.position.z = 400;
        this.camera.position.y = 200;
        this.camera.rotation.copy(this.player.camRot);
  

        this.projector = new THREE.Projector();

        this.scene = new THREE.Scene();

        this.SetupWorld();

  } 



  this.SetupWorld = function(){
  		console.log(worldWidth + worldDepth);
  		this.ground = new Ground(7000, worldWidth, worldDepth);

  		this.scene.fog = new THREE.FogExp2( this.skyColor, 0.0025 );

 
		this.scene.add(this.ground.mesh);

		//SUN LIGHT
		this.light = new THREE.DirectionalLight( 0xffffff, 1, 0);
		this.light.position.y = 300;
		this.light.rotation.y = Math.PI;
		this.light.rotation.x = Math.PI/2;

		this.scene.add(this.light);

    
		  this.itemspawner = new ItemSpawner();
  }

  this.SwitchWorld = function(milSec){
  		for(var i in this.treeList){
  			this.treeList[i].swapWorld();
  		}
  		for(var i in this.shadowList){
  			this.shadowList[i].swapWorld();
  		}

  		this.ground.swapWorld();
  }

  $(document).keypress( function(event){
  	if (event.keyCode == 32)
  		self.SwitchWorld();
  });

  this.counter = 0;

  this.Render = function(){

  	this.renderer.render(this.scene,this.camera);
  }

  this.Update = function()
  {
  	this.delta = this.clock.getDelta();
  	//this.input.Update();
    //PulseSwitch();
    this.ShadowSpawner.Update();
    this.ShadowUpdate();
    this.player.Update();
    this.CameraUpdate();
    this.Render();
    this.ShadowUpdate();

  }

  this.CameraUpdate = function(){
  	this.camera.position.x = this.player.pos.x;
  	this.camera.position.y = this.player.pos.y + this.player.eyeHeight;
  	this.camera.position.z = this.player.pos.z;
    this.camera.rotation.copy(this.player.camRot);
    //this.camera.lookAt(this.player.camTargetWorld);
    
  }

  this.PulseSwitch = function()
  {
    console.log(this.clock.getDelta());
    // this.wasPulse = this.isPulse; 

    // this.pulseLoopTime += this.delta; 
    // if(this.pulseLoopTime > this.pulseloopTotalTime) this.pulseLoopTime = 0; 

    // if(this.isPulse) this.pulseTime += this.delta; 
    // if(this.pulsetime> this.pulselength)
    // { 
    //   this.pulsetime = 0;
    //   this.isPulse = false; 
    // }
    // if((this.pulseLoopTime > this.wubtime || this.pulseLoopTime > this.dubtime) && !this.isPulse)
    // {
    //   this.isPulse = true; 
    //   console.log("THUMP");
    // }




    // //<   switch logic here  >

    
    // if(this.isPulse && !this.wasPulse)// begin pulse  for
    // {
    //   for (var s in this.shadowList)
    //   {
    //     this.shadowList[s].Move(); 
    //   }
    // }
    // if(!this.isPulse && this.wasPulse)// end pulse  
    // {
     
    // }

  }



  this.setPulse = function()
  {

  }

  this.ShadowUpdate = function()
  {
    for (var s in this.shadowList)
      {
        this.shadowList[s].Update(); 
      }

  }


  
}
