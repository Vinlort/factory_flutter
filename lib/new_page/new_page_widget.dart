import '../fabricClass.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'new_page_model.dart';
export 'new_page_model.dart';

class NewPageWidget extends StatefulWidget {
  final List<Factory> factoryList;

  const NewPageWidget(this.factoryList, {super.key});

  @override
  _NewPageWidgetState createState() => _NewPageWidgetState();
}

class _NewPageWidgetState extends State<NewPageWidget> {
  late NewPageModel _model;
  Factory newFactory = Factory(name: '',
      numberOfWorkers: 0,
      numberOfWorkshops:0,
      workerSalary: 0,
      masterSalary: 0,
      numberOfMasters: 0);

  final _unfocusNode = FocusNode();

  bool factoryComparing = false;
  bool factorySum = false;
  Factory? selectedFac1;
  Factory? selectedFac2;
  int factoryNumber = 1;
  double invest = 0;
  double? totalRevenue = 0;

  int _currentColorIndex = 0;
  List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.teal,
  ];

  void _changeColor() {
    setState(() {
      _currentColorIndex = (_currentColorIndex + 1) % _colors.length;
    });
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPageModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Завод',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          title: Text(
            'Завод',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: 'Додати завод',
                  icon: Icon(
                    Icons.add_business_rounded,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: 150.0,
                    height: 40.0,
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                const SizedBox(height: 16),
            if(selectedFac1 != null)...[
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 5.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        15.0, 0.0, 15.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(25.0),
                            border: Border.all(
                              color: Colors.blue,
                              width: 4.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Кількість робітників: ${selectedFac1?.numberOfWorkers}',
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                    setState(() {
                                      selectedFac1?.hireWorker();
                                    });
                                },
                                text: 'Найняти',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .success,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                    setState(() {
                                      selectedFac1?.fireWorker();
                                    });
                                },
                                text: 'Звільнити',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .alternate,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                  BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(25.0),
                            border: Border.all(
                              color: Colors.blue,
                              width: 4.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Кількість майстрів: ${selectedFac1?.numberOfMasters}',
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                    setState(() {
                                      selectedFac1?.hireMaster();
                                    });
                                },
                                text: 'Найняти',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .success,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                    setState(() {
                                      selectedFac1?.fireMaster();
                                    });
                                },
                                text: 'Звільнити',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .alternate,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText:
                                  '[Введіть суму для інвестування...]',
                              hintStyle:
                                  FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondary,
                                  width: 5.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        const SizedBox(height: 16),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                              color: _colors[_currentColorIndex],
                              width: 4.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                              'Прибуток: $totalRevenue',
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                setState(() {
                                  _changeColor();
                                  invest = double.parse(_model.textController.text);
                                  totalRevenue = selectedFac1?.calculateTotalProfit(invest);
                                });
                              },
                              text: 'Розрахувати прибуток',
                              options: FFButtonOptions(
                                width: 200.0,
                                height: 40.0,
                                color:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(25.0),
                            border: Border.all(
                              color: Colors.blue,
                              width: 4.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Сума зарплат: ${selectedFac1?.totalSalary}',
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                setState(() {
                                  selectedFac1?.calculateTotalSalary();
                                });
                              },
                              text: 'Сума зарплат',
                              options: FFButtonOptions(
                                width: 130.0,
                                height: 40.0,
                                color:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                setState(() {
                                  factorySum = false;
                                  selectedFac1 = null;
                                  selectedFac2 = null;
                                  factoryNumber = 1;
                                  factoryComparing = false;
                                  totalRevenue = 0;
                                });
                              },
                              text: 'Скинути вибір',
                              options: FFButtonOptions(
                                width: 130.0,
                                height: 40.0,
                                color:
                                    FlutterFlowTheme.of(context).alternate,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 5.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        15.0, 0.0, 15.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  setState(() {
                                    factoryComparing = true;
                                    widget.factoryList.sort((a, b) => b.compareTo(a));
                                  });
                                },
                                text: 'Порівняти',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .success,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  setState(() {
                                    newFactory = (selectedFac1! + selectedFac2!);
                                    factorySum = true;
                                  });
                                },
                                text: 'Об\'єднати',
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 40.0,
                                  color:
                                      FlutterFlowTheme.of(context).info,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      factorySum = false;
                                      selectedFac1 = null;
                                      selectedFac2 = null;
                                      factoryNumber = 1;
                                      factoryComparing = false;
                                      totalRevenue = 0;
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  backgroundColor: Colors.redAccent,
                                  child: Icon(Icons.replay),

                                ),
                              ),
                            ),
                          ],
                        ),
                        if (factoryComparing) ...[
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).alternate,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: widget.factoryList.map((factory) {
                                        return Text(
                                          'Назва: ${factory.name}, Кількість цехів: ${factory.numberOfWorkshops}',
                                        );
                                      }).toList(),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        )],
                        if (factorySum != false)...[
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color:
                                  FlutterFlowTheme.of(context).alternate,
                              width: 3.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Нова назва: ${newFactory.name}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),
                                Text(
                                  'Кількість робочих: ${newFactory.numberOfWorkers}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),
                                Text(
                                  'Кількість майстрів: ${newFactory.numberOfMasters}',
                                  style:
                                  FlutterFlowTheme.of(context)
                                      .bodyMedium,
                                ),
                                Text(
                                  'Кількість цехів: ${newFactory.numberOfWorkshops}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),
                                Text(
                                  'Зарплата робочого: ${newFactory.workerSalary}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),
                                Text(
                                  'Зарплата майстра: ${newFactory.masterSalary}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),

                                Text(
                                  'Прибуток від робочого: ${newFactory.profitPerWorker}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),
                                Text(
                                  'Прибуток від майстра: ${newFactory.profitPerMaster}',
                                  style:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ],
                      ],
                    ),
                  ),
                )
            ],
            if (widget.factoryList.isNotEmpty)
          for (int i = 0; i < widget.factoryList.length; i++) ...[
            const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context)
                        .secondaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color:
                          FlutterFlowTheme.of(context).alternate,
                      width: 3.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      key: Key('factoryList_$i'),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Назва: ${widget.factoryList[i].name}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        Text(
                          'Кількість робочих: ${widget.factoryList[i].numberOfWorkers}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        Text(
                          'Кількість майстрів: ${widget.factoryList[i].numberOfMasters}',
                          style:
                          FlutterFlowTheme.of(context)
                              .bodyMedium,
                        ),
                        Text(
                          'Кількість цехів: ${widget.factoryList[i].numberOfWorkshops}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        Text(
                          'Зарплата робочого: ${widget.factoryList[i].workerSalary}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        Text(
                          'Зарплата майстра: ${widget.factoryList[i].masterSalary}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        Text(
                          'Прибуток від робочого: ${widget.factoryList[i].profitPerWorker}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        Text(
                          'Прибуток від майстра: ${widget.factoryList[i].profitPerMaster}',
                          style:
                              FlutterFlowTheme.of(context)
                                  .bodyMedium,
                        ),
                        if (factoryNumber != 0)...[
                          const SizedBox(height: 16),
                        FloatingActionButton.extended(
                          onPressed: () {
                            if (selectedFac1 ==
                                null) {
                              setState(() {
                                selectedFac1 =
                                widget.factoryList[i];
                                factoryNumber = 2;
                              });
                            } else if (selectedFac2 ==
                                null) {
                              setState(() {
                                selectedFac2 =
                                widget.factoryList[i];
                                factoryNumber = 0;
                              });
                            }
                          },
                          icon: const Icon(
                              Icons.bookmark_add),
                          label: Text(
                              'Обрати як завод №$factoryNumber'),
                        ),
                      ],
                      ],
                    ),
                  ),
                ),
              ],
            ],
            ),
          ),
        ),
      ),
    );
  }
}