// Languages //
@name: '[name_en]';


// Main Colors //
@land: #fff8f0;
@water: #f4f1be;
@park: #798859;

Map {
  background-color: #ebe8c3;
  background-image:url(img/ricepaper.png);
  background-image-opacity: 0.2;
}

// Political boundaries //

#admin[maritime=0][zoom>=3] {
  line-join: miter;
  line-color: #3f2308;
  comp-op: multiply;
  
// Countries //
  [admin_level>=2] {
  	line-cap: butt;
    line-width: 1;
    line-dasharray: 3,3; //length, gap
    [zoom>=6] { line-width: 3; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] {
      line-dasharray: 4,4;
  	  line-cap:butt;
    }
  }
// States / Provices / Subregions //
  [admin_level>=3] {
    line-width: 0.8;
    line-dasharray: 1,2; //length, gap
    [zoom>=6] { line-width: 1.2; }
    [zoom>=8] { line-width: 2.2; }
    [zoom>=12] { line-width: 3.2; }
  }
}

// Water //
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

// Land //

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

// Road //

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

// Monsters //
#marine_label::illo {
  comp-op: overlay;
  marker-allow-overlap:false;
  marker-ignore-placement:true;
  marker-width:0;
  [name_en='North Atlantic Ocean'] {
    marker-file:url(img/monster_octopus2.png);
    marker-transform:translate(0,-100);
  }
  [name_en='Barents Sea'] {
    marker-file:url(img/monster_lochness.png);
    marker-transform:translate(0,-60);
  }
  [name_en='Tasman Sea']{
    marker-file:url(img/monster_manaia.png);
    marker-transform:translate(0,100);
  }
  [name_en='North Pacific Ocean']{
    marker-file:url(img/monster_godzilla3.png);
    marker-transform:translate(20,110);
    marker-transform:skewX(2);
    marker-allow-overlap: true;
  }
  [name_en='Indian Ocean']{
    marker-file:url(img/monster_dolphin.png);
    marker-transform:translate(-20,0);
  }
  }