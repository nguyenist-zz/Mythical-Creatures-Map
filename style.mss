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
  //line-pattern-file: url(img/pen.png);
  //line-pattern-clip: true; //default for best rendering performance
  //line-pattern-geometry-transform:rotate(1,10,3);
  comp-op: multiply;
  
  // Countries
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
  // States / Provices / Subregions
  [admin_level>=3] {
    line-width: 0.8;
    line-dasharray: 1,2; //length, gap
    [zoom>=6] { line-width: 1.2; }
    [zoom>=8] { line-width: 2.2; }
    [zoom>=12] { line-width: 3.2; }
  }
}


