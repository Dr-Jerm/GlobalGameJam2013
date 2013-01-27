var Ground = function(range, wW, wD){
	this.constructor(range, wW, wD)
	return this;
}

Ground.prototype = {

	mesh : null,
	mat1 : null,
	mat2 : null,

	constructor : function(range, worldWidth, worldDepth){
		console.log(range);

 		//GROUND PLANE
   		var data = this.generateHeight( worldWidth, worldDepth );

   		this.color1 =  new THREE.Color(0xffffff);
   		this.color2 =  new THREE.Color(0x483d28);
   		this.currColor = this.color1.getHex();

		var geometry = new THREE.PlaneGeometry( range, range, worldWidth - 1, worldDepth - 1 );
		geometry.applyMatrix( new THREE.Matrix4().makeRotationX( - Math.PI / 2 ) );

		for ( var i = 0, l = geometry.vertices.length; i < l; i ++ ) {

			geometry.vertices[ i ].y = data[ i ] *5;

		}
		this.mat1 = new THREE.MeshLambertMaterial( { color: this.currColor} );
		geometry.computeFaceNormals();
		this.mesh =  new THREE.Mesh( geometry, this.mat1 );





	},

	  generateHeight : function( width, height ) {

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

	},

	updateColors : function(){
  	var c1R = this.color1.r;
  	var c1G = this.color1.g;
  	var c1B = this.color1.b;

  	var c2R = this.color2.r;
  	var c2G = this.color2.g;
  	var c2B = this.color2.b;

  	var nR = -game.opacc*(c1R-c2R) + c1R;
  	var nG = -game.opacc*(c1G-c2G) + c1G;
  	var nB = -game.opacc*(c1B-c2B) + c1B;

  	var nC = new THREE.Color(0xffffff);
  	nC.setRGB(nR, nG, nB);
  	this.currColor = nC.getHex();

  	this.mat1.color.setHex(this.currColor);


  }

	// swapWorld : function(){
	// 	var currMat = this.mesh.material;
	// 	if(currMat == this.mat1)
	// 		currMat = this.mat2;
	// 	else
	// 		currMat = this.mat1;

	// 	this.mesh.material = currMat;
	// }




}