import 'package:app_supabase/model_item/transaction.dart';
import 'package:flutter/material.dart';

class TransactionProvider with ChangeNotifier{ // เป็นการแจ้งเตือน เมื่อมีการเปลี่ยนแปลงข้อมูล
    // สร้าง List ในการเก็บก้อน Obj
    List<Transaction> transactions = [
        Transaction(id: '1', price: 100.0, date: DateTime.now()),
        Transaction(id: '2', price: 200.0, date: DateTime.now()),
        Transaction(id: '3', price: 300.0, date: DateTime.now()),
        Transaction(id: '4', price: 400.0, date: DateTime.now()),
        Transaction(id: '5', price: 500.0, date: DateTime.now()),
    ];

    // ฟังก์ชันในการดึงข้อมูล
    List<Transaction> getTransctions() {
        return transactions; 
    }

    // ฟังก์ชันในเพิ่มข้อมูล
    addTransaction(Transaction data) {
        transactions.add(data); // เพิ่มข้อมูลลงใน List
        // notifyListeners(); // แจ้งเตือนว่า มีการเปลี่ยนแปลงข้อมูล        
    }
}