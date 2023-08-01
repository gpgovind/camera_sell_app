import 'package:camera_sell_app/utils/background_color.dart';
import 'package:camera_sell_app/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/profile_textfiled.dart';

class ChangeAddress extends StatefulWidget {
  const ChangeAddress({super.key});

  @override
  State<ChangeAddress> createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
  final nameController = TextEditingController();
  final countryController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    addressController.dispose();
    cityController.dispose();
    phoneNumberController.dispose();
    countryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundColor(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    height: 5.sh,
                    child: Column(
                                children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(horizontal: 130, vertical: 40),
                      child: const Text("Address",
                          style: TextStyle(
                              fontSize: 25.519121170043945,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Column(
                      children: [
                        ProfileTextFiled(
                          text: 'Name',
                          height: 75.h,
                          hintText: 'joy',
                          keyboardType: TextInputType.name,
                          controller: nameController,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProfileTextFiled(
                              text: 'city',
                              height: 75.h,
                              width: 170,
                              hintText: ' u city ',
                              keyboardType: TextInputType.name,
                              controller: cityController,
                            ),
                            ProfileTextFiled(
                              text: 'country',
                              height: 75.h,
                              width: 170,
                              hintText: 'india',
                              keyboardType: TextInputType.text,
                              controller:cityController,
                            ),
                          ],
                        ),
                        ProfileTextFiled(
                          text: 'Phone number',
                          height: 75.h,
                          hintText: '9924264245',
                          keyboardType: TextInputType.number,
                          controller: phoneNumberController,
                        ),
                        ProfileTextFiled(
                          text: 'Address',
                          height: 75.h,
                          hintText: 'Chhatak, Sunamgonj 12/8AB',
                          keyboardType: TextInputType.streetAddress,
                          controller: phoneNumberController,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Card(
                          elevation: 5,
                          color: Colors.transparent,
                          child: CustomButton(
                              buttonName: 'Save Address',
                              hight: 77,
                              radius: 22,
                              width: 313),
                        )
                      ],
                    )
                                ],
                              ),
                  ),
                ))));
  }
}

// const EdgeInsets.symmetric(vertical: 40,horizontal: 120),