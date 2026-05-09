import 'package:flutter/material.dart';

void main() {
  runApp(const HaryanviStatusApp());
}

class HaryanviStatusApp extends StatelessWidget {
  const HaryanviStatusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Haryanvi Status & Stories',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F0F10),
        primaryColor: Colors.amber,
      ),
      home: const StatusHomeScreen(),
    );
  }
}

class StatusHomeScreen extends StatefulWidget {
  const StatusHomeScreen({super.key});

  @override
  State<StatusHomeScreen> createState() => _StatusHomeScreenState();
}

class _StatusHomeScreenState extends State<StatusHomeScreen> {
  // 1. हरियाणवी शायरी और स्टेटस की लिस्ट (10 पोस्ट)
  final List<String> haryanviShayari = [
    "लाडले! ब्रांडेड कपड़े पहरण तै कोई ब्रांड कोनी बनता, ब्रांड बणन खातर जिगरा चाहिये! 👑🔥",
    "हम कदर करया करां उनकी, जो दिल तै इज्जत दिया करैं। फालतू बोलण की आदत कोनी लाडले! 💯",
    "बदमाश तो वक्त आने पै बणेंगे लाडले, फिलहाल शरीफ बण के दुनिया देखण लाग रहे हां। 😎",
    "नारनौल आले शेर हैं भाई, दहाड़ना भी जाणें हैं अर यारी निभाना भी। 💪",
    "रुतबा तो बंदे का होना चाहिये लाडले, डर तो आवारा कुत्ते भी फैला दिया करैं! 👑",
    "बैठक अपणी, ठाठ अपणे, अर कती कसूते यार अपणे। किसे के आगे झुकण की आदत कोनी! 🦅",
    "जलने वाले जलते रहो, पीठ पाछे भौंकने वाले भौंकते रहो, थारा भाई थमने कदे हाथ कोनी आवे! 🤫",
    "लाडले! हवा में उड़ना छोड़ दे, जिस दिन धरती पै आए ना, संभालण आला कोनी पावे। ⚠️",
    "अपणी औकात का पता तब चालैगा लाडले, जब कोई थारे सामने अपणी छाती तान के खड़्या होगा। 💪",
    "इज्जत दोगे तो इज्जत पाओगे, अकड़ दिखाओगे तो सीधे घर जाओगे! 👑",
  ];

  // 2. पुराने और कसूते डायलॉग्स (10 पोस्ट)
  final List<String> dialogues = [
    "डायलॉग: 'शेर का पंजा और बदमाश की बोली... दोनों ही सीधे कलेजे पै वार करया करैं!' 🦁🔥",
    "डायलॉग: 'बदमाशी की राह पै पैर धरने तै पहले, घरक्यां तै राम-राम करके लीक काटनी पड़े है।' 💯",
    "डायलॉग: 'लाडले, हम हथियार शौक खातर नहीं, बल्कि अपणी सुरक्षा अर इज्जत की खातर राख्या करां।' 🔫",
    "डायलॉग: 'हवाबाज़ी उन पै जचै है जिनके दम पै कुछ हो, बैगां के बल पै कूदने वाले जल्दी गिरया करैं।' 🌪️",
    "डायलॉग: 'तेरी बंदूक तै ज़्यादा ताकत तो म्हारे एक इशारे में है, आजमा के देख लिये कदे भी।' 👑",
    "डायलॉग: 'शेर जब दो कदम पीछे हटावै है ना, तो वो डरता कोनी, वो लंबी छलांग की तैयारी करै है।' 🦁",
    "डायलॉग: 'राज तो म्हारा हर जगह है, चाहै वो भाईचारा हो या फिर वैरी का इलाका!' 💪",
    "डायलॉग: 'हम इतिहास पढ़दे कोनी लाडले, हम इतिहास लिख्या करां!' ✍️🔥",
    "डायलॉग: 'दुश्मनी करनी है तो बराबरी के बंदे तै कर, छोटे-मोट्यां पै हाथ उठाणा म्हारी फितरत कोनी।' 🤫",
    "डायलॉग: 'जितनी थारी सोच है ना लाडले, उतनी तो म्हारे यारियां की पहुँच है।' 👑",
  ];

