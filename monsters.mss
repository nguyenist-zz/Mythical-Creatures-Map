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