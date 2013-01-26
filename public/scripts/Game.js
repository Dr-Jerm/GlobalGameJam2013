function Game()
{

	//THREE.js Variables
	this.renderer;
	this.camera;
	this.scene;




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
      	var geometry = new THREE.CubeGeometry( 200, 200, 200 );
      	var material = new THREE.MeshBasicMaterial( { color: 0xffffff, wireframe: true} );
      	var mesh = new THREE.Mesh( geometry, material );
      	this.scene.add( mesh );

      	//test function, remove
      	this.renderer.render(this.scene,this.camera);

	}	
}