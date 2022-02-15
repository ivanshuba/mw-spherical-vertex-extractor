
void mouseMoved() {
  if ( !scene.isTagValid( "key" ) )
    scene.mouseTag();
}

void mouseDragged() {
  if ( mouseButton == LEFT) {
    if ( !scene.mouseSpinTag( "key" ) )
      scene.mouseSpin();
  } else if ( mouseButton == RIGHT ) {
    if ( !scene.mouseTranslateTag( "key" ) ) {
      scene.mouseTranslate();
      capsule.update();
    }
  } else
    scene.scale( mouseX - pmouseX);
}

void mouseWheel( MouseEvent event ) {
  if ( scene.is3D() )
    scene.moveForward( event.getCount() * 20 );
  else
    scene.scaleEye( event.getCount() * 20 );
}
