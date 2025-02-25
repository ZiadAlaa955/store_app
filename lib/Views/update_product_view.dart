import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/Services/update_product_service.dart';
import 'package:store_app/Utils/helper.dart';
import 'package:store_app/Widgets/custom_button.dart';
import 'package:store_app/Widgets/custom_text_field.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({super.key, required this.product});

  final ProductModel product;

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? productName, productId, desc, image, price;

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                      desc = data;
                    },
                    hint: 'Description',
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                      onChanged: (data) {
                        image = data;
                      },
                      hint: 'Image'),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'Update',
                    onTap: () {
                      setState(() {
                        isLoading = true;
                      });
                      updateProduct(widget.product);
                      try {
                        showSnakBar(context, 'Product Updated Successfully');
                      } catch (e) {
                        showSnakBar(context, 'Update Failed : ${e.toString()}');
                        log(e.toString());
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

  void updateProduct(ProductModel product) {
    UpdateProductService().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      desc: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
