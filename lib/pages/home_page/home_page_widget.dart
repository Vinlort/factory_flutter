import '../../new_page/new_page_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
import 'package:factory/fabricClass.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  List<Factory> factoryList = [];

  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  void _launchNewWindow() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewPageWidget(factoryList)),
    );
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textControllerName ??= TextEditingController();
    _model.textControllerWorkers ??= TextEditingController();
    _model.textControllerWorkshops ??= TextEditingController();
    _model.textControllerWorkerSal ??= TextEditingController();
    _model.textControllerMasterSal ??= TextEditingController();
    _model.textControllerMasters ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          title: Text(
            'Додати завод',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 10.0),
            child: Container(
              width: double.infinity,
              height: 490.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondary,
                  width: 5.0,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _model.textControllerName,
                            decoration: InputDecoration(
                              hintText: '[Введіть назву заводу...]',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введіть назву заводу';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _model.textControllerWorkers,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Введіть кількість робочих...]',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введіть кількість робочих';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _model.textControllerMasters,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Введіть кількість майстрів...]',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введіть кількість майстрів';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _model.textControllerWorkshops,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Введіть кількість цехів...]',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введіть кількість цехів';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _model.textControllerWorkerSal,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Введіть заробітну плату робочого...]',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введіть заробітну плату робочого';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _model.textControllerMasterSal,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Введіть заробітну плату майстра...]',
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Введіть заробітну плату майстра';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    FFButtonWidget(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            Factory newFactory = Factory(
                              name: _model.textControllerName.text,
                              numberOfWorkers:
                                  int.parse(_model.textControllerWorkers.text),
                              numberOfMasters:
                                  int.parse(_model.textControllerMasters.text),
                              numberOfWorkshops: int.parse(
                                  _model.textControllerWorkshops.text),
                              workerSalary: double.parse(
                                  _model.textControllerWorkerSal.text),
                              masterSalary: double.parse(
                                  _model.textControllerMasterSal.text),
                            );
                            newFactory.calculateProfitPerMaster();
                            newFactory.calculateProfitPerWorker();
                            factoryList.add(newFactory);
                            _launchNewWindow();
                          });
                        }
                      },
                      text: 'Зберегти',
                      icon: Icon(
                        Icons.save,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 130.0,
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
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
