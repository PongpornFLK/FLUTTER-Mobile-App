import 'package:app_supabase/model_item/billed.dart';
import 'package:flutter/widgets.dart';

class BilledProvider with ChangeNotifier {
  List<Billed> bills = [
    Billed(
      name: 'Internet',
      price: 100.0,
      total_price: 100.0,
      date: DateTime.now(),
    ),
    Billed(
      name: 'Electricity',
      price: 200.0,
      total_price: 200.0,
      date: DateTime.now(),
    ),
    Billed(
      name: 'Water',
      price: 300.0,
      total_price: 300.0,
      date: DateTime.now(),
    ),
  ];

  List<Billed> getBilled() {
    return bills;
  }

  addBilled(Billed data) {
    bills.add(data); // เพิ่มข้อมูลลงใน List
    notifyListeners(); // แจ้งเตือนว่า มีการเปลี่ยนแปลงข้อมูล        
  }
}