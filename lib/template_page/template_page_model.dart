import '/flutter_flow/flutter_flow_util.dart';
import 'template_page_widget.dart' show TemplatePageWidget;
import 'package:flutter/material.dart';

class TemplatePageModel extends FlutterFlowModel<TemplatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
