import '/flutter_flow/flutter_flow_util.dart';
import 'view_products_widget.dart' show ViewProductsWidget;
import 'package:flutter/material.dart';

class ViewProductsModel extends FlutterFlowModel<ViewProductsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
