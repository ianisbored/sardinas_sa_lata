#let secrets = (
  brunoMars: "brunoMars",
  nutriboostDunkins: "pepsiPaloma",
  rapunzel: "rapunzel",
  sebaceousGland: "sebaceousGland",
  ariTech: "ariTech",
  tathrianaRockstar: "tathrianaRockstar",
  ser: "ser",
  ins1: "[REDACTED]",
  ins2: "[REDACTED]",
  sec: "sec",
)

#import "secrets.typ": secrets

#let margin_top = 1in
#let margin_bottom = 1in
#let margin_left = 1.25in
#let margin_right = 1in
#let guide_stroke = 0.5pt + black

#set page(
  paper: "us-letter",
  margin: (
    top: margin_top,
    bottom: margin_bottom,
    left: margin_left,
    right: margin_right,
  ),

header: [
    #place(center, dy: 0.25in, image("logos.png", width: 1in))
    #place(
      top + center, 
      dy: 0.82in,
      text(size: 11pt, font: "Cambria", strong(secrets.ins1))
    )
  ],

background: {
    place(left, line(start: (margin_left, 0%), end: (margin_left, 100%), stroke: guide_stroke))
    place(left, line(start: (100% - margin_right, 0%), end: (100% - margin_right, 100%), stroke: guide_stroke))
    place(top, line(start: (0%, margin_top), end: (100%, margin_top), stroke: guide_stroke))
    place(top, line(start: (0%, 100% - margin_bottom), end: (100%, 100% - margin_bottom), stroke: guide_stroke)) 
    place(top, line(start: (0%, margin_top - 0.25in), end: (100%, margin_top - 0.25in), stroke: guide_stroke))
    place(top, line(start: (0%, 100% - margin_bottom + 0.25in), end: (100%, 100% - margin_bottom + 0.25in), stroke: guide_stroke))
  }
)

#set text(font: "Courier New", size: 12pt, top-edge: "cap-height", bottom-edge: "baseline")
#set par(spacing: 0pt, leading: 0pt)
// #set grid(stroke: 1pt + red, inset: 0pt)

#grid(
  columns: (100%), 
  rows:(
    0.5in, 
    auto, // sardinas sa lata
    2.2cm,
    auto, // a quali research
    1.8cm,
    auto, // in a partial fulfillment
    1.9cm,
    auto,
    2.3cm,
    auto,
    0.5in,
    auto, 
    0.5in,
    auto, // march -2026
  ),
  gutter: 0pt,

  [],

  [
    #align(center)[
      #set par(leading: 0.5em)
      #text(weight: "bold", size: 13.5pt, strong("SARDINAS SA LATA: THE LIVED EXPERIENCES OF JEEPNEY COMMUTERS ALONG THE GAGALANGIN-DIVISORIA ROUTE"))
      ],
  ],

  [], 

  [
      #align(center)[
        #set par(leading:0.65em)
        #text(size: 12pt)[A Qualitative Research] \
        #text(size: 12pt)[Presented by the Faculty of] \
        #text(size: 12pt)[Science, Technology, Engineering and Mathematics] \ 
        #text(size: 12pt)[#secrets.ins2] \ 
        #text(size: 12pt)[Senior High School Department] \ 
        #text(size: 12pt)[School Year 2025-2026] \ 
      ]
  ],

  [], 

  [
      #align(center)[
        #set par(leading:0.65em)
        #text(size: 12pt)[In a Partial Fulfillment in the Subject] \
        #text(size: 12pt)[Practical Research 1 – Qualitative Research] \
      ]
  ],

  [],

  [
      #align(center)[
        #set par(leading:0.65em)
        #text(weight: "bold", size: 12pt)[#secrets.brunoMars] \
        #text(weight: "bold", size: 12pt)[#secrets.nutriboostDunkins] \
        #text(weight: "bold", size: 12pt)[#secrets.rapunzel] \
        #text(weight: "bold", size: 12pt)[#secrets.sebaceousGland] \
        #text(weight: "bold", size: 12pt)[#secrets.ariTech] \
        #text(weight: "bold", size: 12pt)[#secrets.tathrianaRockstar] \
      ]


  ],

  [],

  [
    #align(center)[
      #set par(leading:3em)
      #text(size: 12pt)[#secrets.sec] \
      ]
  ],

  [],

  [
    #align(center)[
      #set par(leading:3em)
      #text(size: 12pt)[#secrets.ser] \
      ]
  ],

  [],

  [
    #align(center)[
      #set par(leading:3em)
      #text(size: 12pt)[MARCH 2026] \
      ]
  ],
)

