import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'receipt_page_model.dart';
export 'receipt_page_model.dart';

class ReceiptPageWidget extends StatefulWidget {
  const ReceiptPageWidget({
    super.key,
    required this.receiptRef,
  });

  final DocumentReference? receiptRef;

  @override
  State<ReceiptPageWidget> createState() => _ReceiptPageWidgetState();
}

class _ReceiptPageWidgetState extends State<ReceiptPageWidget> {
  late ReceiptPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceiptPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFB02038),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Receipt Page',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StreamBuilder<List<OrdersRecord>>(
                  stream: queryOrdersRecord(
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitFoldingCube(
                            color: Color(0xFFCA1D28),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<OrdersRecord> imageOrdersRecordList = snapshot.data!;

                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final imageOrdersRecord = imageOrdersRecordList.isNotEmpty
                        ? imageOrdersRecordList.first
                        : null;
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.network(
                                valueOrDefault<String>(
                                  imageOrdersRecord?.receiptImage,
                                  'https://static.vecteezy.com/system/resources/previews/005/863/175/original/picture-icon-image-symbol-image-outline-sign-jpeg-symbol-free-vector.jpg',
                                ),
                                fit: BoxFit.contain,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                              allowRotation: false,
                              tag: valueOrDefault<String>(
                                imageOrdersRecord?.receiptImage,
                                'https://static.vecteezy.com/system/resources/previews/005/863/175/original/picture-icon-image-symbol-image-outline-sign-jpeg-symbol-free-vector.jpg',
                              ),
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: valueOrDefault<String>(
                          imageOrdersRecord?.receiptImage,
                          'https://static.vecteezy.com/system/resources/previews/005/863/175/original/picture-icon-image-symbol-image-outline-sign-jpeg-symbol-free-vector.jpg',
                        ),
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            valueOrDefault<String>(
                              imageOrdersRecord?.receiptImage,
                              'https://static.vecteezy.com/system/resources/previews/005/863/175/original/picture-icon-image-symbol-image-outline-sign-jpeg-symbol-free-vector.jpg',
                            ),
                            width: 307.0,
                            height: 473.0,
                            fit: BoxFit.fitHeight,
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
