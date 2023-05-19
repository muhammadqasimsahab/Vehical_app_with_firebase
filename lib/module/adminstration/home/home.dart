// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/module/adminstration/recode_form_selection/controller/pick_imageController.dart';

import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/constant_text.dart';

class HomePage extends StatefulWidget {
   
  String? image;
  String? forer;
  String? forernum;
  String? vogn;
  String? dato;
  String? datotil;
  String? meter;
  String? kontant;
  String? fejltour;
  String? fejltur;
  String? udgifter;
  String? brobiz;
  String? timer;
   HomePage({
    Key? key,
    this.image,
    this.forer,
    this.forernum,
    this.vogn,
    this.dato,
    this.datotil,
    this.meter,
    this.kontant,
    this.fejltour,
    this.fejltur,
    this.brobiz,
    this.udgifter,
    this.timer,
  }) : super(key: key);
 
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final imagepickercontroller=Get.put(PickImageController());

    TableRow? tableRow;
  @override
  Widget build(BuildContext context) {
  tableRow=  TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Forer"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Forer#"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Vogn#"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Dato fra"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Dato til"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Meter"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Kontant"),
        ), 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Fejl tour#"),
        ),Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Fejl tur belob"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Udgifter"),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Brobiz(Kontant)"),
        ),Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Timer vaerkstedet"),
        ),
      ]
    );
  
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.app_backgroundColor,
          appBar: AppBar(
              // centerTitle: true,
              elevation: 0,
              backgroundColor: AppColors.primaryColor,
              title: ConstantText(title: "Add Driver",size: 13.sp,textcolor: AppColors.app_textColor,),
              leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Paths.EnterRecordPage);
                    },
                    child: Text("ADD",style: TextStyle( color: Colors.black,fontSize: 13.sp),)),
                )
              ],
              bottom: TabBar(tabs: [
                Tab(child: Text("Recode",style: TextStyle(color: Colors.black),),),
                Tab(child: Text("Paid",style: TextStyle(color: Colors.black),),),
                Tab(child: Text("UnPaid",style: TextStyle(color: Colors.black),),),
              ]),
            ),
            body: TabBarView(children: [
            Container(
              child: Column(
                
                children: [
                  // SizedBox(height: 1.h,),
                  Container(
                    height:imagepickercontroller.selectedImage.value==""?0: 35.h,
                    width: Get.size.width,
                    child: Obx(()=>imagepickercontroller.selectedImage.value==""?Container():  Image.file(File(imagepickercontroller.selectedImage.value,),fit: BoxFit.cover,)))
            
          // ,  Table(
            
          //   border: TableBorder.all(),
          //   children: <TableRow>[
          //     tableRow!,
          //     tableRow!
          //   ],
          // )
          ,
        //       Expanded(
        //   child: CustomDataTable(
        //     fixedCornerCell: '',
        //     borderColor: Colors.grey.shade300,
        //     rowsCells: _rowsCells,
        //     fixedColCells: _fixedColCells,
        //     fixedRowCells: _fixedRowCells,
        //   ),
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            border:  TableBorder.all(),
            
            // Datatable widget that have the property columns and rows.
            columns: [
              // Set the name of the column
              DataColumn(label: Text('Dato fra',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Dato til',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Forer',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Forer#',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Vogn#',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Meter',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Kontant',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Fjl tour#',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Fejl tur belob',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Udgifter',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('BroBiz (Kontant',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
              DataColumn(label: Text('Timer i vaerkstedet',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14.sp),),),
            ],
            rows: const[
              // Set the values to the columns 
              DataRow(cells: [
                DataCell(Text("1",)),
                DataCell(Text("Alex")),
                DataCell(Text("Anderson")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
                DataCell(Text("18")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
                DataCell(Text("24")),
              ]),
            ]
          ),
        ),
      
    
                ],
              ),
            ),
              Text("data1"),
              Text("data2"),
            ]),
      ),
    );
  }
}



final _rowsCells = [
  ["qaiser", "Farooq", "khkan", "abc", "adsf"],
  [10, 10, 9, 6, 6],
  [5, 4, 5, 7, 5],
  [9, 4, 1, 7, 8],
  [7, 8, 10, 8, 7],
  [10, 10, 9, 6, 6],
  [5, 4, 5, 7, 5],
  [9, 4, 1, 7, 8],
  [7, 8, 10, 8, 7],
  [10, 10, 9, 6, 6],
  [5, 4, 5, 7, 5],
  [9, 4, 1, 7, 8],
];
final _fixedColCells = [
  "Forer",
  "Forer#",
  "Vogn#",
  "Dato fra",
  "Dato til",
  "Meter",
  "Kontant",
  "Fejl tour#",
  "Fejl tur belob",
  "Udgifter",
  "BroBiz(Kontant)",
  "Timer i vaerkstedet"
];
final _fixedRowCells = [
  "",
  // "Informatics",
  // "Geography",
  // "Physics",
  // "Biology"
];

