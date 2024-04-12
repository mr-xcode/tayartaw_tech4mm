import 'package:get/get.dart';
import 'package:tayartaw_tech4mm/app/data/chapter_model.dart';
import 'package:tayartaw_tech4mm/app/data/helper.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  List<ChapterModel> chapters = [
    ChapterModel(
      title: 'ပရိတ်ရွတ်ဖတ်ရန်အချိန်နှင့်ရွတ်ဖတ်ရခြင်းအကျိုး',
      sub_title: 'ပရိတ်ရွတ်ဖတ်ရန်အချိန်နှင့်ရွတ်ဖတ်ရခြင်းအကျိုး',
      content: Helper.h_one(),
      url: '_',
    ),
    ChapterModel(
      title: "နတ်ပင့်",
      sub_title: 'နတ်များကို ပင့်ဆောင်ခြင်း',
      content: Helper.h_two(),
      url: '_',
    ),
    ChapterModel(
      title: "မင်္ဂလသုတ်",
      sub_title: 'ကျက်သရေမဂ်လာရှိစေရန်',
      content: Helper.h_three(),
      url:
          'https://drive.google.com/uc?export=download&id=1PZH0SamEOEcE1uDGa110hzyElvtMD3lD',
    ),
    ChapterModel(
      title: "ရတနသုတ်",
      sub_title: 'ကပ်ဆိုးများကို ကျော်လွှားနိုင်ရန်',
      content: Helper.h_four(),
      url:
          'https://drive.google.com/uc?export=download&id=1Kqcqy3gbemoH81PsmhNoQwIZpzAskwMs',
    ),
    ChapterModel(
      title: "မေတ္တသုတ်",
      sub_title: 'ချစ်ခင်သူပေါများစေရန်',
      content: Helper.h_five(),
      url:
          'https://drive.google.com/uc?export=download&id=1_DPfnYb6D5MpkO_4rNup_XtCsdDWy6cK',
    ),
    ChapterModel(
      title: "ခန္ဓသုတ်",
      sub_title: 'အဆိပ်ရှိသတ္တဝါဘေးမှ ကင်းဝေးရန်',
      content: Helper.h_six(),
      url:
          'https://drive.google.com/uc?export=download&id=1sX1adzdoNseUzZ-iu_nhbiSRZK5dy43v',
    ),
    ChapterModel(
      title: "မောရသုတ်",
      sub_title: 'အချုပ်အနှောင်မှ ကင်းလွတ်ရန်',
      content: Helper.h_seven(),
      url:
          'https://drive.google.com/uc?export=download&id=1Puzg029yo4tDjWdGjLQgm0Co86QgPS71',
    ),
    ChapterModel(
      title: "ဝဋ္ဋသုတ်",
      sub_title: 'မီးကွင်းစေရန်',
      content: Helper.h_eight(),
      url:
          'https://drive.google.com/uc?export=download&id=1b3OAA2vgJf8vGrg8EgAstQCyhPuWchf_',
    ),
    ChapterModel(
      title: "ဓဇဂ္ဂသုတ်",
      sub_title: 'ကြောက်ရွံ့ခြင်းမှကင်းဝေးစေရန်',
      content: Helper.h_nine(),
      url:
          'https://drive.google.com/uc?export=download&id=1Ee5dktSxtqgjGfBHtCKHKF1eVTjgMWLv',
    ),
    ChapterModel(
      title: "အာဋာနာဋိယသုတ်",
      sub_title: 'မကောင်းသာကံကြမ္မာများမှ လွတ်ကင်းချမ်းသာရန်',
      content: Helper.h_ten(),
      url:
          'https://drive.google.com/uc?export=download&id=1THTlI_i8pNWVqKZrG1uynkb5qnUmlnXa',
    ),
    ChapterModel(
      title: "အင်္ဂုလိမာသုတ်",
      sub_title: 'မီးဖွားရလွယ်ကူစေရန်',
      content: Helper.h_eleven(),
      url:
          'https://drive.google.com/uc?export=download&id=1VkCX-1A_uJ8FrVMqE23UUMk5EHhA4wwX',
    ),
    ChapterModel(
      title: "ဗောဇ္စျင်္ဂသုတ်",
      sub_title:
          'မမာမကျန်းနှင့် အနာရောဂါဝေဒနာများ ဖြစ်သောအခါတွင် ရွတ်ဖတ်ကြသည်။...',
      content: Helper.h_twelve(),
      url:
          'https://drive.google.com/uc?export=download&id=1MlhENKDK2gl8y1Kw6usfz1sWtehD9Ty3',
    ),
    ChapterModel(
      title: "ပုဗ္ဗဏှသုတ်",
      sub_title:
          'အတိတ်ဆိုး၊ နိမိတ်ဆိုးများ၊ ဂြိုလ်ဆိုး၊ ကြမ္မာဆိုးများနှင့ ကြုံတွေ့ရပါက ရွတ်ဖတ်ကြသည်။...',
      content: Helper.h_thirteen(),
      url:
          'https://drive.google.com/uc?export=download&id=1fbZjNmCTXvxnuHLU_A6-nt2Keu3VpE2F',
    ),
    ChapterModel(
      title: "မေတ္တာပို့",
      sub_title: 'မေတ္တာသုတ်လာ မေတ္တာပို့နည်း',
      content: Helper.h_fourteen(),
      url: '_',
    ),
    ChapterModel(
      title: "ဆုတောင်း၊ နတ်ပို့၊ အမျှဝေ",
      sub_title: 'ဆုတောင်း၊ နတ်ပို့၊ အမျှဝေ',
      content: Helper.h_fifteen(),
      url: '_',
    ),
  ].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