#pagebreak()

#set page(margin: (top: margin_top + 1.3cm, left: margin_left + 0.3cm, right: margin_right + 0.5cm, bottom: margin_bottom + 1cm))
#set text(font: "Courier New", size: 12pt, top-edge: "cap-height", bottom-edge: "baseline")
// #set grid(stroke: 1pt + red, inset: 0pt)
#set par(leading: 0.65em)

#set text(size: 12pt, weight: "bold")
#align(center)[
  CHAPTER 1 \
  THE PROBLEM AND ITS BACKGROUND
]

#v(1cm)

#set heading(numbering: "I.")
#show heading: it => {
  set text(font: "Courier New", size: 12pt, weight: "bold")

  if it.numbering != none {
    grid(
      columns: (1.5cm, 1fr),
      numbering(it.numbering, ..counter(heading).at(it.location())),
      it.body
    )
    h(1.65em)
  } else {
    it.body
  }
}

= INTRODUCTION

#show figure.caption: it => {
  set text(size: 11pt, weight: "bold")
  upper(it.supplement)
  [ ]
  it.counter.display()
  [. ]
  it.body
}

#let empty_par = par()[#h(0.0pt)]
#show figure: it => it + empty_par
#let empty_par = par()[#h(0.0pt)]

#set par(justify: true, first-line-indent: 1.5cm, leading: 1.65em, spacing: 1.65em)

#set text(font: "Courier New", size: 12pt, weight: "regular", hyphenate: false)

#set enum(indent: 1.5cm, body-indent: 1.65em, numbering: "1.")

#show enum: it => {
  v(1.65em)
  it
}

Jeepneys are public utility vehicles (PUV) that currently serve as the most common public transportation mode in the Philippines @Aruta2024. They are refurbished US military jeeps left over from World War II with attached carriages, forming the modern jeepney @Eugenio2025 that now serve 8,959,000 passengers nationwide @Mateo-Babiano2020. According to Statista dated October 2021, in Metro Manila alone, about 55,000 jeepneys roam the roads, with an estimated 240,000 total units nationwide. 

Beyond the highways, the jeepney is an integral part of Philippine culture, identity, and values. Its design, adorned with intentional graffiti, stickers, and paintings ties pop culture, religion, and tradition into a moving artwork, crowning it the “King of the Road”. The unique interactions such as the passing of fares, non-seating transit (sabit sa jeep), and kandungan between the passengers, driver, and barker further solidify jeepneys as a cultural experience beyond its transportation role @Cerio2017.

Despite its cultural values, the jeepney poses significant concerns for both environmental health and passenger safety. Due to the semi-enclosed environment and dilapidated diesel engines, the driver and passengers are easily exposed to pollutants such as carbon dioxide (CO2), particulate matter (PM), carbon monoxide (CO), nitrogen oxides (NOx), sulfur oxides (SOx), and volatile organic compounds (VOCs) @Biona2017 @Balanay2009. In addition, #cite(<Roxas2025>, form: "prose") noted that Metro Manila’s equivalent sound pressure levels average at 70.606dB, reaching the 70dB limit before causing hearing damage and impacting human behavior, adding noise pollution alongside airborne contamination. 

