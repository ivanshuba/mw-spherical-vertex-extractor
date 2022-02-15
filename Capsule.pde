
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
    return radius < distPtSeg( sp, ep, pt );
  }

}
