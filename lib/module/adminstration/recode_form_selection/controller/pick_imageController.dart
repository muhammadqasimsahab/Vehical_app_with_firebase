
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PickImageController extends GetxController{
var selectedImage="".obs;
var selectedImageSize="".obs;




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

pickImage( ImageSource imageSource) async{
 final pickFile=await ImagePicker().getImage(source: imageSource);
 if(pickFile!=null){
  selectedImage.value=pickFile.path;
  selectedImageSize.value=((File(selectedImage.value)).lengthSync()/1024/1024).toStringAsFixed(2);
 }else{
  print("Error image not pick");
 } 
}
}