Accessibility is also one of the critical flaws of the modern jeepney. In a recent study conducted by #cite(<Francisco2025>, form: "prose"), they found that when senior citizens struggle from poor audiovisual cognition, it limits them from properly reading jeepney signage and hearing a driver’s stop cue. 

Passenger safety is also a prominent concern as 90% of jeepneys are 15 years or older. The government’s Public Utility Vehicle Modernization Program (PUVMP) aims to address this. However, due to the costs of maintenance and fare these modern jeepneys, drivers and passengers alike have not been in favor of them @Zulueta2024.

According to the City Council of Manila, Gagalangin, Tondo, Manila is located on Eastern Tondo, covered by the 2nd District of Manila and is an active hub for jeepney transportation because of its ease of access, high volume, and price. Despite the active role of jeepneys in transportation, and by extension, in Gagalangin’s economy, feedback from commuters is under-documented. It is understood that Gagalangin’s streets are often congested, but the factors behind its traffic are overlooked due to lack of route analysis, causing delays and road rage @McFarlane2025 @Capellan2022

This study will focus on the allegory of the "Sardinas sa Lata" wherein the condition of commuters becomes a metaphor for sardine packaging. While the state recognizes jeepneys as Public Utility Vehicles (PUVs), units of transportation in primarily urban settings, passengers treat them as their lifeline to get to and from their livelihood and/or education. 

This misunderstanding leads to further conflict for solutions in solving the "sardinas" problem many face, especially during rush hour (Çelebi & Imre, 2020). The researchers will interpret the dynamic lived passenger experiences into actionable suggestions, from ordinary commuters to the national level, that can be taken to improve mass jeepney transportation, starting from Gagalangin to improve 
commuter experience, especially of students, women, children, and senior citizens. Most of the gathered related literature reviews the policies surrounding jeepneys, primarily modernization, but only a few analyze the commuters themselves and their experiences. This study will determine the daily routine of jeepney commuters in Gagalangin and document problems they face.

#pagebreak()

= STATEMENT OF THE PROBLEM

This study aims to investigate the experiences of jeepney commuters such as students and drivers in Gagalangin, Tondo, Manila, focusing on the issues regular passengers face daily. 

To address this objective, the following inquiries will be analyzed:

1. What is the daily routine of jeepney commuters in Gagalangin?
2. Why do commuters still use jeepneys despite problems surrounding traffic such as congestion and road rage? 
3. How do jeepney commuters in Gagalangin cope with challenges related to accessibility, affordability, and efficiency in their daily commute?
4. What are the potential interventions and infrastructure to improve public jeepney commuting?

#pagebreak()

= OBJECTIVES OF THE STUDY

The primary objective of this study is to assess the impact of jeepneys to commuters. 

Specifically, the researchers will aim to:

1. Investigate the daily routine of jeepney commuters in Gagalangin and their struggles.
2. Analyze the factors when commuters still use jeepneys despite problems surrounding traffic such as congestions and road rage.
3. Identify and examine the coping mechanisms to the challenges experienced by jeepney commuters in Gagalangin in terms of accessibility, affordability, and efficiency.
4. Condense interviews into actionable steps every sect can contribute to.

#pagebreak()

= THEORETICAL FRAMEWORK

#figure(
  image("theoretical.png"),
  caption: [THEORETICAL FRAMEWORK OF THE STUDY],
) <theoretical>

This study is anchored on the Public Policy Implementation Theory as discussed by #cite(<Capellan2022>, form: "prose") and the Transport Poverty Theory by Lucas et al. (2016). For a public transportation system to function, government agencies such as MMDA, DOTr, and LTFRB must maintain high institutional coordination to ensure that road policies are executed seamlessly.

However, the current "fragmented" nature of these agencies impacts the Philippine roads, especially along the Gagalangin-Divisoria route results in overlapping mandates and unorganized enforcement, both of which serve as the primary cause of congestion and the lack of available public utility vehicles.

