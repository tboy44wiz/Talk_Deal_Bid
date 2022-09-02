import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataTableWidget {
  static Theme dataTable(List<Map<String, dynamic>> allBids) {
    return Theme(
      data: Theme.of(Get.context!).copyWith(dividerColor: Colors.transparent),
      child: DataTable(
        // columnSpacing: 20.0,
        dataRowHeight: 17.0,
        dataTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
        ),
        dividerThickness: 0.0,
        headingRowHeight: 0.0,
        horizontalMargin: 0.0,

        columns: [
          DataColumn(label: Text("")),
          DataColumn(label: Text("")),
          DataColumn(label: Text("")),
        ],
        rows: allBids.map((eachBid) => DataRow(
            cells: [
              DataCell(Text(eachBid["price"])),
              DataCell(Text(eachBid["bidder"])),
              DataCell(Text(eachBid["time"]))
            ]
        )).toList(),
      ),
    );
  }
}