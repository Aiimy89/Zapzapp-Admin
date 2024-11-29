import '/flutter_flow/flutter_flow_util.dart';
import 'add_template_page_widget.dart' show AddTemplatePageWidget;
import 'package:flutter/material.dart';

class AddTemplatePageModel extends FlutterFlowModel<AddTemplatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for product widget.
  FocusNode? productFocusNode;
  TextEditingController? productTextController;
  String? Function(BuildContext, String?)? productTextControllerValidator;
  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    productFocusNode?.dispose();
    productTextController?.dispose();

    codeFocusNode?.dispose();
    codeTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