This breakdown in government management directly forces commuters into a state of Transport Poverty by Lucas et al. (2016), where they suffer from a lack of mobility and high delays. The "Sardinas sa Lata" experience is a clear indicator of accessibility and affordability poverty, as passengers are forced to endure overcrowded and unsafe conditions simply because they have no other viable alternatives.

Consequently, the daily struggle of Gagalangin commuters becomes a form of social exclusion, where the inefficiency of the transport system exhausts their time and energy, preventing them from fully participating in their work or studies. By connecting these ideas, the research demonstrates that the physical discomfort and "time poverty" experienced by the respondents are the direct results of a disconnected and poorly implemented public transport policy.

Lastly, the Theory of Changing the Symbol by Atos et al. (2021) was proposed, which suggested changing or updating the traditional jeepneys into modern ones as it was said to be more environmentally friendly. While this transition is intended for the public good, it creates a secondary conflict: jeepney drivers face significant financial struggles due to the impact of modernization on their daily income and budgets, as this also results for the fee to increase that will also affect the commuters budget, which just deepen the Theory of Transport Poverty by Lucas et al. (2016), and that shows that this research illustrates how disconnected policies create poverty for the commuter and financial instability not only for the drivers but also to commuters.

Overall, these theories were connected by poverty, as modernizing jeepneys causes financial instability not only for the jeepney drivers but also to the commuters.

#pagebreak()

= CONCEPTUAL FRAMEWORK

#figure(
  image("conceptual.png"),
  caption: [CONCEPTUAL FRAMEWORK OF THE STUDY],
) <conceptual>

The study's conceptual framework begins with the collection of data from passengers, especially students regarding the environmental conditions such as air pollution, as well as from jeepney drivers regarding the traffic along Juan Luna St. These data include audio recordings, interview transcripts and observed non-verbal language such as body language, hand gestures, tone and facial expressions during interviews.

Next, the gathered data undergoes a process. Semi-structured interviews are conducted to gather detailed experiences, perceptions, and opinions of participants regarding the jeepney transportation. At the same time, observation is conducted to examine passengers’ behaviors, environment and commuting situations. Then, all audio recordings are transcribed alongside all gathered observations are organized. Each participant will be labeled in the transcripts.  

Lastly, after organizing the data, the response and observations are examined to identify patterns and common themes that appear from the participants responses.

Overall, this conceptual framework generates a understanding of how environmental factors, traffic conditions, and commuting situation shape the live experience of passengers and drivers along the Gagalangin-Divisoria route.

#pagebreak()

= SIGNIFICANCE OF THE STUDY

This research will provide insights and suggestions to mitigate traffic, develop new infrastructure, and predict trends in jeepney routes. This will help identify congestion points to improve traffic flow and will provide a basis for building better loading zones specifically in Gagalangin, Tondo, furthering the development of a larger traffic activity context in Manila. 

These findings will also help LGUs (Local Government Units) adapt routes and environments to meet local commuter demand, benefiting commuters, especially students and senior citizens.

#pagebreak()

= SCOPE AND DELIMITATIONS

This study will focus on jeepney traffic conditions and will explore the perceptions and observations of selected individuals, regarding the traffic along the Gagalangin-Divisoria route. The research will specifically examine the jeepney routes within Gagalangin, Tondo involving a selected group of local commuters with a focus on high school students.

 This study will not quantify the effects of jeepney traffic across Gagalangin. It will be limited to the subjective experiences of the interviewees and observed data. It will not cover other forms of public transport or areas outside the Gagalangin district, ensuring a concentrated analysis of the community's unique transit challenges. 

#pagebreak()

= DEFINITION OF TERMS

#set par(
  first-line-indent: 0cm,
  hanging-indent: 1.5cm,
)

#show regex("^[\w\s\(\)]+ – "): it => {
  let parts = it.text.split(" – ")
  strong(parts.at(0)) + " – "
}

Jeepney – a type of PUV that serves as the most popular means of public transportation in the Philippines.

