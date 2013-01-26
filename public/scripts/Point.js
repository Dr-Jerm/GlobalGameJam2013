function Point()
{
	x = 0; 
	y = 0;
	z = 0;
}

function PointDistance( point_A, point_B)
{
	dist = Math.sqrt( Math.sqrt(point_A.x - point_B.x) + Math.sqrt(point_A.y - point_B.y) + Math.sqrt(point_A.z - point_B.z)); 
	return dist;
}
