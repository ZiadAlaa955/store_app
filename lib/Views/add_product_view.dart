import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/Services/add_product_service.dart';
import 'package:store_app/Utils/app_utils.dart';
import 'package:store_app/Widgets/custom_button.dart';
import 'package:store_app/Widgets/custom_text_field.dart';

class AddProductView extends StatefulWidget {
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  dynamic price, productId;

  String? productName, description, image, category;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(title: const Text('Add Product')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(
                    onChanged: (data) {
                      productId = data;
                    },
                    hint: 'ID',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    onChanged: (data) {
                      productName = data;
                    },
                    hint: 'Product name',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    onChanged: (data) {
                      price = data;
                    },
                    hint: 'Price',
                    keyBoardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    onChanged: (data) {
                      description = data;
                    },
                    hint: 'Description',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    onChanged: (data) {
                      image = data;
                    },
                    hint: 'Image',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    onChanged: (data) {
                      category = data;
                    },
                    hint: 'Category',
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'Update',
                    onTap: () {
                      setState(() {
                        isLoading = true;
                      });
                      addProduct();
                      try {
                        showSnakBar(context, 'Product Added Successfully');
                      } catch (e) {
                        showSnakBar(context, 'Failed : ${e.toString()}');
                      }
                      setState(() {
                        isLoading = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void addProduct() {
    AddProductService().addProduct(
      id: int.parse(productId),
      title: productName,
      price: price,
      desc: description,
      image: image,
      category: category,
    );
  }
}