Public Utility Vehicle (PUV) – a vehicle that is made up of a diverse range of transportation modes designed to cater to the public.

Public Utility Vehicle Modernization Program (PUVMP) – program phasing out jeepneys and other outdated PUVs in favor of newer, more environmentally friendly vehicles.

Dilapidated engines – deteriorated/partially ruined engines.

Audiovisual cognition – the brain's process of integrating and interpreting information received through both hearing and sight.

Traffic Congestion – a condition in transport that is characterized by slow speeds, longer trip times and increased vehicle queueing.

Barker – a person that acts as a terminal guide by directing jeepneys and shouting jeepney destinations.

*_Sabit sa jeep_* – refers to passengers hanging on the entrance of the jeep.

*_Kandungan_* – a practice where a passenger allows another person (typically a child or someone they know) to sit on their lap to accommodate more people when the vehicle is at full capacity.

Particulate Matter (PM) – a mixture of solid particles and liquid droplets found in the air, such as soot, dust, and smoke, that can be inhaled into the lungs. 

Carbon Monoxide (CO) – a colorless, odorless, and poisonous gas produced when fuels are burned incompletely. 

Nitrogen Oxides (NOx) – a group of highly reactive gases, such as nitrogen dioxide, that form during high-temperature combustion in engines.

Sulfur Oxides (SOx) – gases, such as sulfur dioxide, that are emitted from burning fuels containing sulfur (like diesel) and are known for their pungent smell and role in acid rain. 

Volatile Organic Compounds (VOCs) – organic chemicals that easily turn into vapors or gases at room temperature, often found in exhaust and industrial fumes.

Equivalent sound pressure level – the average sound level over a specific period, representing the constant noise level that carries the same energy as the actual fluctuating noise.

Decibel (dB) – the standard unit of measurement used to express the intensity or loudness of a sound.

Allegory – a story, image, or object that can be interpreted to reveal a hidden or symbolic meaning, often representing broader social or political themes.

#pagebreak()

#set par(
  first-line-indent: 0cm,
  hanging-indent: 0cm,
  leading: 0.65em,
)

#set text(size: 12pt, weight: "bold")
#align(center)[
  CHAPTER 2 \
  REVIEW OF RELATED LITERATURE AND STUDIES
]

#v(1cm)

#counter(heading).update(0)

#set heading(numbering: "I.")
#show heading: it => {
  set text(font: "Courier New", size: 12pt, weight: "bold")

  if it.numbering != none {
    grid(
      columns: (1.5cm, 1fr),
      numbering(it.numbering, ..counter(heading).at(it.location())),
      it.body
    )
    h(1.65em)
  } else {
    it.body
  }
}

= PUBLIC UTILITY VEHICLE MODERNIZATION PROGRAM (PUVMP)

#show figure.caption: it => {
  set text(size: 11pt, weight: "bold")
  upper(it.supplement)
  [ ]
  it.counter.display()
  [. ]
  it.body
}

#set par(justify: true, first-line-indent: 1.5cm, leading: 1.65em, spacing: 1.65em)

#show heading: set block(
  above: 3.65em, 
)

#set text(font: "Courier New", size: 12pt, weight: "regular", hyphenate: false)

According to Atos et al. (2025), the Public Utility Vehicle Modernization Program (PUVMP) was implemented to promote sustainable  development and reduce environmental issues. Jeepneys are an important historical and cultural symbol in the Philippines. Modernization jeepneys can improve safety, comfort, and transportation quality for commuters.

As reported by Garcia et al. (2023), the jeepney phaseout creates operators financial burdens for drivers and operators because modern units are expensive. The program may lead to loss of livelihoods for many jeepney drivers. Modernization may also cause increased transportation  for commuters. This program may disadvantage low-income operators and marginalized. There is resistance from drivers, commuters and operators.

Moreover, according to Gatarin et al. (2024) The Public Utility Vehicle Modernization Program (PUVMP) should be implemented. the implementation will be open to all jeepneys as the implementation will not only improve the public transportation, it will also reduce pollutions that will not harm both drivers and passengers.

