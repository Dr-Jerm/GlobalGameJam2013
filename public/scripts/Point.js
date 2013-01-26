function Point()
{
	x = 0; 
	y = 0;
	z = 0;
}

function PointDistance( _point_A, _point_B)
{
	dist = Math.sqrt( Math.sqrt(_point_A.x - _point_B.x) + Math.sqrt(_point_A.y - _point_B.y) + Math.sqrt(_point_A.z - _point_B.z)); 
	return dist;
}
