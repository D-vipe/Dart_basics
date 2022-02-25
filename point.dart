import 'dart:math';

class Point {
  final num x;
  final num y;
  final num z;

  Point(this.x, this.y, this.z);

  Point.zero()
      : x = 0,
        y = 0,
        z = 0;
  Point.unitVector()
      : x = 1,
        y = 1,
        z = 1;

  double distanceTo(Point anotherPoint) {
    return this._privateDistanceTo(this, anotherPoint);
  }

  double calcTriangleSquare(Point a, Point b, Point c) {
    num ab = this._privateDistanceTo(a, b);
    num bc = this._privateDistanceTo(b, c);
    num ac = this._privateDistanceTo(a, c);
    num halfP = (ab + bc + ac) / 2;
    return (sqrt(((halfP - ab) * (halfP - ac) * (halfP - bc) * halfP)));
  }

  double _privateDistanceTo(Point a, Point b) {
    return sqrt(
        pow((b.x - a.x), 2) + pow((b.y - a.y), 2) + pow((b.z - a.z), 2));
  }
}
