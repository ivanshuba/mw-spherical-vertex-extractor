// Returns the distance between point c and segment ab
// a - start of the linear segment
// b - end of the linear segment
// c - target point to be tested
float distPtSeg( PVector a, PVector b, PVector c ) {
  PVector ab = PVector.sub( b, a );
  PVector ac = PVector.sub( c, a );
  
  float t = PVector.dot( ac, ab ) / PVector.dot( ab, ab );
  if ( t < 0.0 ) t = 0.0;
  if ( t > 1.0 ) t = 1.0;
  
  PVector d = PVector.add( a, PVector.mult( ab, t ) );
  PVector cd = PVector.sub( d, c );
  return cd.mag();
}
 //<>//

// Returns the squared distance between point c and segment ab
// a - start of the linear segment
// b - end of the linear segment
// c - target point to be tested
float sqDistPtSeg( PVector a, PVector b, PVector c ) {
  PVector ab = PVector.sub( b, a ); // vector from A to B
  PVector ac = PVector.sub( c, a ); // vector from A to C
  PVector bc = PVector.sub( c, b ); // vector from A to B
  float e = PVector.dot( ac, ab );  // squared length of the projection
  float f = PVector.dot( ab, ab );  // squared length of the AB segment

  // if projection shadow lies before the start of the linear segment span, 
  // then return the squared distance from start point to the target point
  if ( e <= 0.0f ) return PVector.dot( ac, ac );
  // if projection shadow lies after the end of the linear segment span, 
  // then return the squared distance from end point to the target point 
  if ( e >= f ) return PVector.dot( bc, bc );
  
  // if projection is within segment span, then avoid explicit calculation of D vertex 
  float dot = PVector.dot( ac, ac );
  return dot - e * e / f;
}
