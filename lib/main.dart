import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'วาทะสลิ่มสุดเจ๋ง',
      theme: ThemeData(
        colorSchemeSeed: Colors.yellow,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.yellow,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> watalist = [
    'รู้มั้ยว่าพ่อทำอะไรบ้าง',
    'พวกชังชาติ',
    'พวกทำลายชาติ',
    'ส้มเน่า',
    'จั๊กแร้พิธาหอมไหม',
    'รักชาติ ศาสน์ กษัตริย์',
    'ไม่สำนึกในบุญคุณ',
    'หนักแผ่นดิน',
    'เนรคุณแผ่นดิน',
    'เราคือผู้อยู่อาศัย ไม่ใช่เจ้าของบ้าน',
    'ล้มเจ้า',
    'เผาไทย',
    'คณะร่าน',
    'เห่อหมอยคลั่งชาติฝรั่ง',
    'มีทุกอย่างที่ดีเพราะใคร ฉันจะไม่ลืม',
    'พวกเผาบ้านเผาเมือง',
    'จำนำข้าว',
    'เป็นคนปลอมตัวมาสร้างสถานการณ์ค่ะ คนเสื้อเหลืองไม่มีใครทำแบบนั้น',
    'ศูนย์รวมจิตใจของชาติ',
    'ตอบแทนบุญคุณแผ่นดิน',
    'สวะส้ม',
    'ผมก็ว่าเนชั่นเป็นกลางสุดแล้วในการเสนอข่าว ไม่ได้อวยใดๆพูดตามเนื้อผ้าครับ',
    'สร้างแต่ปัญหาให้ลุงตู่ แผนตื้นๆยังไปติดกับดัก',
    'ไม่เอาต่างชาติเป็นนาย',
    'เหยียบย่ำหัวใจคนไทย',
    'มีเวลาว่างก็เอาไปเรียนนะลูก',
    '่ขี้ไอ้ทอน',
    'ลุงมาจากการเลือกตั้ง',
    'เชียร์ลุง',
    'ที่มีแผ่นดินอยู่ทุกวันนี้เพราะใคร',
    'ม๊อบสวะ',
    'ทำประโยชน์อะไรให้ชาติบ้านเมืองบ้าง',
    'ลุงตู่เป็นคนดี',
    'ลุงตู่อยู่บ้านเมืองสงบ',
    'บ้านเมืองสงบ จบที่ลุงตู่',
    'รัฐประหารโดยสันติวิธี',
    'เก่งมากก็ไปเป็นนายกฯเองสิ',
    'แค่รถฉีดน้ำจะไปกลัวทำไม เขาทำตามหลักสากล',
    'ท่านทรงงานหนัก',
    'โดนแค่ฉีดน้ำทำเป็นบ่น ตอนนั้น กปปส โดนแก๊สน้ำตานะ',
    'หัวก้าวหน้า ปัญญาล้าหลัง',
    'อยากได้เสรีภาพมากเกินไป',
    'วันๆ เอาแต่เรียกร้องเสรีภาพ ถึงไม่รู้ไงว่าท่านทำอะไรบ้าง',
    'หัดศึกษาประวัติศาสตร์บ้างนะ',
    'ถอยกันคนละก้าว',
    'เจ้าจะทำอะไรก็เรื่องของเค้า',
    'จ่ายภาษีหรือเปล่า',
    'เด็กๆเอาแต่เล่นโซเชียล fake news ทั้งนั้น',
    'รัฐบาลมีผลงานเยอะแยะ แค่ข่าวไม่ออกเท่านั้นแหละ',
    'คิดต่างได้ แต่ต้องมีสถาบัน',
    'รักประยุทธ์ ก็ยังดีกว่าโดนล้างสมอง',
    'อยู่อย่างจงรัก ตายอย่างภักดี ปกป้องสถาบัน',
    'ไปฟังคนไม่จบ ม.6 มันพูดทำไม',
    'ขยันอ่านหนังสือสอบให้เหมือนอ่านเบิกเนตรหรือยัง',
    'คุณภาพชีวิตจะดีขึ้น ถ้าคนเป็นคนดี ถ้าตัวเราดี',
    'แล้วที่หลานทำไม่เรียกว่าคุกคามสถาบันหรือ',
    'เป็น IO ดีกว่าเป็นควายให้ไอ้แม้วไอ้ทอนจูงจมูก',
    'เยาวชนปลดแอ๊ก',
    'ประชาธิปไตยแดกได้เหรอ',
    'ควรอยู่อย่างพอเพียงนะ',
    'ไม่เอาต่างชาติเป็นนาย',
    'เหยียบย่ำหัวใจคนไทย',
    'ชู 3 นิ้ว กูเอามึงตายเลย',
    'ไม่ภูมิใจเหรอ ที่ได้ตอบแทนคุณแผ่นดิน',
    'ให้ใครมาด่าพ่อแม่คุณไม่ผิดเอาไหม',
    'แม้เหลือคนเดียวทั้งโรง เราก็จะยืน',
    'ห้ามวิจารณ์ 112',
    'อีเด็กพวกนี้มันจะไปรู้อะไร',
    'พวกสามกีบ',
    'ไม่รักลุงตู่ = ไม่รักชาติ',
    'เดี๋ยวกูจัด 112 ให้',
    'เกิดมามี 32 ทำไมโตมามี 3 กีบ',
    'เขาอุตส่าห์ให้อยู่ในแผ่นดินของเขา',
    'เนี่ย ถ้าไม่มีคสช.นะพวกนักการเมืองคงโกงกินประเทศไปมากกว่านี้ เห็นมั้ย ลุงตู่เข้ามาทำให้ประเทศเราไม่มีการคอร์รัปชั่น',
    'ถ้าพ่อมองลงมาคงร้องไห้',
    'อะไรๆก็ว่าเเต่คนรุ่นหลังคงจะเจริญนะอีเด็กพวกนี้',
    'ไม่ใช่สลิ่มนะ แต่...',
    'ไม่ใช่ติ่งลุงตู่ แต่...',
    'เราคนไทยเหมือนกัน',
    'อีช่อ',
    'อีฉ้อ',
    'ชังชาติ',
    'ขายชาติ',
    'ไม่สำนึกในบุญคุณ',
    'หนักแผ่นดิน',
    'เนรคุณแผ่นดินอีช่อ',
    'อีฉ้อ',
    'ชังชาติ',
    'ขายชาติ',
    'ไม่สำนึกในบุญคุณ',
    'หนักแผ่นดิน',
    'เนรคุณแผ่นดิน',
    'ข่าวเนชั่นนำเสนอเป็นกลางสุดแล้ว',
    'ใครไม่ยืนในโรงหนังกูเอาตาย',
    'ขามึงขาดหรอยืนในโรงหนังไม่ได้',
    'อีสามกีีบปัญญาอ่อน',
  ];
  String wataNow = '';
  bool blurState = true;

  void randWata() {
    setState(() {
      Random random = Random();
      blurState = true;
      Future.delayed(
        50.ms,
        () => wataNow = watalist[random.nextInt(watalist.length)],
      );
    });
  }

  @override
  void initState() {
    super.initState();
    Random random = Random();
    wataNow = watalist[random.nextInt(watalist.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          Card(
            elevation: 1,
            margin: const EdgeInsets.only(right: 20),
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 7.5,
              ),
              child: Text(
                'Cr.narze',
                style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ),
          ),
        ],
        title: const Text(
          "วาทะสลิ่มสุดเจ๋ง",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/thai-flag.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'วาทะสลิ่ม: ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer
                    ),
                  ),
                  Text(
                    '"$wataNow"',
                    style: const TextStyle(
                      fontSize: 22.5,
                    ),
                  )
                      .animate(
                        target: blurState ? 1 : 0,
                        onComplete: (controller) {
                          if (blurState) {
                            setState(() => blurState = false);
                          }
                        },
                      )
                      .blur(
                          begin: const Offset(0, 0),
                          end: const Offset(5, 5),
                          curve: Curves.easeIn,
                          duration: blurState ? 100.ms : 500.ms)
                      .fade(
                          begin: 1,
                          end: .5,
                          curve: Curves.easeIn,
                          duration: blurState ? 100.ms : 500.ms),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: randWata,
        tooltip: 'Generate',
        label: const Text(
          "Generate วาทะสลิ่ม",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