  // 3. लम्बी और कसूती कहानियाँ (5 लम्बी पोस्ट - सुनो कहानी स्पेशल)
  final List<String> stories = [
    "कहानी 1: हवेली का रहस्य 🏚️\n\nनारनौल के पास एक पुराना गांव था, जहाँ एक बहुत बड़ी और सुनसान हवेली थी। लोग कहते थे कि उस हवेली में रात के 12 बजे के बाद लालटेन की रोशनी दिखाई देती है। एक बार रामू नाम के एक निडर लड़के ने रात को हवेली के अंदर जाने का फैसला किया। जैसे ही वह मुख्य दरवाजे से अंदर गया, दरवाजा अपने आप बंद हो गया! तभी उसे सीढ़ियों से किसी की भारी कदमों की आवाज़ सुनाई दी। रामू ने ऊपर देखा तो वहाँ कोई नहीं था, लेकिन ज़मीन पर पैरों के ताज़ा निशान बनते जा रहे थे जो सीधे उसकी तरफ आ रहे थे! रामू घबराकर खिड़की तोड़कर बाहर भागा। आज भी वह हवेली वैसी ही खड़ी है, और कोई दोबारा वहाँ जाने की हिम्मत नहीं करता।",
    
    "कहानी 2: जादुई कुआँ 🔮\n\nपुराने समय की बात है, खेतों के बीच में एक बहुत पुराना कुआँ था। कहते थे कि जो कोई भी उस कुएँ में आधी रात को अपनी परछाई देखकर कोई मन्नत मांगता, वह सच हो जाती। लेकिन इसके पीछे एक बड़ी कीमत चुकानी पड़ती थी। जो भी मन्नत मांगता, उसकी सबसे प्यारी चीज़ गायब हो जाती। मोहन ने अपनी गरीबी दूर करने के लिए कुएँ से मन्नत मांगी। अगले दिन उसे सोने के सिक्कों से भरा घड़ा मिला, लेकिन उसका वफादार कुत्ता हमेशा के लिए गायब हो गया। मोहन को समझ आ गया कि लालच का अंत हमेशा बुरा होता है। उसने वह सोना गरीबों में बांट दिया और फिर कभी उस कुएँ की तरफ नहीं देखा।",
    
    "कहानी 3: जंगल की अदृश्य ताक़त 🌲\n\nएक घने जंगल के बीच से एक पगडंडी गुज़रती थी। शाम के 6 बजे के बाद वहाँ से कोई नहीं गुज़रता था। कहा जाता था कि जंगल में एक अदृश्य शिकारी रहता है जो केवल झूठ बोलने वालों को अपना शिकार बनाता है। एक दिन एक बेईमान व्यापारी उस रास्ते से भागा जा रहा था। अचानक उसके सामने एक परछाई आई और उसने पूछा, 'क्या तुम्हारे पास सोने के सिक्के हैं?' व्यापारी ने डर के मारे झूठ बोल दिया, 'नहीं, मैं गरीब हूँ।' तभी उसकी जेब से सोने के सिक्के अपने आप उड़कर हवा में गायब हो गए और वह व्यापारी हमेशा के लिए वहीं रास्ता भटक गया।",
    
    "कहानी 4: रात का मुसाफिर 🌌\n\nसर्दियों की एक ठंडी रात को हाइवे पर एक ट्रक ड्राइवर गाड़ी चला रहा था। अचानक उसे सड़क के किनारे एक बूढ़ा आदमी लिफ्ट मांगता हुआ दिखा। ड्राइवर ने गाड़ी रोक दी। बूढ़ा आदमी चुपचाप केबिन में बैठ गया। पूरे रास्ते उसने एक शब्द भी नहीं बोला। जब ढाबा आया, तो ड्राइवर ने चाय पीने के लिए पीछे देखा। केबिन की सीट बिल्कुल खाली थी, जबकि ट्रक लगातार 80 की स्पीड पर चल रहा था और खिड़कियाँ पूरी तरह बंद थीं! ड्राइवर के रोंगटे खड़े हो गए। उसने चाय की दुकान पर जब इस बात का ज़िक्र किया, तो ढाबे वाले ने बताया कि ठीक इसी जगह 10 साल पहले एक मुसाफिर की ठंड से मौत हो गई थी, जो आज भी लिफ्ट मांगता है।",
    
    "कहानी 5: वो पुराना बरगद का पेड़ 🌳\n\nगांव की सीमा पर एक बहुत बड़ा बरगद का पेड़ था। बुजुर्ग कहते थे कि इस पेड़ की जड़ें पाताल लोक तक जाती हैं। एक दिन गांव के कुछ शरारती लड़कों ने पेड़ की एक टहनी काट दी। उसी रात पूरे गांव में अजीब सी गड़गड़ाहट की आवाज़ आने लगी और सबके घरों के पानी के कुएँ सूख गए। सुबह जब लोगों ने देखा तो बरगद के पेड़ से लाल रंग का पानी बह रहा था। गांव के बुजुर्गों ने तुरंत पेड़ के पास जाकर माफी मांगी और नया पौधा लगाया। तब जाकर गांव के कुओं में पानी वापस आया। उस दिन के बाद से आज तक कोई भी उस बरगद के पेड़ को नुकसान पहुँचाने की सोचता भी नहीं।"
  ];

