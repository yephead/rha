import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_home_copy_model.dart';
export 'new_home_copy_model.dart';

class NewHomeCopyWidget extends StatefulWidget {
  const NewHomeCopyWidget({
    Key? key,
    this.vendor,
  }) : super(key: key);

  final DocumentReference? vendor;

  @override
  _NewHomeCopyWidgetState createState() => _NewHomeCopyWidgetState();
}

class _NewHomeCopyWidgetState extends State<NewHomeCopyWidget> {
  late NewHomeCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewHomeCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.vendor!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final newHomeCopyUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: NestedScrollView(
            headerSliverBuilder: (context, _) => [
              SliverAppBar(
                expandedHeight: 190,
                pinned: false,
                floating: true,
                snap: true,
                backgroundColor: valueOrDefault<Color>(
                  newHomeCopyUsersRecord.storesettings.headerbackground,
                  Color(0xFF1DA1F2),
                ),
                automaticallyImplyLeading: false,
                actions: [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: DefaultTabController(
                          length: 2,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              TabBar(
                                labelColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                indicatorColor:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                tabs: [
                                  Tab(
                                    text: 'Example 1',
                                  ),
                                  Tab(
                                    text: 'Example 2',
                                  ),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    Container(),
                                    Container(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                toolbarHeight: 150,
                elevation: 3,
              )
            ],
            body: Builder(
              builder: (context) {
                return SafeArea(
                  child: GestureDetector(
                    onTap: () =>
                        FocusScope.of(context).requestFocus(_unfocusNode),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: 589,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            newHomeCopyUsersRecord.storesettings.background,
                            FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
