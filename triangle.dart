enum Masseinheiten {
  mm(1),
  cm(10),
  dm(100),
  m(1000),
  inch(25.4),
  feet(304.8);

  final double faktor;

  const Masseinheiten(this.faktor);
}

class Triangle {
 double _width;
 double _height;
 double get widthInMeters {
  return _width / 1000;
}
double get heightInMeters {
  return _height / 1000;
}
double get heightInFeet {
  return _height / 304.8;
}
set widthInMeters(double wert) {
  _width = wert * 1000;
}
set heightInFeet(double wert) {
  _height = wert * 304.8;
}
set heightInMeters(double wert) {
  _height = wert * 1000;
}
Triangle._(this._width, this._height);
  Triangle.mm(double width, double height) : this._(width, height);
  Triangle.cm(double width, double height) : this._(width * 10, height * 10);
  Triangle.dm(double width, double height) : this._(width * 100, height * 100);
  Triangle.m(double width, double height) : this._(width * 1000, height * 1000);
  Triangle.inch(double width, double height)
    : this._(width * 25.4, height * 25.4);

  Triangle.feet(double width, double height)
    : this._(width * 304.8, height * 304.8);

  Triangle(double width, double height, Masseinheiten einheit)
    : this._(width * einheit.faktor, height * einheit.faktor);
}