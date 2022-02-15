
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

void setupScene() {
  scene = new Scene( this );
  scene.loadConfig( "data/config.json" );
  scene.setFOV( 30 );
  scene.setBounds( 500 );
  scene.enableHint( Scene.GRID | Scene.AXES );
  scene.configHint( Scene.GRID, Scene.GridType.LINES, color( 0, 255, 0 ) );
}
