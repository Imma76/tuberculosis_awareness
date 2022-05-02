import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuberculosis/constants.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

import '../utils.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _markDownData = facts.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    final _markDownData2 =
        researchList.map((x) => "- $x\n").reduce((x, y) => "$x$y");

    final _markDownData3 =
        targetList.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    final _markDownData4 =
        researchList2.map((x) => "- $x\n").reduce((x, y) => "$x$y");

    final _markDownData5 =
        researchList3.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Container(
      width: double.infinity,
      //  height: double.infinity,
      padding: const EdgeInsets.only(left: 100, right: 10, bottom: 10, top: 10),
      child: AnimateIfVisibleWrapper(
        // Show each item through (default 250)
        showItemInterval: const Duration(milliseconds: 150),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Text(
                'TUBERCULOSIS',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
              const Gap(20),
              WidgetCircularAnimator(
                reverse: false,
                singleRing: true,
                size: MediaQuery.of(context).size.width / 2,
                innerIconsSize: 3,
                outerIconsSize: 3,
                innerAnimation: Curves.easeInOutBack,
                outerAnimation: Curves.easeInOutBack,
                innerColor: Colors.deepPurple,
                outerColor: Colors.orangeAccent,
                innerAnimationSeconds: 10,
                outerAnimationSeconds: 10,
                child: CircleAvatar(
                  radius: 450,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(450),
                    child: Image.network(
                      'https://media.istockphoto.com/photos/human-lungs-on-scientific-background3d-illustration-picture-id1312934475?b=1&k=20&m=1312934475&s=170667a&w=0&h=mGiIDFduMmIdgH5M0-wv9CUmPRhBYfM9ofJfO4t3gpQ=',
                      fit: BoxFit.cover,
                      height: 450,
                      width: 450,
                    ),
                  ),
                ),
              ),
              Gap(30),
              Text(
                '188 Countries are affected by ',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              Text(
                'Tuberculosis',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              Text(
                ' Each year, we commemorate World Tuberculosis (TB) \n Day on March 24 to raise public awareness about\n the devastating health, social and economic consequences\n of TB, and to step up efforts to end the global TB epidemic.\n You as well can make a difference! Share these campaign\n materials on social media to raise awareness and to support the campaign.',
                style: GoogleFonts.asap(
                  color: faintColor,
                  height: 2,
                  fontSize: 15,
                ),
              ),
              Gap(20),
              Text(
                'World Health Organization Tuberculosis Statistics',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              AnimationWidget(
                 item: '13',
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '323, 400 +',
                          style: GoogleFonts.asap(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Total Virus Cases',
                          style: GoogleFonts.asap(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffE60746),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const Gap(20),
              AnimationWidget( item: '12',
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1.5 M +',
                          style: GoogleFonts.asap(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Total Deaths',
                          style: GoogleFonts.asap(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xff0038D6),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const Gap(20),
              AnimationWidget( item: '11',
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '123, 400 +',
                          style: GoogleFonts.asap(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Total Recovery',
                          style: GoogleFonts.asap(
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xff01AB44),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'KEY FACTS',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              AnimationWidget(
                 item: '10',
                child: SizedBox(
                  width: 900,
                  height: 700,
                  child: Markdown(
                    data: _markDownData,
                    styleSheet: MarkdownStyleSheet(
                        a: GoogleFonts.asap(
                          color: Colors.white,
                        ),
                        p: GoogleFonts.asap(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Gap(20),
              Text(
                'Tuberculosis (TB) is caused by bacteria (Mycobacterium tuberculosis) that most often affect the lungs. Tuberculosis is curable and preventable.TB is spread from person to person through the air. When people with lung TB cough, sneeze or spit, they propel the TB germs into the air. A person needs to inhale only a few of these germs to become infected.About one-quarter of the world\'s population has a TB infection, which means people have been infected by TB bacteria but are not (yet) ill with the disease and cannot transmit it.People infected with TB bacteria have a 5–10% lifetime risk of falling ill with TB. Those with compromised immune systems, such as people living with HIV, malnutrition or diabetes, or people who use tobacco, have a higher risk of falling ill. When a person develops active TB disease, the symptoms (such as cough, fever, night sweats, or weight loss) may be mild for many months.This can lead to delays in seeking care, and results in transmission of the bacteria to others. People with active TB can infect 5–15 other people through close contact over the course of a year. Without proper treatment, 45% of HIV-negative people with TB on average and nearly all HIV-positive people with TB will die.',
                style: GoogleFonts.asap(
                  color: faintColor,
                  fontSize: 15,
                ),
              ),
              Gap(20),
              SizedBox(
                width: 900,
                child: Text(
                  'Who is most at risk?',
                  style: GoogleFonts.asap(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Tuberculosis mostly affects adults in their most productive years. However, all age groups are at risk. Over 95% of cases and deaths are in developing countries.People who are infected with HIV are 18 times more likely to develop active TB (see TB and HIV section below). The risk of active TB is also greater in persons suffering from other conditions that impair the immune system. People with undernutrition are 3 times more at risk. Globally in 2020, there were 1.9 million new TB cases that were attributable to undernutrition.Alcohol use disorder and tobacco smoking increase the risk of TB disease by a factor of 3.3 and 1.6, respectively. In 2020, 0.74 million new TB cases worldwide were attributable to alcohol use disorder and 0.73 million were attributable to smoking.',
                style: GoogleFonts.asap(
                  color: faintColor,
                  fontSize: 15,
                ),
              ),
              const Gap(20),
              Text(
                'Global impact of TB',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 900,
                child: Text(
                  'TB occurs in every part of the world. In 2020, the largest number of new TB cases occurred in the WHO South-East Asian Region, with 43% of new cases, followed by the WHO African Region, with 25% of new cases and the WHO Western Pacific with 18%.In 2020, 86% of new TB cases occurred in the 30 high TB burden countries. Eight countries accounted for two thirds of the new TB cases: India, China, Indonesia, the Philippines, Pakistan, Nigeria, Bangladesh and South Africa.',
                  style: GoogleFonts.asap(
                    color: faintColor,
                    fontSize: 15,
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'Symptoms and diagnosis',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              AnimationWidget( item: '9',
                child: SizedBox(
                  width: 900,
                  child: Text(
                    'Common symptoms of active lung TB are cough with sputum and blood at times, chest pains, weakness, weight loss, fever and night sweats. WHO recommends the use of rapid molecular diagnostic tests as the initial diagnostic test in all persons with signs and symptoms of TB as they have high diagnostic accuracy and will lead to major improvements in the early detection of TB and drug-resistant TB. Rapid tests recommended by WHO are the Xpert MTB/RIF Ultra and Truenat assays.Diagnosing multidrug-resistant and other resistant forms of TB (see Multidrug-resistant TB section below) as well as HIV-associated TB can be complex and expensive.Tuberculosis is particularly difficult to diagnose in children.',
                    style: GoogleFonts.asap(
                      color: faintColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'Treatment',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              AnimationWidget( item: '7',
                child: SizedBox(
                  width: 900,
                  child: Text(
                    'TB is a treatable and curable disease. Active, drug-susceptible TB disease is treated with a standard 6-month course of 4 antimicrobial drugs that are provided with information and support to the patient by a health worker or trained volunteer. Without such support, treatment adherence is more difficult.Since 2000, an estimated 66 million lives were saved through TB diagnosis and treatment.',
                    style: GoogleFonts.asap(
                      color: faintColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'TB and HIV',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              AnimationWidget( item: '6',
                child: SizedBox(
                  width: 900,
                  child: Text(
                    'People living with HIV are 18 (Uncertainty interval: 15-21) times more likely to develop active TB disease than people without HIV.HIV and TB form a lethal combination, each speeding the other\'s progress. In 2020, about 215 000 people died of HIV-associated TB. The percentage of notified TB patients who had a documented HIV test result in 2020 was only 73%, up from 70% in 2019. In the WHO African Region, where the burden of HIV-associated TB is highest, 85% of TB patients had a documented HIV test result. Overall in 2020, 88% of TB patients known to be living with HIV were on ART.WHO recommends a 12-component approach of collaborative TB-HIV activities, including actions for prevention and treatment of infection and disease, to reduce deaths.',
                    style: GoogleFonts.asap(
                      color: faintColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'Multidrug-resistant TB',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              AnimationWidget( item: '55',
                child: SizedBox(
                  width: 900,
                  child: Text(
                    'Anti-TB medicines have been used for decades and strains that are resistant to one or more of the medicines have been documented in every country surveyed. Drug resistance emerges when anti-TB medicines are used inappropriately, through incorrect prescription by health care providers, poor quality drugs, and patients stopping treatment prematurely.Multidrug-resistant tuberculosis (MDR-TB) is a form of TB caused by bacteria that do not respond to isoniazid and rifampicin, the 2 most effective first-line anti-TB drugs. MDR-TB is treatable and curable by using second-line drugs. However, second-line treatment options are limited and require extensive chemotherapy (up to 2 years of treatment) with medicines that are expensive and toxic.In some cases, more severe drug resistance can develop. TB caused by bacteria that do not respond to the most effective second-line anti-TB drugs can leave patients without any further treatment options.MDR-TB remains a public health crisis and a health security threat. Only about one in three people with drug resistant TB accessed treatment in 2020.Worldwide in 2018, the treatment success rate of MDR/RR TB patients was 59%. In 2020, WHO recommended a new shorter (9-11 months) and fully-oral regimen for patients with MDB-TB. This research has shown that patients find it easier to complete the regimen, compared with the longer regimens that last up to 20 months. Resistance to fluoroquinolones should be excluded prior to the initiation of treatment with this regimen.In accordance with WHO guidelines, detection of MDR/RR-TB requires bacteriological confirmation of TB and testing for drug resistance using rapid molecular tests, culture methods or sequencing technologies. Treatment requires a course of second-line drugs for at least 9 months and up to 20 months, supported by counselling and monitoring for adverse events. WHO recommends expanded access to all-oral regimens.By the end of 2020, 65 countries started using shorter MDR-TB treatment regimens and 109 had started using bedaquiline, in an effort to improve the effectiveness of MDR-TB treatment.',
                    style: GoogleFonts.asap(
                      color: faintColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'Catastrophic cost ',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              AnimationWidget( item: '5',
                child: SizedBox(
                  width: 900,
                  child: Text(
                    'WHO’s End TB Strategy target of “No TB patients and their households facing catastrophic costs as a result of TB disease”, monitored by countries and WHO since WHA67.1 End TB Strategy was adopted in 2015, shows that the world did not reach the milestone of 0% by 2020.According to the results of 23 national surveys on costs faced by TB patients and their families, the percentage facing catastrophic costs* ranged from 13% to 92% and the pooled average, weighted for each country’s number of notified cases, was 47% (95% CI: 33–61%). total costs > 20% annual household income',
                    style: GoogleFonts.asap(
                      color: faintColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'Investments in TB prevention, diagnosis and treatment and research ',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 900,
                child: Text(
                  'US \$13 billion are needed annually for TB prevention, diagnosis, treatment and care to achieve global targets agreed on UN high level-TB meeting.',
                  style: GoogleFonts.asap(
                    color: faintColor,
                    fontSize: 15,
                  ),
                ),
              ),
              const Gap(10),
              AnimationWidget( item: '4',
                child: SizedBox(
                  width: 900,
                  height: 300,
                  child: Markdown(
                    data: _markDownData2,
                    styleSheet: MarkdownStyleSheet(
                        a: GoogleFonts.asap(
                          color: Colors.white,
                        ),
                        p: GoogleFonts.asap(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'Global commitments and the WHO response ',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              AnimationWidget( item: '33',
                child: SizedBox(
                  width: 900,
                  child: Text(
                    'On 26 September 2018, the United Nations (UN) held its first- ever high-level meeting on TB, elevating discussion about the status of the TB epidemic and how to end it to the level of heads of state and government. It followed the first global ministerial conference on TB hosted by WHO and the Russian government in November 2017. The outcome was a political declaration agreed by all UN Member States, in which existing commitments to the SDGs and WHO’s End TB Strategy were reaffirmed, and new ones added.SDG Target 3.3 includes ending the TB epidemic by 2030. The End TB Strategy defines milestones (for 2020 and 2025) and targets (for 2030 and 2035) for reductions in TB cases and deaths. The targets for 2030 are a 90% reduction in the number of TB deaths and an 80% reduction in the TB incidence rate (new cases per 100 000 population per year) compared with levels in 2015. The milestones for 2020 are a 35% reduction in the number of TB deaths and a 20% reduction in the TB incidence rate. The strategy also includes a 2020 milestone that no TB patients and their households face catastrophic costs as a result of TB disease.',
                    style: GoogleFonts.asap(
                      color: faintColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Text(
                'The political declaration of the UN high-level meeting included four new global targets:',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              AnimationWidget( item: '3',
                child: SizedBox(
                  width: 500,
                  height: 200,
                  child: Markdown(
                    data: _markDownData3,
                    styleSheet: MarkdownStyleSheet(
                        a: GoogleFonts.asap(
                          color: Colors.white,
                        ),
                        p: GoogleFonts.asap(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Text(
                'As requested in the political declaration:',
                style: GoogleFonts.asap(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              AnimationWidget( item: '2',
                child: SizedBox(
                  width: 500,
                  height: 300,
                  child: Markdown(
                    data: _markDownData4,
                    styleSheet: MarkdownStyleSheet(
                        a: GoogleFonts.asap(
                          color: Colors.white,
                        ),
                        p: GoogleFonts.asap(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: 900,
                child: Text(
                  'WHO is working closely with countries, partners and civil society in scaling up the TB response. Six core functions are being pursued by WHO to contribute to achieving the targets of the UN high-level meeting political declaration, SDGs, End TB Strategy and WHO strategic priorities:',
                  style: GoogleFonts.asap(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Gap(20),
              AnimationWidget(
                item: '1',
                child: SizedBox(
                  width: 500,
                  height: 500,
                  child: Markdown(
                    data: _markDownData5,
                    styleSheet: MarkdownStyleSheet(
                        a: GoogleFonts.asap(
                          color: Colors.white,
                        ),
                        p: GoogleFonts.asap(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      decoration: const BoxDecoration(color: Color(0xff4A62E6)),
    );
  }
}

class AnimationWidget extends StatelessWidget {
  final Widget? child;
  final String? item;
  const AnimationWidget({
    Key? key,
    this.child,this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimateIfVisible(
        reAnimateOnVisibility: true,
        key: Key('item$item'),
        duration: const Duration(milliseconds: 500),
        builder: (
          BuildContext context,
          Animation<double> animation,
        ) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });
  }
}
