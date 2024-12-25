import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFD9EEFF), // اللون الخلفي
        appBar: AppBar(
          title: const Text(
            'أهلاً صديقنا ........',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: StoryCard(
                    title: 'القصص',
                    imagePath: 'photo/story.png',
                    storyContent: '',
                  ),
                ),
                SizedBox(width: 20), // مسافة بين البطاقتين
                Expanded(
                  child: StoryCard(
                    title: 'الألعاب',
                    imagePath: 'photo/games.png',
                    storyContent: '',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String storyContent;

  const StoryCard(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.storyContent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'القصص') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoryListScreen(),
            ),
          );
        }
      },
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // تغييرات الظل
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class StoryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('القصص'),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3, // عدد الأعمدة
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            DetailedStoryCard(
              title: 'رحلة اكتشاف غابة السر',
              imagePath: 'photo/forest.png',
              storyContent:
                  '''كان يا مكان في قديم الزمان، في قرية صغيرة تحيط بها الجبال والغابات، عاش ثلاثة أصدقاء مقربين: سامي، سند، ومالك. كانوا دائمًا يهوون المغامرات والاكتشافات.

ذات يوم، بينما كانوا يلعبون قرب أطراف القرية، سمعوا قصة من أحد كبار السن عن "غابة السر"، وهي غابة مليئة بالأسرار والعجائب، ولكن لا يستطيع الوصول إلى قلبها إلا الأصدقاء الحقيقيون الذين يتعاونون ولا يتخلون عن بعضهم. قرر الأصدقاء أن يخوضوا هذه المغامرة ويكتشفوا أسرار الغابة.

في صباح اليوم التالي، انطلقوا حاملين حقيبة صغيرة فيها طعام وبعض الأدوات. عندما اقتربوا من الغابة، لاحظوا أنها مختلفة تمامًا عن الغابات الأخرى. كانت الأشجار طويلة جدًا، وكأنها تهمس لهم، وكان الهواء مليئًا برائحة الزهور الغريبة.

أثناء تقدمهم، واجهتهم أول عقبة: بحيرة عميقة تعترض طريقهم، ولم يكن هناك جسر أو قارب للعبور. قال مالك بفكرة لامعة: "لنجمع الأغصان ونصنع طوفًا نعبر به البحيرة!" تعاون الأصدقاء، وبالفعل نجحوا في العبور.

بعد فترة، وجدوا ممرًا مظلمًا مليئًا بالشجيرات المتشابكة، وكان من المستحيل المرور منه بسهولة. قال سند: "أنا قوي وسأزيح الشجيرات لتتمكنوا من المرور." وبجهد كبير، فتح سند الطريق، وعبر الأصدقاء معًا.

عندما وصلوا إلى وسط الغابة، وجدوا بابًا خشبيًا كبيرًا عليه نقش يقول:
"الأسرار تمنح فقط لمن يجيد العطاء."
لم يفهموا العبارة في البداية، لكنهم لاحظوا أن هناك طائرًا صغيرًا عالقًا بجانب الباب. قال سامي: "لن نترك الطائر يعاني، لنساعده!" تعاونوا جميعًا لإنقاذ الطائر، وما إن حرروه حتى فتح الباب الكبير ببطء، ليكشف عن مشهد مذهل: كانت هناك بحيرة بلورية في وسط الغابة، تحيط بها أزهار متلألئة، وفي قلب البحيرة شجرة ذهبية تتلألأ في ضوء الشمس.

ظهرت الشجرة وكأنها تتحدث، وقالت لهم:
"لقد أظهرتم الشجاعة، التعاون، والعطاء. هذه هي أسرار النجاح والسعادة. خذوا من ثماري، فهي تمنح القوة والحكمة لمن يشاركونها مع الآخرين."

قطف الأصدقاء ثلاث ثمرات ذهبية، ووعدوا باستخدامها لمساعدة قريتهم وأهلها. عادوا إلى قريتهم وهم أكثر تقاربًا وإيمانًا بأن التعاون والعطاء هما مفتاحا النجاح.

ومنذ ذلك اليوم، أصبحت غابة السر مصدر إلهام للأصدقاء وكل من يسمع قصتهم!''',
            ),
            DetailedStoryCard(
              title: 'الأصدقاء',
              imagePath: 'photo/friends.png',
              storyContent:
                  '''في قرية صغيرة هادئة تحيط بها الحقول الخضراء والأشجار العالية، كانت هناك سبع صديقات مقربات: أروى، ضحى، مروة، شروق، جمانة، جنى، وإيثار. كنّ لا يفترقن أبدًا، يقضين أوقاتهن في اللعب والاستكشاف ومشاركة الأحلام. الجميع في القرية كان يعرفهن بصداقتهن القوية وروحهن المرحة.

ذات يوم، وبينما كانت الصديقات يلعبن بالقرب من حقل مليء بالأزهار، اقترحن القيام بنشاط ممتع. قررت أروى أن ترسم صورة على الأرض باستخدام أغصان الأشجار الصغيرة، وبدأت بحماس كبير. لكن جمانة كانت ترغب في استخدام نفس المكان لتصنع شكلًا لقوس قزح من الزهور الملونة.

قالت جمانة بحماس: “أريد أن أستخدم هذا المكان، فهو قريب من الأزهار التي أحتاجها!” لكن أروى لم توافق، وقالت: “لكنني بدأت هنا أولًا، يمكنكِ اختيار مكان آخر.”

تحول الحوار بينهما إلى خلاف، وبدأت أصواتهما تعلو. شعرت جمانة بالغضب وقالت: “أنتِ دائمًا ترفضين أن أشارككِ الأفكار! لا أريد اللعب معكِ بعد الآن!”

ردت أروى بانفعال: “وأنتِ دائمًا تظنين أن أفكاركِ هي الأفضل! افعلي ما تشائين، لكن بدوني!” ثم غادرت المكان غاضبة، تاركة باقي الصديقات في حالة من الحيرة والحزن.

بعد مغادرة أروى، جلست ضحى ومروة وشروق وجنى وإيثار معًا تحت شجرة كبيرة يتحدثن عما حدث. شعرت ضحى بالحزن وقالت: “لا يمكننا أن نسمح لهذا الخلاف أن يفرقنا. نحن صديقات منذ زمن طويل.” وافقت مروة وقالت: “أروى وجمانة صديقتان مقربتان، وعلينا أن نجد طريقة لإعادتهما إلى بعضهما.”

اقترحت شروق: “لنذكّرهما بكل اللحظات الجميلة التي قضيناها معًا. يمكننا صنع شيء خاص يعبر عن صداقتنا.” تحمست جنى للفكرة وأضافت: “ما رأيكن أن نكتب ذكرياتنا المميزة ونزين الشجرة الكبيرة التي نلتقي عندها دائمًا؟” وافقت إيثار بحماس، وقالت: “سنذكرهما أن صداقتنا أقوى من أي خلاف.”

عملت الصديقات طوال المساء على جمع الصور القديمة والكتابة عن أجمل لحظاتهن معًا. صنعن لوحة كبيرة وعلقنها على الشجرة، مع الكثير من الزهور الملونة التي أحضرتها جنى.

في صباح اليوم التالي، دعا باقي الصديقات كلًا من أروى وجمانة إلى الشجرة. عندما وصلتا، فوجئتا باللوحة المعلقة على الشجرة، والتي كُتب عليها:
“نحن صديقات إلى الأبد. لا خلاف يمكن أن يفرقنا، لأن صداقتنا هي أقوى كنز نملكه.”

بدأت ضحى الحديث وقالت: “نحن جميعًا نحبكما. صداقتنا مهمة جدًا، ولا نريد أن نخسر أي لحظة جميلة بسبب خلاف صغير.”

ثم تحدثت إيثار قائلة: “الحياة مليئة بالمواقف، لكن الأصدقاء الحقيقيين هم من يسامحون ويحبون بعضهم دائمًا.”

شعرت أروى بالخجل، وقالت وهي تنظر إلى جمانة: “أنا آسفة. لم يكن يجب أن أغضب هكذا. كان بإمكاننا إيجاد حل معًا.”

ابتسمت جمانة وقالت: “وأنا آسفة أيضًا. كان يجب أن أتحدث معكِ بهدوء بدلًا من الغضب.”

تصافحت أروى وجمانة، وعادتا إلى اللعب معًا. شعرت الصديقات بالفرح لرؤية الابتسامة تعود إلى وجهيهما.

بعدها اقترحت شروق أن يعقدن “عهد الأصدقاء”، ورفعن جميعًا أيديهن قائلات:
“نحن صديقات إلى الأبد. سنتعاون دائمًا، وسنسامح بعضنا، ولن ندع أي خلاف يفرقنا.”

كتبن عهدهن على ورقة كبيرة وعلقنها بجانب الشجرة، لتبقى ذكرى تذكرهن دائمًا بأهمية صداقتهن.

منذ ذلك اليوم، أصبحت الصديقات السبع أكثر ترابطًا من أي وقت مضى، وتعلمن أن الصداقة الحقيقية تحتاج إلى التسامح، التعاون، والحب الدائم.''',
            ),
            DetailedStoryCard(
              title: 'رحلة إلى المملكة الساحرة',
              imagePath: 'photo/kingdom.png',
              storyContent: '''
كان يا ما كان، في قديم الزمان، في قرية صغيرة تحيط بها الجبال، كان هناك أربعة أصدقاء يحبون المغامرات والقصص الغامضة. كانوا سارة، وليلى، وعمر، وكريم. في أحد الأيام، وبينما كانوا يستكشفون مكتبة القرية القديمة، عثروا على صندوق خشبي صغير. فتح كريم الصندوق ليجدوا بداخله خريطة قديمة تشير إلى مكان بعيد يُدعى “المملكة الساحرة”.

قرر الأصدقاء أن ينطلقوا في مغامرة لاكتشاف هذه المملكة. مع شروق الشمس، جهزوا حقيبة صغيرة تحتوي على بعض الطعام والماء، وبدأوا رحلتهم. ساروا عبر غابات خضراء ومروا على أنهار صافية حتى وصلوا إلى بوابة ضخمة مغطاة بالزهور المتلألئة.

على البوابة، كان مكتوبًا: “مرحبًا بكم في المملكة الساحرة، حيث كل شيء يتحدث!” نظر الأصدقاء إلى بعضهم بدهشة، ثم دفع عمر البوابة بحذر. فور دخولهم، فوجئوا بكل ما حولهم يتحدث! الأشجار تلوح بأغصانها وتقول: “مرحبًا، أيها الأصدقاء!”، الزهور تهمس بلطف: “ما أجمل يومكم!”، وحتى النهر كان يغني بصوت هادئ.

اقتربت منهم فراشة ملونة، وقالت بصوت ناعم: “مرحبًا أيها المغامرون! إذا أردتم معرفة أسرار المملكة والحصول على هديتها، فعليكم تجاوز ثلاثة تحديات.”

قبل الأصدقاء التحدي بحماس، وبدأوا مغامرتهم داخل المملكة الساحرة.

في التحدي الأول، قادتهم الفراشة إلى بحيرة جميلة تحيط بها زهور بألوان مختلفة. تحدثت زهرة بنفسجية وسألتهم: “ما اللون الذي يجمع بيننا جميعًا؟” فكر الأصدقاء قليلًا، ثم قالت سارة: “الأخضر، لأنه لون الطبيعة التي نعيش فيها جميعًا.” أجابت الزهرة بسعادة: “صحيح!”، وبدأت الزهور تضيء وكأنها تحتفل بإجابتهم.

في التحدي الثاني، وصلوا إلى شجرة ضخمة بأغصان ممتدة. قالت لهم الشجرة بصوت عميق: “لتنجحوا في هذا التحدي، عليكم أن تغنوا أغنية تجعل الغابة سعيدة.” بدأ كريم يغني بصوت عالٍ، وانضمت إليه سارة، ثم عمر وليلى. كان غناؤهم بسيطًا ولكنه مليء بالفرح. انضمت الغابة كلها إليهم، الطيور تغرد، الأوراق تصفق، والنهر يكمل الأغنية بصوته الجميل.

أما في التحدي الثالث، فقد قادتهم الفراشة إلى طائر ذهبي كان ينتظرهم. قال لهم الطائر: “هنا هديتكم، لكنها هدية يجب أن تُستخدم لنشر الخير.” قدم لهم صندوقًا صغيرًا، وعندما فتحوه، وجدوا فيه بذورًا ذهبية. قال عمر: “علينا زراعتها هنا!”، ووافقه الجميع. زرعوا البذور، وفجأة نمت أشجار رائعة مليئة بالفواكه التي بدأت تتحدث بلطف، تدعو الجميع لتذوقها.

بعد انتهاء التحديات، ظهر نسر ضخم وجميل في السماء، وهبط أمامهم. قال النسر بصوت هادئ: “لقد أثبتم أنكم أصدقاء حقيقيون للمملكة الساحرة. ستظل أبواب المملكة مفتوحة لكم دائمًا.”

عاد الأصدقاء إلى قريتهم، محملين بذكريات لا تُنسى عن المملكة الساحرة. ومنذ ذلك اليوم، كانوا يروون قصتهم لكل من يقابلونه، لينقلوا درسًا بسيطًا: بالتعاون واللطف، يمكننا أن نعيش أجمل المغامرات ونكتشف العجائب.
''',
            ),
          ],
        ),
      ),
    );
  }
}

class DetailedStoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String storyContent;

  const DetailedStoryCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.storyContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryDetailScreen(
              storyTitle: title,
              imagePath: imagePath,
              storyContent: storyContent,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class StoryDetailScreen extends StatefulWidget {
  final String storyTitle;
  final String imagePath;
  final String storyContent;

  const StoryDetailScreen({
    Key? key,
    required this.storyTitle,
    required this.imagePath,
    required this.storyContent,
  }) : super(key: key);

  @override
  _StoryDetailScreenState createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  // تقسيم القصة إلى أجزاء
  late List<String> storyParts;
  int currentPage = 0; // الصفحة الحالية

  @override
  void initState() {
    super.initState();
    // تقسيم القصة إلى أجزاء بناءً على الفقرات
    storyParts = widget.storyContent.split("\n\n");
  }

  void _nextPage() {
    setState(() {
      if (currentPage < storyParts.length - 1) {
        currentPage++;
      }
    });
  }

  void _previousPage() {
    setState(() {
      if (currentPage > 0) {
        currentPage--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.storyTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SingleChildScrollView(
                          child: Text(
                            storyParts[currentPage],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              height: 1.6,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // أزرار الأسهم للتنقل بين الأجزاء
                  Positioned(
                    bottom: 30,
                    left: 16,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: _previousPage,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 16,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: _nextPage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
