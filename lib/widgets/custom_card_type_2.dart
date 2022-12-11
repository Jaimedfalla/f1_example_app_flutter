import 'package:f1_example_app_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String url;
  final String label;

  const CustomCardType2({
    super.key,
    required this.url,
    required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(url),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity, // Se le indica al widget que tome todo el ancho posible
            height: 230,
            fit: BoxFit.cover, //hace que la imagen se adapte a todo el tamaño posible
            fadeInDuration: const Duration(milliseconds: 300), 
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(
              right: 20,
              top: 10,
              bottom: 10
            ),
            child: Text(label),
          )
        ],
      ),
    );
  }
}