import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class ProductAddEdit extends StatefulWidget {
  const ProductAddEdit({super.key});

  @override
  State<ProductAddEdit> createState() => _ProductAddEditState();
}

class _ProductAddEditState extends State<ProductAddEdit> {
  static final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool isAPICallProcess = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('NodeJs - crud app'),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: ProgressHUD(
        child: Form(
          key: globalKey,
          child: Text('test'),
        ),
        inAsyncCall: isAPICallProcess,
        opacity: .3,
        key: UniqueKey(),
      ),
    ));
  }

  Widget productForm() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              top: 10,
            ),
            child: FormHelper.inputFieldWidget(
              context,
              "ProductName",
              "Product Name",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Product Name can\'t be empty';
                }

                return null;
              },
              (onSavedVal) {},
              borderColor: Colors.black,
              borderFocusColor: Colors.black,
              textColor: Colors.black,
              hintColor: Colors.black.withOpacity(.7),
              borderRadius: 10,
              prefixIcon: const Icon(
                  Icons.ac_unit), // Add the prefixIcon parameter here
              showPrefixIcon: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              top: 10,
            ),
            child: FormHelper.inputFieldWidget(
              context,
              "ProductPrice",
              "Product Price",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Product Price can\'t be empty';
                }

                return null;
              },
              (onSavedVal) {},
              borderColor: Colors.black,
              borderFocusColor: Colors.black,
              textColor: Colors.black,
              hintColor: Colors.black.withOpacity(.7),
              borderRadius: 10,
              prefixIcon: const Icon(
                  Icons.ac_unit), // Add the prefixIcon parameter here
              showPrefixIcon: false,
            ),
          ),
        ],
      ),
    );
  }
}