In addition, andalecio et al. (2020) mentioned in its study that the program of Public Utility Vehicle Modernization Program (PUVMP) was said to improve and reduce pollution—Drivers, passengers and other company producers state that not all have the same opinion about the program, as they have different opinions, needs and concerns about the modernization

= JEEPNEY DRIVERS

According to Adovas et al. (2024), most of the jeepney drivers are still struggling financially to provide for their daily necessities despite being the primary source of transportation for a lot of Filipinos. Many drivers pay for their jeepney fees, and the remaining budget is for their food and family needs. 

Additionally, as mentioned in the study of Cunanan et al. (2024), jeepney drivers typically earned around ₱500 per day, while jeepney operators normally earn between ₱2,500 and ₱3,000. The high cost of modern jeepney exceeds the capacity on operators and drivers, placing a heavy financial burden on both of them. As a result, drivers are forced to work long hours just to keep up with expenses. 

Rodriguez (2024) explained that in the modernization of jeepneys, the concerns of jeepney drivers are their salaries. They will no longer be paid a regular salary regardless of the number of passengers they serve each day, and they will need to abandon the "boundary system" they used to. Modernization can help lessen the careless driving and accidents on the road, however, it can result in high costs for drivers and operators which also affects the fares of commuters.

In the study of Kecorius et al. (2017), in the Philippines, particularly in Manila, ultrafine soot particles or black carbon (BC) are present in the environment and it causes adverse respiratory and cardiovascular effects which increases the cases of asthma and premature deaths. This affects jeepney drivers and commuters the most, as they are exposed to polluted air daily.

Furthermore, Seva et al. (2011), found that it is not only the passengers who can experience discomfort while riding a jeepney but also the jeepney drivers that were likely to endure discomfort, due to poor design of their workspace. Their current workspace did not go along with the body measurements of the drivers  and the drivers were subjected to awkward posture, due to the location of controls and task of collecting fares. 

Beltran et al. (2024) emphasized that long working hours, low income, traffic congestion, challenging job environments, and road construction contribute to increased dangerous driving among jeepney drivers. Similarly, Cañada et al. (2021) stated that physical or mental exhaustion that resulted in fatigue can reduce attentiveness, poor judgment, and slower reaction times, which significantly increases risky driving practices. These challenges faced by the drivers are important to consider because they can affect passengers safety and comfort during daily commutes.

= POLLUTION IN METRO MANILA

The lived experience of commuters along the Gagalangin-Divisoria route is heavily shaped by two major environmental threats: air and noise pollution. According to Garcia et al. (2025), the old engines of traditional jeepneys release high amounts of Particulate Matter (PM2.5) and Black Carbon. These are tiny, toxic particles in the air that are small enough to be inhaled deep into the lungs, leading to serious breathing problems and long-term health risks. This explains why many commuters feel physical discomfort, coughing, or exhaustion after their trip.

On top of the dirty air, Roxas et al. (2025) point out that commuters are also victims of noise pollution. In Metro Manila, traffic noise averages around 70.81 dB (decibels), which is a unit used to measure how loud a sound is. This level is high enough to cause permanent hearing damage and mental stress over time. This constant noise makes people more irritable and less productive. Together, these studies show that the "lived experience" of a commuter is a struggle against two major burdens: toxic air and deafening noise. To remedy this, the philippines government proposed a modernization program to mitigate these hazards, improving the overall lived experience and well being of the public commuting.

#pagebreak()

#set par(
  first-line-indent: 0cm,
  hanging-indent: 0cm,
  leading: 0.65em,
)

#set text(size: 12pt, weight: "bold")
#align(center)[
  CHAPTER 3 \
  RESEARCH METHODOLOGY
]

#v(1cm)

#counter(heading).update(0)

