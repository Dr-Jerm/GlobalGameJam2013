function Tree(_point, _rot, _angle)
{

	this.pos = _point;
	this.rot = _rot;
	this.agl = _angle;
	var index = Math.floor((Math.random()*Assets.tree_limit)+1);
	var obj = "tree"+index+".mdl.js";
	var tex = "tree"+index+".jpg";
}
