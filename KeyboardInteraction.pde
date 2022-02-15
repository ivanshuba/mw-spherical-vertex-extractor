

void keyPressed() {
  if ( key == 'c' || key == 'C' ) {
    scene.saveConfig("data/config.json");
  }
  if ( key == 'r' || key == 'R' ) {
    grid.subtractCapsule( capsule );
  }
  if ( key == 's' || key == 'S' ) {
    grid.skinVisible = !grid.skinVisible;
  }
  if ( key == 'v' || key == 'V' ) {
    grid.volumeVisible = !grid.volumeVisible;
  }
  if ( key == 'i' || key == 'I' ) {
    init();
  }
}
