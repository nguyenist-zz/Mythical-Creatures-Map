// Land ////////////////////////////////////////////

#landuse { 
  [class='cemetery'], [class='industrial'], [class='park'], 
    [class='sand'], [class='pitch'], [class='wood'], { 
       line-color: #362c12;
       line-width:0;
       line-smooth:0; 
       line-simplify-algorithm: radial-distance;}
    [zoom>=4]{
      polygon-pattern-file:url(img/forest3.png);
      polygon-pattern-opacity: 0.7; 
      polygon-pattern-smooth: 0;
      polygon-pattern-comp-op: multiply;
      }
  }

// Road ////////////////////////////////////////////

#road {
  [class='motorway'], [class='motorway_link']{ 
    line-color: #302512;
    line-width:0.1;
    [zoom>=3][zoom<=7]{    
      line-width: 0.25; 
      line-color: #b0a45e; }
    [zoom>=8][zoom<=14]{
      line-width:1;
      line-dasharray: 2,2;
      line-join: round;
      line-color: #b0a45e;}
    [zoom>=15] { //Road line image works well at > 9 zoom
      line-width:5;
      line-dasharray: 2,2;
      line-join: round;
      line-color: #b0a45e;}
    }
    [class='main'], [class='street']{
      [zoom>=8]{
      line-color: #302512;
      line-width:0.2;
      line-dasharray: 4,4;
      line-join: round; }
      }
    [class='major_rail'], [class='minor_rail']{
      [zoom>=8]{
      line-width:2;
      line-dasharray: 2,2;
      line-join: round;
      line-color: #5f5624;}
      }
  [class='path'], [class='driveway']{
    [zoom>=14][zoom<=16]{
      line-width:1.5;
      line-dasharray: 2,2;
      line-join: round;
      line-color: #2d2506; }
    [zoom>=17]{
      line-comp-op: multiply;
      line-pattern-file: url(img/line_highway.png);
      line-join: round; }
  }
 }

#tunnel{
  line-color: #362207;
  line-width: 2;
}

// Buildings //

#building::fill[zoom>=13][zoom<=22] {
      polygon-pattern-file:url(img/buildings3.png);
      polygon-pattern-opacity: 0.5; 
      polygon-pattern-smooth: 0;
      polygon-pattern-comp-op: multiply;
}

#building::shadow[zoom>=13][zoom<=22] {
  line-color:#362009;
  line-width:0.5;
  line-join:round;
  line-cap:round;
  line-clip:false;
  line-geometry-transform:translate(2,1);
}

  

  

