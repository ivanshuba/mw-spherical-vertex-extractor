
class Grid {
  boolean volumeVisible = true;
  boolean skinVisible = true;
  
  List<List<GridColumn>> rows = new ArrayList<>();
  List<PVector> skin = new ArrayList<>();
  
  Grid( int NX, int NY, int NZ, float stepX, float stepY, float stepZ ) {
    for ( int i = 0; i < NX; i++ ) {
      List<GridColumn> row = new ArrayList<>();
      for ( int j = 0; j < NY; j++ ) {
        row.add( new GridColumn( i * stepX, j * stepY, stepZ, NZ ) );
      }
      rows.add( row );
    }
  }

  void subtractCapsule( Capsule capsule ) {
    skin = new ArrayList<>();
    for ( List<GridColumn> row : rows ) {
      for ( GridColumn gc : row ) {
        gc.subtractCapsule( capsule );
        if ( !gc.vertices.isEmpty() ) {
          skin.add( gc.vertices.get( gc.vertices.size() - 1 ) ); 
        }
      }
    }
  }

  void draw() {
    drawVolume();
    drawSkin();
  }

  void drawSkin() {
    if ( skinVisible ) {
      pushStyle();
      strokeWeight( 4 );
      stroke( 20, 20, 250 );
      beginShape( POINTS );
      for ( PVector vertex : skin ) {
        vertex( vertex.x, vertex.y, vertex.z );
      }
      endShape();
      popStyle();
    }
  }

  void drawVolume() {
    if ( volumeVisible ) {
      pushStyle();
      strokeWeight( 1 );
      stroke( 70, 80, 0 );
      beginShape( POINTS );
      for ( List<GridColumn> row : rows ) {
        for ( GridColumn column : row ) {
          for ( PVector vertex : column.vertices ) {
            vertex( vertex.x, vertex.y, vertex.z );
          }
        }
      }
      endShape();
      popStyle();
    }
  }

  class GridColumn {
    List<PVector> vertices = new ArrayList<>();
    GridColumn( float x, float y, float step, int numVertices ) {
      for ( int i = 0; i < numVertices; i++ ) {
        vertices.add( new PVector( x, y, i * step ) );
      }
    }
    
    void subtractCapsule( Capsule capsule ) {
      List<PVector> toRemove = new ArrayList<>();
      for ( PVector vertex : vertices ) {
        if ( !capsule.isInside( vertex ) ) {
          toRemove.add( vertex );
        }
      }
      vertices.removeAll( toRemove );
    }
  }

}
