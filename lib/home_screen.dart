import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stripe_payments/payment_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  PaymentController paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            paymentController.makePayment();
          },
          child: Text("Payment"),
        ),
      ),
    );
  }
}
