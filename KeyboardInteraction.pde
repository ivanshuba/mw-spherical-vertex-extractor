

void keyPressed() {
  if ( key == 'c' || key == 'C' ) {
    isInContinuousMode = !isInContinuousMode;
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
  if ( key == 't' || key == 'T' ) {
    init();
  }
}