#set heading(numbering: "I.")
#show heading: it => {
  set text(font: "Courier New", size: 12pt, weight: "bold")

  if it.numbering != none {
    grid(
      columns: (1.5cm, 1fr),
      numbering(it.numbering, ..counter(heading).at(it.location())),
      it.body
    )
    h(1.65em)
  } else {
    it.body
  }
}

= RESEARCH DESIGN

#show figure.caption: it => {
  set text(size: 11pt, weight: "bold")
  upper(it.supplement)
  [ ]
  it.counter.display()
  [. ]
  it.body
}

#let empty_par = par()[#h(0.0pt)]
#show figure: it => it + empty_par
#let empty_par = par()[#h(0.0pt)]

#set par(justify: true, first-line-indent: 1.5cm, leading: 1.65em, spacing: 1.65em)

#set text(font: "Courier New", size: 12pt, weight: "regular", hyphenate: false)

#set enum(indent: 1.5cm, body-indent: 1.65em, numbering: "1.")

#show enum: it => {
  v(1.65em)
  it
}

This study will employ a phenomenological research design, a qualitative approach that explores the lived experiences of students and commuters along the Gagalangin–Divisoria jeepney route. Phenomenology is appropriate because it allows an in-depth understanding of participants’ perspectives, emotions, beliefs, feelings, and challenges, particularly regarding traffic conditions, price increases, and how these factors personally impact them. This design focuses on how individuals interpret and respond to their everyday commuting experiences.

The participants will their perspectives, emotions, and challenges, particularly regarding crowdedness, lack of space, weather conditions, traffic congestion, and higher fares, and how these factors affected their comfort and safety while riding jeepneys (Ganituen et al. n.d.,). For the longest time, utilizing public transportation has been a major problem of the country due to various factors that influence mobility such as lack of regulations, more long waits, traffic delays, and mobility struggles that are usually expected by local passengers. (Francisco et al., 2025)

#pagebreak()

= RESEARCH LOCALE

The interviews will be conducted along Juan Luna Street The researchers will arrange two establishments to interview the participants: Jollibee Juan Luna Pampanga and 7/11 Juan Luna to accomodate for both the commuters and students. Both locations are known loading and unloading hotspots for jeepneys, primarily from their proximity from Pampanga St. and Del Fierro St.

#figure(
  image("map.jpg"),
  caption: [RESEARCH LOCALE OF THE STUDY],
) <locale>

#pagebreak()

= RESEARCH PARTICIPANTS AND SAMPLING TECHNIQUE

The participants of this study will be selected using purposive stratified sampling

The participants of this study will include 6 commuters which are divided into two: student commuters from Pres. Sergio Osmeña Highschool, Florentino Torres Highschool, St. Joseph school and normal commuters, such as working adults, senior citizens, and regular commuters along the Gagalangin-Divisoria route. Stratified purposive sampling will be used to select participants who meet the following criteria: 

First, they must be a student or a regular commuter that uses a jeepney as their primary mode of transportation.

Second, they must regularly travel along the Gagalangin-Divisoria route. 

Lastly, they must be willing to share their commuting experience in an interview. 

#pagebreak()

= RESEARCH INSTRUMENTS

This study will utilize a hybrid data collection workflow where observations will occur alongside interviews (E. Baltazar et al., 2024). This is to conduct triangulation of the gathered data, relating both spoken and non-spoken language to be analyzed. The interview guide consists of open-ended questions that explore the commuters' experiences and perceptions of jeepneys in Gagalangin alongside key non-verbal markers an interviewer is expected to catch to check for dissonance, inconsistency, etc. 

Sample questions will include:

#pagebreak()

