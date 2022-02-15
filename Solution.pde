import java.util.*;
import java.util.function.*;
import nub.primitives.*;
import nub.core.*;
import nub.core.constraint.*;
import nub.processing.*;

final int GRID_NX = 80;
final int GRID_NY = 80;
final int GRID_NZ = 20;
final float GRID_DX = 2.5;
final float GRID_DY = 2.5;
final float GRID_DZ = 2.5;
final float DEFAULT_RADIUS = 30;
final PVector DEFAULT_START_POINT = new PVector( 0, 0, 50 );
final PVector DEFAULT_END_POINT = new PVector( 150, 150, 50 );


Capsule capsule;
Scene scene;
Grid grid;

void setup() {
  size( 800, 800, P3D );
  setupScene();
  init();
}

void init() {
  grid = new Grid( GRID_NX, GRID_NY, GRID_NZ, GRID_DX, GRID_DY, GRID_DZ );
  capsule = new Capsule( DEFAULT_START_POINT, DEFAULT_END_POINT, DEFAULT_RADIUS );
  capsule.update();
}

void draw() {
  background( 220 );
  scene.render();
  grid.draw();
  drawLine();
}

void drawLine() {
  pushStyle();
  strokeWeight( 8 );
  stroke( 250, 0, 20, 150 );
  beginShape( LINES );
  vertex( startSphere.position().x(), startSphere.position().y(), startSphere.position().z() );
  vertex( endSphere.position().x(), endSphere.position().y(), endSphere.position().z() );
  endShape();
  popStyle();
}
