

void keyPressed() {
  if ( key == 'c' ) {
    scene.saveConfig("config");
  }
  if ( key == 't' ) {
    grid.subtractCapsule( capsule );
  }
  if ( key == 's' ) {
    grid.skinVisible = !grid.skinVisible;
  }
  if ( key == 'v' ) {
    grid.volumeVisible = !grid.volumeVisible;
  }
  if ( key == 'i' ) {
    init();
  }
  if ( key == 'n' ) {
    
    init();
  }
}
