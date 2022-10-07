import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class CustomRadioGroup extends StatelessWidget {
  const CustomRadioGroup({super.key, this.value, this.groupValue, this.onChanged, this.title});
 final String?value;
 final String ?groupValue;
 final Function(String?)? onChanged;
 final String ?title;

  @override
  Widget build(BuildContext context) {
    return Row(children:[
      
      Radio<String>(
          value: value!,
          groupValue:groupValue ,
          activeColor: primaryColor,
          onChanged:onChanged
        ),
         const SizedBox(
          width: 10,
        ),
        Text(
          title!,
          style: const TextStyle(color: Colors.grey),
        ),
       
        ],);
  }
}