#block({
  set par(leading: 0.65em) 
  table(
    columns: (170pt, 1fr), 
    inset: 8pt,
    stroke: (x, y) => (
      left: if x > 0 { 0.5pt + gray } else { 0pt },
      top: if y > 0 { 0.5pt + gray } else { 0pt },
      right: 0pt,
      bottom: 0pt,
    ),
    fill: (col, row) => if row == 0 { luma(230) },
    align: (left + horizon, left),
    table.header([*SOP*], [*Question*]),
  
    [What is the daily routine of jeepney commuters in Gagalangin?], 
    [
      - What's your typical morning commute from Gagalangin?
      - What time do you typically leave home?
      - How do you prepare for the commute ahead?
    ],

    [ Why do commuters still use jeepneys despite problems surrounding traffic such as congestion and road rage?], 
    [
      - Why do you choose a jeepney over other other, modes like Grab or Angkas?
      - Do you feel the fare is worth the traffic, heat, and other inconveniences of jeepneys?
      - What factor/s are in jeepneys that are not in any other modes of transportation?
    ],

    [How do jeepney commuters in Gagalangin cope with challenges related to accessibility, affordability, and efficiency in their daily commute?], 
    [
      - What do you do to distract yourself from the inconveniences of the jeepney?
      - How do you adjust your daily budget for sudden price hikes or protests, forcing you to take other forms of transportation?
      - How do you adjust the time you leave to ensure you'll still have a seat?
    ],

    [What are the potential interventions and infrastructure to improve public jeepney commuting?], 
    [
      - Do you think a centralized management system (like a bus carousel) would work for jeepneys in Tondo?
      - What's the first thing you would change if you were the one in charge of the transport office? 
      - What infrastructure do you think would make travel safer, especially at night?
    ]
  )
})

#pagebreak()

= DATA COLLECTION PROCEDURE

The data collection process consists of three phases:

1.	 Participants were selected through purposive sampling, focusing on students and commuters as the primary target groups.
2.	 Data collection was conducted through face-to-face interviews, where each participant was interviewed individually for a maximum of 35-45 minutes. The interviews took place in selected locations around Gagalangin, Tondo district only, and the sessions were video recorded with their permission.
3.	 The video recordings serve as the primary means of validation, with audio recordings as the secondary backup, ensuring the accuracy of data transcription and maintaining the integrity of the information gathered throughout the interview process.

#pagebreak()

#h(1.5cm) For this study, participants will be selected through purposive sampling, focusing on students and commuters as the primary target groups. Data collection will conducted through face-to-face interviews, where each participant is to be interviewed individually for a maximum of 35-45 minutes. The interviews will take place in selected locations around Gagalangin, Tondo district only, and the sessions will be video recorded with their permission. The video recordings serve as the primary means of validation, with audio recordings as the secondary backup, ensuring the accuracy of data transcription and maintaining the integrity of the information gathered throughout the interview process.

#pagebreak()

= DATA ANALYSIS PROCEDURE

Thematic analysis will used to extract overlapping themes after aggregating the interviewees’ verbal speech, non-verbal language, and other unique identifiers such as occupation and age.

First, relevant data such as unique markers (occupation, age, economic standing, etc.) and the main interview transcript will be gathered, then the researchers will identify repeated integral phrases, eliminating data outliers, and initializing themes through word clouds, NLPs (Natural Language Processors), and manual evaluation. This is to be done through hybrid coding, where codes will directly emerge from the gathered data, but are still grounded and guided in the theories provided in the theoretical framework.

After, collated codes with data supporting the theme in relation to literature will be categorized. This is to be done in a mixed feedback loop, where the researchers will define the initial themes, and NLP models will evaluate and provide feedback with the context of the scope.

Lastly, the researchers will form the narrative report, relating final themes and codes to the objectives and related literature, and linking back to the research gap.

#pagebreak()

= ETHICAL CONSIDERATIONS

Informed consent will be obtained by explaining the purpose of the interview, explain what the participants are expected to do and for the interviewers to follow the Data Privacy Act such as: confidentiality, voluntary participation, and data security

The participants’ identities will be anonymous by using pseudonyms to keep their identities private and ensure that the participants’ personal information is protected. The participants have the right to agree or not agree to the interview and for the writers’ write the reports with honesty and accuracy.

#bibliography("bibliography.bib", style: "apa")
