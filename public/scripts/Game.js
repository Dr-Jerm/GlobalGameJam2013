function Game()
{

  
  this.input = new Input(); 

  this.isPulse = false; 
  this.wasPulse = false; 

  this.assets = new Assets();

  this.player = new Player(); 
  this.shadowList = new Array();
  this.treeList = new Array();


  this.init = function(){
    this.setupThree();
  }

  this.setupThree = function(){
    this.renderer = new THREE.WebGLRenderer( { antialias: true } );
      this.renderer.setSize( window.innerWidth, window.innerHeight );
      document.body.appendChild( this.renderer.domElement );


      this.camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 1, 2000 );
        this.camera.position.z = 400;
        this.camera.position.y = 20;

        this.projector = new THREE.Projector();

        this.scene = new THREE.Scene();


        // Test geo to get stuff onscreen.
        var geometry = new THREE.OBJLoader();
        geometry.addEventListener( 'load', function ( event ) {

          var object = event.content;

          object.traverse( function ( child ) {
            if(child instanceof THREE.Mesh) {
              child.material.color = 0xc9c9c9;
            }

          } );
          //scene.add( object );
        });
        geometry.load( '../art_assets/column.obj' );

      	//var material = new THREE.MeshBasicMaterial( { color: 0xffffff, wireframe: true} );
      	//var mesh = new THREE.Mesh( geometry, material );
      	//this.scene.add( mesh );

        //test function, remove
        

  } 


  this.Render = function(){
  	this.renderer.render(this.scene,this.camera);
  }

  this.Update = function()
  {

    PulseSwitch();
    this.player.Update();
    this.Render();

    this.camera.rotation.z += .001
  }



  var PulseSwitch = function()
  {

    //<   switch logic here  >

    
    if(this.isPulse && !this.wasPulse)// begin pulse  
    {
      for(var s in this.shadowList)
      {
        this.shadowList[s].Move(); 
      }
    }
    if(!this.isPulse && this.wasPulse)// end pulse  
    {
     
    }

  }




  
}
