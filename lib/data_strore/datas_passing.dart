//model step 2
import 'package:dodo_demo_app/Constructors/chats_constructor.dart';

storeData() {
  List<ChatConstructor> datas = [];
  ChatConstructor data =
      ChatConstructor(imageUrl: "", subtext: "", time: "", name: "");
      //1
  data.imageUrl =
      "https://cdn.mwallpapers.com/photos/celebrities/iswarya-menon/md/iswarya-menonhd-wallpapers-desktop-background-android-iphone-1080p-4k-ndmsm.jpg";
  data.subtext = "Good Morning";
  data.time = "10.45 am";
  data.name = "Aishu";
  datas.add(data );
  //2
  data.imageUrl =
      "https://cdn.mwallpapers.com/photos/celebrities/iswarya-menon/md/iswarya-menonhd-wallpapers-desktop-background-android-iphone-1080p-4k-ndmsm.jpg";
  data.subtext = "Good Morning";
  data.time = "10.45 am";
  data.name = "Aishu";
  datas.add(data);
  //3
    data.imageUrl =
      "https://cdn.mwallpapers.com/photos/celebrities/iswarya-menon/md/iswarya-menonhd-wallpapers-desktop-background-android-iphone-1080p-4k-ndmsm.jpg";
  data.subtext = "Good Morning";
  data.time = "10.45 am";
  data.name = "Aishu";
  datas.add(data);

  return datas;
  
  
}