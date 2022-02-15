void drawInfo() {
  fill( 0 );
  scene.beginHUD();
  text( "press 'r' to remove vertices", 5, 20 );
  text( "press 'i' to (re)initialize grid", 5, 35 );
  text( "press 'v' to show/hide grid volume", 5, 50 );
  text( "press 's' to show/hide grid skin", 5, 65 );
  text( "rotate MOUSE WHEEL to zoom in and out", 5, 95 );
  text( "drag RIGHT MOUSE BUTTON on spheres to move them around in model space", 5, 110 );
  text( "drag RIGHT MOUSE BUTTON on canvas to PAN camera", 5, 125 );
  text( "drag LEFT MOUSE BUTTON on canvas to ROTATE camera", 5, 140 );
  scene.endHUD();
}
