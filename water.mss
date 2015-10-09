 #bathymetry {
  polygon-fill: rgb(16,12,4);
  polygon-comp-op: minus;
}

#graticules-10 {
  line-gamma: 0.01;
  line-color: #468;
  line-comp-op: color-dodge;
}

#texture {
  polygon-pattern-file: url(static.png);
  comp-op: soft-light;
  opacity: 0.4;
}

#waterway {
      line-color:@water_line;
      line-width:2;
      line-smooth:2; 
      line-simplify-algorithm: radial-distance;
      comp-op:multiply;
  }

@water_line:lighten(@water,8);
#water {
  ::grid {
    polygon-pattern-file:url(img/water9.png);
  }
  polygon-fill: mix(@water,#fff,50);
  polygon-gamma: 0.6;
  comp-op:multiply;
  a/line-color:@water_line;
  a/line-width:4;
  a/line-comp-op:multiply;
  a/line-smooth:2;
  [zoom>=12] {
    a/line-width:0.8;
  }
}

