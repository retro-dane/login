import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  const InputFields({Key? key, required this.hint, this.endicon}) : super(key: key);
  final String hint;
  final Widget? endicon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: TextFormField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.withOpacity(0.2),
              hintText:hint ,
              hintStyle: const TextStyle(
                  color: Colors.grey
              ),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width:2,color:Colors.grey.withOpacity(0.2),),
                  borderRadius: BorderRadius.circular(10)
              ),
            focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width:2,color:Colors.grey.withOpacity(0.2),),
                  borderRadius: BorderRadius.circular(10)
              ),
              suffixIcon: endicon,
          ),
        ),
      );
  }
}
