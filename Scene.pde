void setupScene() {
  scene = new Scene( this );
  scene.loadConfig("config");
  scene.setFOV(30);
  scene.setBounds(500);
  scene.enableHint(Scene.GRID | Scene.AXES );
  scene.configHint(Scene.GRID, Scene.GridType.LINES, color(0, 255, 0));
}