  // डिफ़ॉल्ट रूप से पहली कैटेगरी (हरियाणवी स्टेटस) सेलेक्ट रहेगी
  int selectedCategory = 1; 
  int currentIndex = 0;

  // वर्तमान में चुनी हुई लिस्ट को गेट करने का फंक्शन
  List<String> getActiveList() {
    if (selectedCategory == 1) return haryanviShayari;
    if (selectedCategory == 2) return dialogues;
    return stories;
  }

  @override
  Widget build(BuildContext context) {
    List<String> activeList = getActiveList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Haryanvi Status & Stories 👑",
          style: TextStyle(fontWeight: const FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1F),
        elevation: 10,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 1. ऊपर विज्ञापन की खाली जगह (AdMob Banner Ad Spot)
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text("AdMob Banner Ad Here", style: TextStyle(color: Colors.grey, fontSize: 12)),
                ),
              ),

              const SizedBox(height: 15),

              // 2. कैटेगरी चुनने वाले 3 बटन्स
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // कैटेगरी 1: स्टेटस
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 1;
                        currentIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedCategory == 1 ? Colors.amber : Colors.grey[800],
                      foregroundColor: selectedCategory == 1 ? Colors.black : Colors.white,
                    ),
                    child: const Text("Status"),
                  ),
                  // कैटेगरी 2: डायलॉग्स
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 2;
                        currentIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedCategory == 2 ? Colors.amber : Colors.grey[800],
                      foregroundColor: selectedCategory == 2 ? Colors.black : Colors.white,
                    ),
                    child: const Text("Dialogues"),
                  ),
                  // कैटेगरी 3: कहानियाँ
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = 3;
                        currentIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedCategory == 3 ? Colors.amber : Colors.grey[800],
                      foregroundColor: selectedCategory == 3 ? Colors.black : Colors.white,
                    ),
                    child: const Text("Stories"),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // 3. बीच में शायरी/कहानी दिखने वाला मुख्य कार्ड
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1F),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.withOpacity(0.1),
                        blurRadius: 15,
                        spreadRadius: 2,
                      )
                    ],
                    border: Border.all(color: Colors.amber, width: 1.5),
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        activeList[currentIndex],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: selectedCategory == 3 ? 18 : 22, // कहानी के लिए छोटा फॉन्ट ताकि पूरी दिखे
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 4. नीचे के कंट्रोल बटन्स (Copy, Share, Next)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // कॉपी बटन
                      IconButton.filledTonal(
                        onPressed: () {
                          // यहाँ कॉपी करने का लॉजिक चलेगा
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Copied to Clipboard! 📋")),
                          );
                        },
                        icon: const Icon(Icons.copy, color: Colors.amber),
                        style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E1E1F)),
                      ),
                      
                      // शेयर बटन
                      IconButton.filledTonal(
                        onPressed: () {
                          // यहाँ सीधे व्हाट्सएप शेयर का लॉजिक चलेगा
                        },
                        icon: const Icon(Icons.share, color: Colors.greenAccent),
                        style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E1E1F)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  
                  // अगला स्टेटस/कहानी देखने का बटन
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (currentIndex < activeList.length - 1) {
                          currentIndex++;
                        } else {
                          currentIndex = 0; // वापस पहली पोस्ट पर आ जाए
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text(
                      "Next ➔",
                      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