class CustomDataTable<T> extends StatefulWidget {
  final T fixedCornerCell;
  final List<T> fixedColCells;
  final List<T> fixedRowCells;
  final List<List<T>> rowsCells;
  final double fixedColWidth;
  final double cellWidth;
  final double cellHeight;
  final double cellMargin;
  final double cellSpacing;
  final Color borderColor;

  const CustomDataTable({
    super.key,
    required this.fixedCornerCell,
    required this.fixedColCells,
    required this.fixedRowCells,
    required this.rowsCells,
    this.fixedColWidth = 65.0,
    
    this.cellHeight = 70.0,
    this.cellWidth = 130.0,
    this.cellMargin = 30.0,
    this.cellSpacing = 10.0,
    required this.borderColor,
  });

  @override
  State<StatefulWidget> createState() => CustomDataTableState();
}

class CustomDataTableState<T> extends State<CustomDataTable<T>> {
  final _columnController = ScrollController();
  final _rowController = ScrollController();
  final _subTableYController = ScrollController();
  final _subTableXController = ScrollController();

  Widget _buildChild(double width, T data) => SizedBox(
        width: width,
        child: Column(
          children: [
            Text(
              '$data',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900,fontSize: 12.5.sp),
            ),
          ],
        ),
      );

  TableBorder _buildBorder({
    bool top = false,
    bool left = false,
    bool right = false,
    bool bottom = false,
    bool verticalInside = false,
  }) {
    return TableBorder(
      top: top ? BorderSide(color: widget.borderColor) : BorderSide.none,
      left: left ? BorderSide(color: widget.borderColor) : BorderSide.none,
      right: right ? BorderSide(color: widget.borderColor) : BorderSide.none,
      bottom: bottom ? BorderSide(color: widget.borderColor) : BorderSide.none,
      verticalInside: verticalInside
          ? BorderSide(color: widget.borderColor)
          : BorderSide.none,
    );
  }

  Widget _buildFixedCol() => DataTable(
      border: _buildBorder(right: true),
      horizontalMargin: widget.cellMargin,
      columnSpacing: widget.cellSpacing,
      headingRowHeight: widget.cellHeight,
      dataRowHeight: widget.cellHeight,
      columns: [
        DataColumn(
            label:
                _buildChild(widget.fixedColWidth, widget.fixedColCells.first))
      ],
      rows: widget.fixedColCells
          .map((c) =>
              DataRow(cells: [DataCell(_buildChild(widget.fixedColWidth, c))]))
          .toList());

  Widget _buildFixedRow() => DataTable(
        border: _buildBorder(verticalInside: true, bottom: true),
        horizontalMargin: widget.cellMargin,
        columnSpacing: widget.cellSpacing,
        headingRowHeight: widget.cellHeight,
        dataRowHeight: widget.cellHeight,
        columns: widget.fixedRowCells
            .map(
              (c) => DataColumn(
                label: _buildChild(widget.cellWidth, c),
              ),
            )
            .toList(),
        rows: const [],
      );

  Widget _buildSubTable() => Material(
      color: Colors.white,
      child: DataTable(
          border: _buildBorder(verticalInside: true),
          horizontalMargin: widget.cellMargin,
          columnSpacing: widget.cellSpacing,
          headingRowHeight: widget.cellHeight,
          dataRowHeight: widget.cellHeight,
          columns: widget.rowsCells.first
              .map((c) => DataColumn(label: _buildChild(widget.cellWidth, c)))
              .toList(),
          rows: widget.rowsCells
              .map(
                (row) => DataRow(
                    cells: row
                        .map((c) => DataCell(_buildChild(widget.cellWidth, c)))
                        .toList()),
              )
              .toList()));

  Widget _buildCornerCell() => DataTable(
        border: _buildBorder(bottom: true, right: true),
        horizontalMargin: widget.cellMargin,
        columnSpacing: widget.cellSpacing,
        headingRowHeight: widget.cellHeight,
        dataRowHeight: widget.cellHeight,
        columns: [
          DataColumn(
            label: _buildChild(
              widget.fixedColWidth,
              widget.fixedCornerCell,
            ),
          )
        ],
        rows: const [],
      );

  @override
  void initState() {
    super.initState();
    _subTableXController.addListener(() {
      _rowController.jumpTo(_subTableXController.position.pixels);
    });
    _subTableYController.addListener(() {
      _columnController.jumpTo(_subTableYController.position.pixels);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: widget.borderColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _buildCornerCell(),
              Flexible(
                child: SingleChildScrollView(
                  controller: _rowController,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  child: _buildFixedRow(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                SingleChildScrollView(
                  controller: _columnController,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  child: _buildFixedCol(),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    controller: _subTableXController,
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      controller: _subTableYController,
                      scrollDirection: Axis.vertical,
                      child: _buildSubTable(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}