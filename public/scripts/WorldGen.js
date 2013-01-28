function WorldGen(game)
{


	var TreeNum = 1600;

	this.treeTex1;
	this.treeTex2;
	this.colTex1;

	this.treeMaterial1;
	this.treeMaterial2;
	this.treeGeo1;
	this.treeGeo2;

	
	this.colMaterial1;
	this.colMaterial2;
	this.colGeo1;
	this.colGeo2;




	
	this.Generate = function()
	{
		console.log("Generate");
		this.GenerateTrees();
		this.GenerateDetails();
		
	}

	this.GenerateTrees = function()
	{
		

			this.treeTex1 = mojo.assets["tree2"];
			this.treeTex2 = mojo.assets["tree3"];
			this.colTex = mojo.assets["column"];
			
			this.treeMaterial1 = new THREE.MeshBasicMaterial( {map: this.treeTex1, transparent : true} );
			this.treeMaterial2 = new THREE.MeshBasicMaterial( {map: this.treeTex2, transparent : true} );
			this.treeGeo1 = mojo.assets["tree2mdl"];
			this.treeGeo2 = mojo.assets["tree3mdl"];
			
			this.colMaterial1 = new THREE.MeshBasicMaterial( {map: this.colTex, transparent : true, depthWrite: false} );
			this.colMaterial2 = new THREE.MeshBasicMaterial( {map: this.colTex, transparent : true, depthWrite: false} );
			this.colGeo1 = mojo.assets["column1mdl"];
			this.colGeo2 = mojo.assets["column2mdl"];


		

		console.log("GenerateTrees ");
		var tree = null; 
		var pos = null;
		var i; 
		for(i=0; i < TreeNum; i++)
		{

			// var idx = Math.floor(1+ ((Math.random()-0.01)*3));
			// //var idx = 2;
			// var texture = mojo.assets["tree"+idx];
			// var geometry = mojo.assets["tree"+idx+"mdl"];
			// var material = new THREE.MeshBasicMaterial( {map: texture, trasparent: true} );

			// mesh = new THREE.Mesh( geometry, material );
			// pos = new THREE.Vector3();
			// pos.set( (Math.random()*7000-3500) , (0), (Math.random()*7000-3500));


			// pos.setY(400);
			tree = new Tree(game, pos);
			tree.UpdateRay();
//			tree.SetMesh(mesh);

			game.treeList[game.treeList.length] = tree;

			//console.log("Spawn Tree at " + pos.x + " " + pos.z + " " + tree.pos.x + " " + tree.pos.y + " " + tree.pos.z)
		}

		console.log('planting Heart');
		game.heart = new Heart(7000);

	}

	this.updateColors = function(){
		// this.material.opacity = 1-game.opacc;
		// this.material2.opacity = game.opacc;

		this.treeMaterial1.opacity = 1-game.opacc;
		this.treeMaterial2.opacity = 1-game.opacc;


	
		this.colMaterial1.opacity = game.opacc;
		this.colMaterial2.opacity = game.opacc;
	}


	this.GenerateDetails = function()
	{
	}

}