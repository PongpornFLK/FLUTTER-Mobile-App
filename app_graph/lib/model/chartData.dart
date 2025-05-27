class ChartData {
  ChartData(this.x, this.y, this.maxLineY, this.minLineY);
  final double x;
  final double y;
  final double maxLineY;
  final double minLineY;
}

class ChartData2 {
  ChartData2({
    required this.x,
    required this.y,
    this.maxLineY = 0,
    this.minLineY = 0,
  });

  final double x;
  final double y;
  double maxLineY;
  double minLineY;
}
