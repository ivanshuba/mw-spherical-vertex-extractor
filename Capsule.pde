
BiFunction<PVector, Float, Node> produceSphereNode = ( center, radius ) -> {
  Node sphere = new Node() {
    @Override
      public void graphics( PGraphics pg ) {
      pg.pushStyle();
      pg.pushMatrix();
      pg.stroke( 220, 50 );
      pg.fill( 20,20, 220, 50 );
      pg.sphereDetail( 12 );
      pg.sphere( radius );
      pg.popMatrix();
      pg.popStyle();
    }
  };
  sphere.setPosition( center.x, center.y, center.z );
  return sphere;
};

Node startSphere = produceSphereNode.apply( DEFAULT_START_POINT, DEFAULT_RADIUS );
Node endSphere = produceSphereNode.apply( DEFAULT_END_POINT, DEFAULT_RADIUS );


class Capsule {
  PVector sp;
  PVector ep;
  float radius;
  float sqRadius;
  
  Capsule( PVector sp, PVector ep, float radius ) {
    this.sp = sp;
    this.ep = ep;
    this.radius = radius;
    this.sqRadius = radius * radius;
  }

  void update() {
    sp = new PVector( startSphere.position().x(), startSphere.position().y(), startSphere.position().z() );
    ep = new PVector( endSphere.position().x(), endSphere.position().y(), endSphere.position().z() );
  }

  boolean isInside( PVector pt ) {
    return sqRadius < distPtSeg( sp, ep, pt );
  }

}
