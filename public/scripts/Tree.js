function Tree(_point, _rot, _angle)
{

	this.pos = _point; 
	this.rot = _rot;
	this.agl = _angle;
	
	var obj = "tree"+(Math.floor((Math.random()*g_obj_limits)+1));
}
