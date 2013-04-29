{
	"metadata": {
		"formatVersion" : 3.2,
		"type"		: "scene",
		"generatedBy"	: "SceneExporter",
		"objects"       : 4,
		"geometries"    : 1,
		"materials"     : 1,
		"textures"      : 0
	},

	"urlBaseType": "relativeToScene",

	"objects" :
	{
		"Camera" : {
			"type"     : "PerspectiveCamera",
			"fov"      : 50,
			"aspect"   : 1.1373092926490984,
			"near"     : 1,
			"far"      : 5000,
			"position" : [159.45161367786594,412.4869284041775,307.2961548591398]
		},

		"Torus 10" : {
			"geometry" : "Torus 4",
			"material" : "Material_8",
			"position" : [-3.6,16.21,-21.03],
			"rotation" : [1.3,0,0],
			"scale"	   : [1,1,1],
			"visible"  : true
		},

		"Light 11" : {
			"type"      : "DirectionalLight",
			"color"     : 16777215,
			"intensity" : 1,
			"direction" : [189.83781874614144,271.20003065931184,90.80943860113788],
			"target"    : "Light 11 target"
		},

		"Light 11 target" : {
			"position" : [0,0,0],
			"rotation" : [0,0,0],
			"scale"	   : [1,1,1],
			"visible"  : true
		}
	},

	"geometries" :
	{
	
	},

	"materials" :
	{
		"Material_8": {
			"type"    : "MeshPhongMaterial",
			"parameters"  : {
				"color"  : 16777215,
				"ambient"  : 16777215,
				"emissive"  : 0,
				"specular"  : 1118481,
				"shininess" : 30,
				"bumpScale"  : 1,
				"reflectivity"  : 1,
				"transparent" : false,
				"opacity" : 1,
				"wireframe" : false,
				"wireframeLinewidth" : 1
			}
		}
	},

	"textures" :
	{
	
	},

	"fogs" :
	{
	
	},

	"transform" :
	{
		"position"  : [0,0,0],
		"rotation"  : [0,0,0],
		"scale"     : [1,1,1]
	},

	"defaults" :
	{
		"camera"  : "Camera",
		"fog"  	  : ""
	}
}