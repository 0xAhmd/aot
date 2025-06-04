// cspell:disable
String getDescription(String name) {
  Map<String, String> descriptions = {
    'Marlo Freudenberg':
        '"Marlo Freudenberg, a righteous and idealistic soldier, transitioned from the Military Police Regiment to the Scout Regiment, driven by his passion for justice and desire to make a real difference, though his journey revealed the complexities of human nature and flawed institutions."',
    'Fordon':
        'A hesitant yet determined soldier, Gordon was a recruit of the Scout Regiment who joined after the crowning of Historia Reiss. Though initially shaken by the overwhelming loss of the veteran members of the Scouts, he chose to stand alongside his comrades in the face of certain death during the mission to retake Wall Maria. Gordon\'s loyalty and willingness to follow through on Erwin\'s bold plan, even in the face of fear, marked him as a soldier willing to sacrifice everything for humanity’s survival, despite the grim reality of their battle against the Titans.',
    'Sandra':
        'A brave and dedicated recruit of the Scout Regiment, Sandra was a dependable soldier who faced the horrors of battle with unwavering resolve. Despite her fears, she demonstrated remarkable courage and loyalty, joining her comrades in a desperate charge against the Beast Titan during the mission to retake Wall Maria. Her determination and sacrifice epitomized the selflessness of the Scouts in their fight for humanit\'s survival.',
    'Lobov':
        'A disciplined and dedicated soldier, Lobov was a former Garrison commander who later joined the Scout Regiment. Known for his rigid personality and deep respect for military duty, he showed courage in protecting the airship during the Scouts\' retreat from Liberio. His commitment to his comrades was unwavering, even in the face of danger, though his life was tragically cut short when he was shot by a young civilian during the retreat. Lobov’s transition from the Garrison to the Scouts marked a new chapter in his life, showcasing his loyalty to the cause and willingness to fight for humanity\'s survival.',
    'Klaus':
        'Klaus had a straightforward personality, questioning Grisha Yeager\'s loyalty to the Survey CorpsDuring the Return to Shiganshina arc, Klaus\'s team was tasked with protecting the horses. They were killed by the Beast Titan\'s boulder barrage Klaus\'s name is a shortened form of "Nikolaus," meaning "victory for the people."',
    'Dirk':
        "Dirk, a calm and serious team leader in the Scout Regiment, led his squad during the mission to retake Wall Maria, ultimately sacrificing his life while protecting the scouts' horses from the Beast Titan's attack.",
    'Dieter':
        'Dieter, a passionate but reckless soldier in the Scout Regiment, struggled with the loss of his friends and faced the consequences of his actions during the 57th Exterior Scouting Mission.',
    'Tomas':
        'A dependable and strong-willed soldier, Tomas was known for his physical and mental resilience. He earned the trust of his superiors, including Miche Zacharius and Nanaba, and demonstrated remarkable dedication during critical moments. Tomas’ courage was evident when he rode for hours on horseback to urgently deliver news of Wall Rose\'s breach to Commander Erwin. His efforts to inform the commanders about the incoming Titans highlighted his commitment to his comrades and his duty. Tomas\' legacy lives on through the memories of his fellow soldiers, particularly as Hange reflects on his sacrifice during times of conflict.',
    'Armin Arlelt':
        'A thoughtful and strategic thinker, Armin is often seen as the brains of the trio of Eren and Mikasa. Though physically weaker, his intelligence and bravery prove crucial to many of the missions undertaken by the Survey Corps.',
    'Mikasa Ackermann':
        'A fiercely loyal and skilled soldier, Mikasa is Eren\'s adoptive sister and one of the strongest members of the Survey Corps. Her protective nature and exceptional combat abilities make her an invaluable ally in the fight against the Titans.',
    'Levi Ackermann':
        'Known as humanity\'s strongest soldier, Levi is a cold, efficient, and highly skilled warrior who leads his elite squad in the Survey Corps. His quiet demeanor masks a deep sense of responsibility and commitment to protecting humanity.',
    'Erwin Smith':
        'The charismatic and determined leader of the Survey Corps, Erwin is a visionary who is willing to sacrifice everything for the future of humanity. His leadership inspires those around him, even in the face of overwhelming odds.',
    'Jean Kirschtein':
        'Initially a cynical and self-preserving soldier, Jean matures into a more thoughtful and reliable leader. His tactical mindset and strong sense of justice make him a valuable member of the Survey Corps.',
    'Sasha Braus':
        'Known for her love of food and her quick reflexes, Sasha is a skilled marksman and an agile fighter. Her kind-hearted nature contrasts with the intense battles she faces, but she always rises to the occasion when her comrades need her.',
    'Conny Springer':
        'A laid-back and easy-going member of the Survey Corps, Connie is loyal to his friends and teammates. Though he is often lighthearted, he proves to be a brave and dependable soldier when it matters most.',
    'Hange Zoë':
        'A brilliant and eccentric researcher, Hange is obsessed with studying Titans. Known for their curiosity and unorthodox methods, Hange is a compassionate and dedicated leader who plays a crucial role in humanity’s fight against the Titans.',
    'Varis':
        'Varis, a loyal Scout Regiment soldier, was tragically transformed into a Pure Titan by Zeke Jaeger\'s spinal fluid and ultimately killed by Levi Ackermann after being turned against him.',
    'Marlene':
        "Marlene, a cheerful and close friend of Hange Zoë, was a team leader in the Scout Regiment and tragically killed by the Beast Titan during the mission to reclaim Wall Maria.",
    'Buchwald':
        "Buchwald, the horse ridden by Jean during the 57th Exterior Scouting Mission, was a tall, dark brown horse with a black mane, known for his speed and endurance.",
    'Attack Titan':
        'The Attack Titan, wielded by Eren Yeager, is a powerful titan with immense strength and agility. It is known for its aggressive and relentless fighting style, capable of regenerating quickly and exhibiting great endurance in battle.',
    'Founding Titan':
        "The Founding Titan is one of the Nine Titans and holds the power to control other titans, alter memories, and manipulate the Eldian population. It is an immensely powerful and mysterious titan that can be accessed by those with royal blood, including Eren Yeager after gaining its power.",
    'War Hammer Titan':
        "The War Hammer Titan is one of the Nine Titans, known for its ability to create hard, crystallized structures and weapons from its titan form. Its user, Lara Tybur, was able to control the War Hammer Titan remotely through a crystal-like structure within its body.",
    'Armored Titan':
        "The Armored Titan, wielded by Reiner Braun, is a titan encased in a tough, armor-like layer that grants it great durability and resistance to attacks. The titan is capable of charging at high speeds and has formidable defensive capabilities.",
    'Beast Titan':
        "The Beast Titan, controlled by Zeke Yeager, is a titan with long arms and a powerful throwing ability. It has the unique power to control titans through the scream of its user and is known for its intelligence and strategic thinking.",
    'Female Titan':
        "The Female Titan, wielded by Annie Leonhart, is a versatile and agile titan with enhanced speed and combat capabilities. It is capable of using the hardening ability to create strong defensive structures and has remarkable strength and endurance.",
    'Cart Titan':
        "The Cart Titan is a titan that specializes in carrying large amounts of equipment and resources, often used for logistical support. It is known for its high endurance and ability to move for long periods of time without tiring. Its user, Pieck Finger, uses it for both reconnaissance and combat.",
    'Eren Jaeger':
        'Driven by a fierce desire for freedom, Eren transforms from a passionate youth into a complex and determined figure willing to make extreme sacrifices. His Titan powers and resolve make him one of the most pivotal figures in the fate of humanity.',

    'Reiner Braun':
        'A warrior torn between duty and guilt, Reiner serves as the Armored Titan while struggling with his dual identity. Behind his strong facade lies a man weighed down by the consequences of war and betrayal.',

    'Zeke Jaeger':
        'An enigmatic and calculating mind, Zeke is the Beast Titan with a chilling calmness and strategic genius. His plans often blur the line between savior and villain, making him a central figure in the unfolding conflict.',

    'Annie Leonhart':
        'A solitary and skilled fighter, Annie is known for her icy demeanor and deadly precision. As the Female Titan, she conceals deep emotions beneath a stoic exterior and a powerful sense of duty.',

    'Historia Reiss':
        'Once a quiet and self-effacing girl, Historia embraces her true identity as queen with grace and resolve. Her inner strength and compassion redefine her role in the struggle for humanity’s survival.',

    'Hannes':
        'A loyal and warm-hearted soldier, Hannes is a father figure to Eren, Mikasa, and Armin. Despite past regrets, he redeems himself with courage and a sense of duty when it matters most.',

    'Dot Pyxis':
        'Known for his unorthodox methods and composed leadership, Commander Pyxis combines tactical brilliance with a deep understanding of human nature. His calm demeanor masks a sharp and strategic mind.',

    'Ymir Fritz':
        'The mysterious progenitor of all Titans, Ymir Fritz is a tragic figure bound by fate. Her power and suffering form the foundation of the Titan legacy that shapes the world’s history.',

    'Kenny Ackermann':
        'A ruthless and charismatic killer, Kenny thrives in chaos and shadows. His brutal upbringing fuels his cynical view of power and survival, yet his past reveals a surprising depth of emotion.',

    'Pieck Finger':
        'Intelligent and composed, Pieck serves as the Cart Titan with unmatched endurance and strategic insight. Her unassuming appearance hides a sharp wit and unwavering loyalty to her comrades.',

    'Carla Jaeger':
        'A loving and nurturing mother, Carla represents the warmth and safety of home that Eren fights to protect. Her tragic death becomes a powerful catalyst for his resolve to defeat the Titans.',

    'Marco Bodt':
        'An idealistic and compassionate cadet, Marco believes in unity and cooperation. His untimely death is a haunting reminder of the harsh realities of war and lost innocence.',

    'Petra Rall':
        'A skilled and loyal member of Levi’s squad, Petra displays courage and grace in battle. Her deep respect for Levi and dedication to the cause leave a lasting impression on her comrades.',

    'Falco Grice':
        'Kind-hearted and brave, Falco is a young Warrior candidate who matures quickly amid conflict. His empathy sets him apart and becomes a guiding light through the chaos of war.',

    'Nicolo':
        'A Marleyan chef turned ally, Nicolo finds unexpected purpose and connection among his former enemies. His passion for food becomes a bridge between divided peoples.',

    'Onyankopon':
        'A representative from a distant land, Onyankopon brings technology, diplomacy, and a fresh perspective. Calm and principled, he believes in cooperation to build a better future.',

    'Frieda Reiss':
        'As the last true inheritor of the Founding Titan before Historia, Frieda possesses great power and wisdom. Gentle and compassionate, her fate is shaped by duty and sacrifice.',

    'Eren Kruger':
        'A mysterious figure operating under the alias "The Owl," Eren Kruger sows the seeds of rebellion. His cryptic warnings and Titan legacy play a pivotal role in shaping future events.',

    'Abel':
        'A minor member of the Survey Corps, Abel supports his team with reliability and resolve. Though not a central figure, he contributes to humanity’s collective effort with quiet strength.',

    'Abel Reiss':
        'A lesser-known member of the Reiss royal family, Abel\'s name reflects the complex lineage behind the Founding Titan’s power. His role hints at the depth of royal influence over history.',

    'Alma':
        'The mother of Historia Reiss, Alma lives a life of secrecy and bitterness due to her ties to the royal bloodline. Her harsh worldview leaves a deep emotional scar on her daughter.',

    'Alois Tybur':
        'A noble from the influential Tybur family, Alois remains largely in the shadows of political intrigue. His lineage ties him to the true wielders of power in Marley’s upper ranks.',

    'Anka Rheinberger':
        'A calm and capable aide to Commander Pixis, Anka supports military operations with diligence and composure. Though reserved, her presence is a steadying force amidst chaos.',

    'Armin\'s grandfather':
        'A thoughtful and kind man, Armin’s grandfather encourages curiosity and compassion. His tragic fate reflects the brutal cost of the Walls’ population control policies.',

    'Artur Braus':
        'Sasha’s father and a humble hunter, Artur believes in peace, understanding, and the preservation of humanity’s morals. His wisdom deeply influences Sasha’s values.',

    'Aurille':
        'A young recruit in the military, Aurille’s fleeting presence represents the countless lives swept up in humanity’s war for survival—each with dreams, fears, and untold stories.',

    'Bandits':
        'Ruthless and opportunistic, the bandits prey on the vulnerable during times of upheaval. Their actions serve as a grim reminder of human cruelty beyond the Titans.',

    'Beane':
        'One of the captured Titans studied by the military, Beane’s passive behavior helps advance scientific understanding. Its fate illustrates the tension between curiosity and cruelty.',

    'Beirer':
        'A Marleyan Warrior official, Beirer helps oversee the next generation of Titan inheritors. He reflects the structured yet morally complex system of Warrior training.',

    'Bertholdt Hoover':
        'A quiet and introspective boy, Bertholdt hides immense power as the Colossal Titan. Torn between guilt and duty, his gentle nature contrasts with his devastating abilities.',

    'Boris Feulner':
        'A Garrison soldier stationed at Trost, Boris carries out his duties with earnest resolve. Though not widely known, his presence contributes to the defense of humanity.',

    'Bruno Tybur':
        'A relative of the influential Tybur family, Bruno’s legacy is tied to the complex politics of Marley and Eldia. Like others in his family, he represents the burden of inherited power.',

    'Calvi':
        'The commander-in-chief of Marley’s military, General Calvi is a staunch believer in Marleyan dominance. His calculated leadership highlights the brutal pragmatism of war and conquest.',

    'Carlo':
        'A member of the Military Police Brigade, Carlo participates in enforcing order within the Walls. His actions reflect the often corrupt and self-serving nature of the brigade.',

    'Carsten':
        'A Garrison soldier dedicated to defending the Walls, Carsten\'s role—though minor—shows the shared responsibility of countless soldiers standing against the Titan threat.',

    'Caven':
        'A top subordinate of Kenny Ackermann, Caven is a skilled and stoic fighter. Her loyalty and precision in battle make her a trusted asset in the Anti-Personnel Control Squad.',

    'Charrette':
        'A minor but dutiful Garrison officer, Charrette upholds his responsibilities during critical moments. He symbolizes the silent strength of the military’s unsung protectors.',

    'Colt Grice':
        'An elder brother and aspiring Titan inheritor, Colt is fiercely loyal and protective of Falco. His courage and sense of duty shine as he navigates the brutal realities of Marley’s Warrior program.',

    'Comrade D':
        'A nameless soldier from Grisha’s rebellion, Comrade D dies early in the cause. His brief appearance serves as a testament to the sacrifices made in pursuit of Eldian liberation.',

    'Conny\'s father':
        'A villager from Ragako, Conny’s father falls victim to a cruel fate that ties into the larger mystery of the Titans. His transformation represents the personal toll of war and experimentation.',

    'Conny\'s mother':
        'Frozen in a Titan body, Conny’s mother remains a tragic and haunting figure. Her immobility and faint consciousness serve as a chilling consequence of Zeke’s Titan experiments.',

    'Darius Baer Walbrunn':
        'A member of the ruling military tribunal, Darius acts as a judge in pivotal trials. His stern yet thoughtful demeanor reflects the delicate balance of justice and control within the Walls.',

    'Daz':
        'A timid and emotionally fragile soldier, Daz represents the psychological toll of war. Despite his fears, his moments of bravery show the human side of the faceless masses.',

    'Deltoff':
        'A soldier under Dot Pixis’ command, Deltoff contributes to key strategies during battle. Though not in the spotlight, he represents the reliability of loyal foot soldiers.',

    'Dennis Aiblinger':
        'A member of the Garrison, Dennis plays a minor but consistent role during Titan incursions. His continued service showcases the quiet courage of everyday defenders.',

    'Devil of All Earth':
        'A mythic figure in Marleyan propaganda, the Devil of All Earth is said to have given Ymir her Titan powers. This legend fuels generations of hatred and justifies oppression, despite its likely distortion of the truth.',

    'Dhalis Zachary':
        'As the head of the military government, Zachary is a pragmatic and unconventional leader. Known for his eccentric methods, he is dedicated to the survival of humanity and the dismantling of corruption.',

    'Dieter Ness':
        'A veteran member of the Survey Corps, Dieter Ness fights with discipline and focus. His death during the Female Titan’s attack underscores the danger even seasoned soldiers face.',

    'Dimo Reeves':
        'A cunning merchant from Trost, Dimo prioritizes profit but ultimately shows a willingness to change. His fate becomes a lesson in the cost of opposing hidden powers.',

    'Dina Fritz':
        'Once royalty and Grisha’s first wife, Dina is tragically transformed into a Titan. Her monstrous form haunts Eren’s past and becomes a pivotal piece of his destiny.',

    'Dirk Reiss':
        'A son of the Reiss royal family, Dirk is killed by Grisha during his assault on the chapel. His death represents the fall of the old royal order.',

    'Djel Sannes':
        'A ruthless Interior Police agent, Sannes enforces the monarchy’s will without question. Under interrogation, he reveals a deeply conflicted conscience buried beneath years of cruelty.',

    'Duran':
        'A member of the Anti-Personnel Control Squad, Duran fights for the First Interior Squad during key battles. His role is a reminder of the military’s internal power struggles.',

    'Eld Gin':
        'A member of Levi’s elite squad, Eld is a skilled and level-headed fighter. His loyalty and tactical mind make his loss during the Female Titan mission especially tragic.',

    'Ellie':
        'A minor character whose brief appearance offers a glimpse into the everyday lives impacted by the war. Her role, though small, reflects the depth of the world’s human cost.',

    'Elliot G. Stratmann':
        'A Marleyan noble and politician, Elliot embodies the arrogance of Marley’s ruling elite. His disdain for Eldians highlights the systemic prejudice that fuels the conflict.',

    'Fay Jaeger':
        'Grisha’s beloved younger sister, Fay is a symbol of innocence lost. Her horrific death at the hands of Marleyan officers drives Grisha into rebellion and marks the beginning of a dark path.',

    'Fine Tybur':
        'A member of the Tybur family, Fine’s presence at key political events emphasizes the family’s careful navigation of power and performance within Marleyan society.',

    'Finger':
        'A minor Garrison officer, Finger plays a small role in the series, representing the vast network of unnamed soldiers committed to the Walls’ defense.',

    'Flagon':
        'A dependable officer under Hange’s command, Flagon supports scientific efforts with courage. His trust in Hange reflects the unity among Survey Corps members.',

    'Flegel Reeves':
        'The son of Dimo Reeves, Flegel starts as a coward but grows into a brave and principled man. His courage in standing up to the Interior Police shows the strength of unexpected heroes.',

    'Floch Forster':
        'A once-ordinary soldier, Floch becomes a zealous advocate for Eren’s cause. His transformation into a militant leader reveals how fear and ideology can reshape people in times of war.',

    'Florian Reiss':
        'A lesser-known member of the Reiss family, Florian’s existence hints at the complex and secretive nature of the royal bloodline’s history.',

    'Franz Kefka':
        'A young cadet in the 104th Training Corps, Franz shares a close bond with Hannah. His death in the Battle of Trost is a heart-wrenching reminder of the fragility of young love in wartime.',

    'Frieda\'s mother':
        'A royal matriarch, Frieda’s mother remains largely unseen but is part of the secretive Reiss family legacy. Her role reflects the quiet burdens passed through generations.',

    'Fritz':
        'The original king who inherited Ymir’s Titan power, King Fritz built the Walls and erased history to protect his people. His legacy shapes the entire world’s conflict and suffering.',

    'Furlan Church':
        'A close friend of Levi and Isabel, Furlan is intelligent and cautious. His tragic end in the Underground arc shows the cost of dreaming for a better life in a cruel world.',

    'Gabi Braun':
        'A fiery and determined Warrior candidate, Gabi is shaped by Marleyan indoctrination but undergoes significant growth. Her journey mirrors the struggle to break the cycle of hatred.',

    'Gelgar':
        'A seasoned soldier in the Survey Corps, Gelgar’s bravery in the face of overwhelming odds reflects the Corps’ relentless commitment. His end is both heroic and tragic.',

    'Gerald':
        'A minor character among Marley’s forces, Gerald’s role is one of many that fill out the world’s military structure—faceless yet essential in battle.',

    'Gordon':
        'A soldier caught in the war between Marley and Eldia, Gordon’s brief presence underlines the sheer number of lives affected by powers beyond their control.',

    'Greiz':
        'A Marleyan Warrior unit soldier, Greiz harbors strong anti-Eldian prejudice. His rigid mindset reflects the deep societal divisions instilled by Marley’s propaganda.',

    'Grice':
        'A member of the Eldian Restorationists and uncle to Falco and Colt, Grice’s betrayal under pressure contrasts sharply with the idealism of the cause he once served.',

    'Grisha Jaeger':
        'Eren’s father and a former Restorationist, Grisha’s complex legacy shapes the fate of both Eldia and Marley. Driven by guilt and purpose, his choices echo through generations.',

    'Grisha\'s mother':
        'A gentle and loving parent, Grisha’s mother suffers under Marleyan oppression. Her quiet presence reflects the humble roots from which rebellion can rise.',

    'Gross':
        'A sadistic Marleyan officer, Gross is responsible for the death of Fay Jaeger and countless others. His cruelty embodies the moral rot of Marley’s oppressive system.',

    'Gunther Schultz':
        'A disciplined and experienced member of Levi’s squad, Gunther fights with precision and honor. His death during the Female Titan pursuit is a heavy blow to the elite team.',

    'Gustav':
        'An aide to the Tybur family, Gustav serves with loyalty and discretion. His presence during key political scenes highlights the careful choreography of power among Marley’s elite.',

    'Halil':
        'A minor Marleyan soldier, Halil plays a background role in the conflict. His presence represents the countless nameless individuals swept up in the tide of war.',

    'Hanna Diament':
        'A trainee in the 104th Cadet Corps, Hanna is best remembered for her heartbreaking attempt to revive Franz. Her grief highlights the harsh emotional toll of battle on young soldiers.',

    'Harold':
        'A background character mentioned in military settings, Harold is one of many whose stories remain untold, yet contribute to the fabric of the world’s vast conflict.',

    'Helos':
        'A legendary Marleyan hero said to have defeated the Devil of All Earth. Though likely a fabricated myth, Helos symbolizes Marley’s propaganda and the manipulation of history.',

    'Henning':
        'A Garrison soldier stationed in Trost, Henning fights to defend humanity. His brief appearance represents the everyday bravery of frontline defenders.',

    'Hugo':
        'A Marleyan soldier involved in Titan research, Hugo’s actions reflect Marley’s scientific pursuit of power—often at the expense of morality and human life.',

    'Holger':
        'A steadfast soldier assigned to protect important political figures, Holger’s role underscores the loyalty and structure within Marley’s military ranks.',

    'Hitch Dreyse':
        'A sarcastic but perceptive Military Police officer, Hitch provides a rare voice of normalcy. Her evolution from apathetic recruit to active participant shows quiet character growth.',

    'Ian Dietrich':
        'A brave leader during the defense of Trost, Ian sacrifices himself to give Eren a chance to seal the gate. His selflessness is emblematic of the Survey Corps’ ideals.',

    'Hse Langnar':
        'A brave but lesser-known Survey Corps soldier, Hse Langnar’s presence on the frontlines adds to the weight of those who fight without recognition.',

    'Isabel Magnolia':
        'A cheerful and energetic companion of Levi in his Underground days, Isabel dreams of a better life. Her tragic fate helps shape Levi’s resolve and cold exterior.',

    'Ivan':
        'A cadet in the 104th Corps, Ivan’s brief role reflects the scale of humanity’s mobilization against the Titans. Like many, he serves quietly and with courage.',

    'Jaeger':
        'The family name of Grisha and Eren, "Jaeger" becomes symbolic of rebellion, freedom, and change—etched deeply into the world’s history.',

    'Jean\'s mother':
        'A loving and supportive parent, Jean’s mother believes in his potential. Her presence grounds Jean’s humanity and reflects the civilian perspective on the war’s toll.',

    'Jurgen':
        'A dedicated Survey Corps member, Jurgen aids in Eren’s transport and protection. Though not widely known, his bravery contributes to mission success.',

    'Karina Braun':
        'Reiner’s mother, Karina is fiercely devoted to Marley and to her son’s Warrior status. Her beliefs represent the complex conditioning faced by Eldians in Marley.',

    'Karl Fritz':
        'The 145th king of Eldia who fled to Paradis and erected the Walls, Karl Fritz embraced pacifism. His decision set the stage for generations of isolation and conflict.',

    'Kaya':
        'A young girl saved by Sasha, Kaya is haunted by her family’s death. Her journey from grief to understanding mirrors the hope of breaking cycles of hate.',

    'Keiji':
        'A Survey Corps soldier present during major expeditions, Keiji is one of many brave souls whose contributions go unnoticed but remain essential to the mission.',

    'Keith Sadies':
        'A former commander of the Survey Corps and current instructor, Keith is a man burdened by regret. His complex relationship with Grisha and Eren shows the quiet pain of failure and wisdom of humility.',

    'Kemper Boltz':
        'A minor military figure in Marley, Kemper represents the many functionaries enforcing Marley’s oppressive regime, often blindly following orders.',

    'Kenny\'s grandpa':
        'A reclusive old man who reveals the truth about the Ackermanns to Kenny. His insights help unravel the mystery of their bloodline and forced loyalty.',

    'King Fritz':
        'The founding monarch of the Eldian Empire, King Fritz’s legacy is deeply entangled with both the Titans’ origins and the world’s trauma. His name remains a symbol of fear and reverence.',

    'Kitz Woermann':
        'A panicked Garrison commander during the Trost attack, Kitz struggles to maintain order. His actions reflect the paralyzing fear that grips even seasoned leaders in times of crisis.',

    'Kiyomi Azumabito':
        'An ambassador from Hizuru, Kiyomi is diplomatic, intelligent, and ambitious. She offers Paradis a rare international ally, balancing national interest with familial ties.',

    'Koslow':
        'A military officer in Marley, Koslow’s rigid demeanor highlights the institutionalized violence and control Marley exerts over its soldiers and Eldians alike.',

    'Kuchel Ackermann':
        'Levi’s mother, Kuchel is a tragic figure who worked as a prostitute to survive. Despite her hardships, she loved Levi deeply, and her sacrifice shaped his fierce independence.',

    'Lara Tybur':
        'The inheritor of the War Hammer Titan, Lara Tybur is a dignified and powerful figure from the noble Tybur family. Her presence at the declaration of war marks a turning point in the global conflict.',

    'Lauda':
        'A lesser-known member of the Anti-Marleyan Volunteers, Lauda supports the revolution from within. His quiet resolve symbolizes the hidden strength of resistance.',

    'Leonhart':
        'The surname of Annie, the Leonhart name is tied to Marley’s Warrior program. It reflects the tragic burden placed on children trained for war.',

    'Lima':
        'A background Garrison soldier, Lima\'s brief role represents the many unnamed fighters who risk their lives defending humanity from Titans.',

    'Lisa Braus':
        'Sasha’s mother, Lisa is a kind-hearted and strong rural woman. Her nurturing presence helped shape Sasha’s fierce independence and love for life.',

    'Lou':
        'A minor character with little screen time, Lou is among the many civilians whose lives are shaped by the broader political and military struggle.',

    'Louise':
        'A young girl saved by Mikasa, Louise later joins the Yeagerists, idolizing strength. Her arc reflects how admiration can be warped by ideology.',

    'Luke Cis':
        'A Survey Corps member under Hange’s command, Luke participates in key battles. Though not prominent, his loyalty reinforces the unity of the Corps.',

    'Marcel Galliard':
        'Reiner’s fallen comrade and Porco’s older brother, Marcel was a compassionate and strategic Warrior. His death sets the tragic path for Reiner’s guilt and Porco’s resentment.',

    'Maria Fritz':
        'The name behind Wall Maria, Maria Fritz was one of the daughters of Ymir Fritz. Her legacy is foundational to the formation of the Eldian Empire.',

    'Marie Dawk':
        'The wife of Nile Dawk, Marie was once romantically linked to Erwin. Her role highlights the human side of those caught between duty and emotion.',

    'Martins Springer':
        'Conny’s father, Martin is transformed into a Titan. His fate is a deeply personal tragedy for Conny and a grim reminder of the cost of war.',

    'Miche Zacharius':
        'A top-tier soldier with an incredible sense of smell, Miche is second only to Levi. His brave stand against the Beast Titan earns respect even in death.',

    'Mikasa\'s father':
        'A quiet and kind man of Asian descent, Mikasa’s father lived peacefully with his family until tragedy struck. His loss is a key moment in Mikasa’s backstory.',

    'Mikasa\'s mother':
        'A descendant of the Azumabito clan, Mikasa’s mother upheld traditional values. Her death marked the end of Mikasa’s innocence and the start of her transformation.',

    'Milieus Zeremski':
        'An ambassador from Marley, Milieus is part of the political elite. His role in diplomacy showcases the careful manipulation of global narratives.',

    'Mina Carolina':
        'A member of the 104th Cadet Corps, Mina is cheerful and competent. Her early death in Trost is one of the first reminders of the war’s brutal cost.',

    'Mitabi Jarnach':
        'A brave and dependable Garrison soldier, Mitabi aids in Eren’s risky mission to seal Trost’s gate. His leadership under pressure is notable.',

    'Moblit Berner':
        'Hange’s loyal assistant, Moblit is cautious and caring. His dedication to Hange and sacrifice during the Colossal Titan attack speak volumes of his quiet heroism.',

    'Moses':
        'The first soldier seen killed by a Titan in the series, Moses’s death sets the grim tone of the story. His mother’s grief highlights the emotional cost of battle.',

    'Moses\'s mother':
        'Her heartbreak over her son’s death introduces viewers to the human consequences of the Titan threat, grounding the story in painful realism.',

    'Mr. Smith':
        'A generic placeholder name, possibly used for background civilians or soldiers. Like many others, he represents the faceless casualties of a relentless war.',

    'Muller':
        'A Marleyan commander with a strategic mind, Muller leads forces during Paradis’s invasion. His pragmatic decisions reflect the burden of leadership in warfare.',

    'Nack Tierce':
        'A brave Survey Corps soldier in the 104th, Nack dies defending Trost. His loyalty adds to the heavy toll the cadets pay during their early missions.',

    'Nambia':
        'One of Marley’s Warrior candidates, Nambia’s brief appearance is emblematic of how the Warrior program raises children to be weapons.',

    'Nanaba':
        'A calm and composed veteran of the Survey Corps, Nanaba shows courage even in the face of horror. Her death by Titans is both brutal and deeply emotional.',

    'Nicholas Lovof':
        'A Marleyan noble, Lovof’s arrogance typifies the disdain many in Marley’s ruling class hold for Eldians, even those loyal to their regime.',

    'Nick':
        'A priest of the Order of the Walls, Nick knows the truth about the Titans in the Walls but is sworn to secrecy. His eventual decision to talk costs him his life.',

    'Nifa':
        'A Survey Corps scout under Hange’s command, Nifa is competent and reliable. Her sudden death at the hands of Kenny’s squad is a shocking moment.',

    'Nile Dawk':
        'The head of the Military Police, Nile is torn between duty and morality. Though once Erwin’s rival, he ultimately acts with conscience and care.',

    'Ogweno':
        'A minor Marleyan soldier who participates in foreign operations. Ogweno’s limited role reflects the scale of Marley’s military campaigns.',

    'Oliver':
        'A Survey Corps soldier present in Paradis’s modernization phase, Oliver helps symbolize the shift toward unity and forward thinking.',

    'Oruo Bozad':
        'A member of Levi’s elite squad, Oruo mimics Levi in speech and manner. Despite his bravado, he’s a skilled soldier who meets a tragic end.',

    'Peaure':
        'A minor figure in the military police or Garrison, Peaure’s brief appearances contribute to the authenticity of a world full of unsung defenders.',

    'Peer':
        'Another lesser-known soldier, Peer’s role highlights the expendability of many in service to a larger cause. His bravery is quietly noted.',

    'Petra\'s father':
        'A grieving man who believed his daughter would marry Levi, Petra’s father shows the personal devastation behind military loss, humanizing the cost of war.',

    'Phil':
        'A Garrison soldier present during the defense of Trost, Phil represents the everyday bravery of soldiers fighting to protect humanity from the Titans.',

    'Porco Galliard':
        'The inheritor of the Jaw Titan after Ymir, Porco is proud and impulsive, yet courageous. His rivalry with Reiner and loyalty to comrades define his arc of sacrifice.',

    'Ralph':
        'A Marleyan soldier involved in escort and intelligence operations, Ralph’s role reflects the broader machinery of Marley’s military infrastructure.',

    'Ramzi':
        'A young refugee with a kind heart, Ramzi’s tragic fate during Eren’s march of destruction starkly illustrates the innocent lives lost in the name of “freedom.”',

    'Rashad':
        'A background character from Marley, Rashad is one of many unseen cogs in the empire’s military and political systems.',

    'Reiner\'s father':
        'A Marleyan man who abandoned Reiner and his mother, his absence fuels Reiner’s desire for acceptance, making him a tragic product of Marley’s racist hierarchy.',

    'Rico Brzenska':
        'A stern and skilled Garrison soldier, Rico shows resolve and tactical sense during the Trost arc. Her leadership helps prevent further loss in a crisis.',

    'Rico Tybur':
        'A member of the Tybur family, Rico symbolizes the nobility’s involvement in shaping global politics, though she remains in the background of major events.',

    'Rod and Uri\'s father':
        'A past king of the Reiss line, his actions set the precedent for the family’s hidden rule and their connection to the Founding Titan.',

    'Rod Reiss':
        'The true king of the Walls before Historia, Rod seeks to preserve the status quo through manipulation. His obsession with power leads to a monstrous transformation.',

    'Roderich':
        'A minor military figure or noble, Roderich’s presence reflects the complex and often corrupted political structures operating behind the scenes.',

    'Roeg':
        'An aide to Kiyomi Azumabito, Roeg represents the diplomatic ties between Paradis and Hizuru. His presence reinforces the fragile nature of international alliances.',

    'Roger':
        'A minor character among the Garrison or Military Police, Roger is one of the many faceless names in a story filled with sacrifice.',

    'Rose Fritz':
        'One of Ymir Fritz’s daughters and namesake of Wall Rose, Rose is part of the Eldian mythos that underpins the world’s history and religion.',

    'Roy':
        'A background soldier in the Marleyan army, Roy contributes silently to the larger war effort without personal recognition.',

    'Ruth D. Kilne':
        'A minor character whose name appears in expanded materials, Ruth exemplifies the lesser-known citizens shaped by the ongoing war.',

    'Asmuel Linke-Jackson':
        'A uniquely named background character, Asmuel adds depth to the world-building, representing individuals impacted by both Marleyan and Eldian legacies.',

    'Sawney':
        'One of the Titans captured for experimentation, Sawney helps advance the Survey Corps’ understanding of Titans—at great personal risk to the researchers.',

    'Sina Fritz':
        'Another daughter of Ymir and namesake of Wall Sina, her legacy is foundational to the three-walled civilization within Paradis.',

    'Stohess District Mayor':
        'A political figure tasked with local governance, the mayor’s cowardice during the Female Titan battle highlights the fear-driven bureaucracy behind the walls.',

    'Sunny Springer':
        'Conny’s younger sibling, Sunny is tragically turned into a Titan during Zeke’s assault. His fate is a devastating blow to Conny’s innocence.',

    'Surma':
        'A brief mention in military documents, Surma represents the countless individuals forgotten in the broader sweep of war.',

    'Talking Titan':
        'A rare Titan capable of speech, it haunts Ilse Langnar. Its human-like behavior offers eerie clues into the true nature of Titans.',

    'Theo Magath':
        'A high-ranking Marleyan commander, Magath is strategic and pragmatic, gradually gaining respect for Eldians. His nuanced leadership contrasts with blind nationalism.',

    'Thomas Wagner':
        'A member of the 104th Cadet Corps, Thomas is one of Eren’s early comrades who dies in Trost. His sudden death is Eren’s first brutal loss in battle.',

    'Tom':
        'A generic name for various unnamed or background figures, representing the anonymity of many who die in silence.',

    'Tom Xaver':
        'A kind and reflective Beast Titan inheritor, Xaver mentors Zeke and deeply influences his worldview. His tragic past adds emotional depth to Marley’s side.',

    'Thomas':
        'Another cadet lost during the initial Trost breach, Thomas’s quick death underscores the terrifying speed and unpredictability of war.',

    'Udo':
        'A Marleyan Warrior candidate, Udo is intelligent and observant. His death in the Liberio attack is sudden and unjust, emphasizing war’s indiscriminate cruelty.',

    'Ulkin Reiss':
        'An uncle in the Reiss family line, Ulkin is part of the royal bloodline tied to the Founding Titan. His name contributes to the mystique of the Reiss lineage.',

    'Uri Reiss':
        'Rod’s brother and former Founding Titan holder, Uri is gentle and philosophical. His pacifism contrasts with his family’s history of dominance.',

    'Wald':
        'A generic figure among the military ranks or nobility, Wald’s presence contributes to the vast ensemble of supporting characters in the series.',

    'Waltz':
        'Another lesser-known character, Waltz may be found in supplementary materials or extended media, adding breadth to the world’s lore.',

    'Willy Tybur':
        'The head of the Tybur family, Willy orchestrates a declaration of war on Paradis. A master of political theater, his speech and sacrifice shape global opinion.',

    'Wilm':
        'A minor character, possibly military, Wilm’s presence adds background depth to Marley or Paradis operations.',

    'Yan':
        'A Survey Corps technician, Yan plays a key support role in developing equipment. His behind-the-scenes work helps keep the frontlines moving.',

    'Yelena':
        'A fervent supporter of Zeke and member of the Anti-Marleyan Volunteers, Yelena is zealous, composed, and unpredictable—serving as a wildcard in the shifting alliances.',

    'Ymir':
        'A mysterious girl who gains the power of the Titans from a devil or god, Ymir is the origin of all Titans. Her tragic enslavement fuels the Eldian curse and the world’s long-lasting conflict.',

    'Zofia':
        'A Warrior candidate from Marley, Zofia is blunt and intelligent. Her premature death in the Liberio attack reflects the cruel unpredictability of war.',
  };

  return descriptions[name] ?? 'Description not available for this character.';
}
