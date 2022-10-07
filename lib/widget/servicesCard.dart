import 'package:flutter/material.dart';
import 'package:vehicle_registration_system/utils/AppColors.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({super.key, this.services});
  final Map<String, dynamic>?services;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover: (value) {},
      child: SizedBox(
        width: size.width*.3,
        height: 300,
        child: Column(         
          children: [
          Image.network(services!['image'], width: size.width*.3, height: 150, fit: BoxFit.cover,),
          const SizedBox(height: 10,),
          Text(services!['title'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: whiteColors),),
          const SizedBox(height: 10,),
          Text(services!['description'], 
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 15,color: Colors.white),),

        ]),
      ),
    );
  }
}