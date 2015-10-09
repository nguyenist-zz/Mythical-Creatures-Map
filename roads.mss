

#road{
[class='motorway'] { 
    line-color: #302512;
    line-width:0.1;
    [zoom>=4][zoom<=7]{ 
      line-width: 0.1; 
      line-color: #b0a45e; }
    [zoom>=8][zoom<=9]{
      line-width:2;
      line-dasharray: 4,4;
      line-join: round;
      line-color: #b0a45e;}
    [zoom>9] { //Road line image works well at > 9 zoom
      line-width:0.1;
      line-pattern-file: url(img/line_highway.png);
      line-pattern-clip: true; }
    }
  }