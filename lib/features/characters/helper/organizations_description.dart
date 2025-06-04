// cspell:disable

String getDescription(String name) {
  // print('Looking up description for: ${name.toLowerCase()}');
  Map<String, String> descriptions = {
    'Scout Regiment':
        'The Survey Corps (調査兵団 Chōsa Heidan?) was the branch of the Military most actively involved in direct Titan combat, Titan study, human expansion, and outside exploration. They had the best soldiers who are the most skilled in using vertical maneuvering equipment. Despite having little success, they still symbolized the "hope of mankind" with their insignia being known as the "Wings of Freedom." They hoped that someday, their efforts will change the world and they will be able to recover what has been taken away from humanity.',

    'Anti-Marleyan Volunteers':
        'The Anti-Marleyan Volunteers (反マーレ義勇兵 Han Māre Giyū-hei?) were a group of soldiers who previously served in the Marleyan military, but decided to join Zeke Yeager in order to free the Eldians before that activation of the Rumbling.\nThe members of the Anti-Marleyan Volunteers seem to possess a severe grudge against Marley, in part because of the empire\'s aggressive policy of expansion and the take over of their native lands. Before their introduction to Zeke Yeager,',
    'Berg Newspapers':
        'The Berg Newspapers were responsible for the compilation and distribution of information approved by the Royal Government for the public. While they mainly distribute newspapers to the people of the Walls, they also deal in other forms of information, such as wanted posters.[1]\nUntil the overthrowing of the Royal Government, the newspaper was required to publish only information that supported the motives of the government, regardless of the truth or lack thereof. Those who would not uphold this obligation would be taken away by the Royal Government.[2]',
    'Cadet Corps':
        'The Training Corps (訓練兵団 Kunren Heidan?) is the branch of the military dedicated to training and educating trainees to become members of the three main military branches.Only the top ten graduates can apply to the Military Police Brigade, giving them the privilege of living in the Inner District. The other graduates can only choose between joining the Survey Corps and the Garrison.The 104th Training Corps is the only graduating class introduced in the series and the Southern Division contains nearly all of the central characters. It was active during the years 847 through 850 when the remaining recruits graduated.',
    'The Garrison Regiment':
        'The Garrison (駐屯兵団 Chūton Heidan?) is the largest of the Military divisions which protects and maintains order within the Walls. Given the fatality rate of the Survey Corps and the limited entry of the Military Police Brigade, most soldiers join the Garrison. As they often have close contact with both Titans and human civilians, they are proficient over a wide variety of tasks such as Titan combat (defensive battles), cannons, security detail, crowd control, and rifle usage.After the revelation of the true nature of the Titans, the Garrison was responsible for defending the coast of Paradis Island from Marley and foreign aggressions.\n\'We may belong to different nations and races!! But I ask any of you who do not wish to die to lend me your strength!! Please... I want to ensure our future together!! I want you to fight with me!! Against the devils on Paradis!!',
    'Global Alliance':
        'The Global Alliance (世界連合 Sekai Rengō?)[2] is a military union of a multitude of nations united in their efforts to prevent the world\'s destruction at the hands of Eren Yeager and wiping out all Eldians of Paradis Island.',

    'Yeagerists':
        'The Yeagerists (イェーガー派 Yēgā-ha?) were a rebel faction comprised of civilians and soldiers from the Paradis military who supported Eren Yeager\'s radical plan to activate the Rumbling and establish the "New Eldian Empire." They orchestrated a military coup to seize control within the Walls, aiming to reunite Eren with his half-brother Zeke to harness the Founding Titan\'s power. Their actions were driven by a belief in Eldian supremacy and the necessity of extreme measures to ensure their nation\'s survival.',

    'Marley Public Security':
        'The Marley Public Security was a paramilitary organization responsible for maintaining order within Eldian internment zones like Liberio on the continental mainland. Their duties included restricting movement in and out of the ghettos, suppressing Eldian dissident activities, and deporting undesirable Eldians to Paradis Island to be transformed into Pure Titans. Armed and authoritative, they played a crucial role in enforcing Marley\'s oppressive policies against Eldians.',

    'Marleyan military':
        'The Marleyan military (マーレ軍 Māre-gun) was the combined armed forces of Marley, consisting primarily of the Marleyan army and navy. Their strength was bolstered by the infamous Warrior Unit, composed of Eldians granted the power of the Titans to serve Marley\'s interests. Prior to their near-annihilation during the Rumbling in the year 854, the military was a dominant force, utilizing both conventional forces and Titan shifters to expand and maintain Marley\'s global influence.',

    'Military Police Regiment':
        'The Military Police Brigade was the primary police force within human territory inside the Walls, tasked with maintaining order and serving as the king\'s guard. Stationed mainly within the innermost Wall Sina, they were responsible for tax collection, land distribution, and protecting the royal family. Due to their distance from the front lines, they often carried firearms instead of vertical maneuvering equipment. The Brigade was notorious for corruption and abuse of power, exploiting their position for personal gain.',

    'Order of the Walls':
        'The Order of the Walls was a religious organization that worshipped the Walls as sacred entities, believing them to be divine protection bestowed upon humanity. They held significant influence within society, often opposing any actions or inquiries that threatened the sanctity of the Walls. The Order maintained strict secrecy about the true nature of the Walls, including the Titans embedded within them, and were known to take extreme measures to suppress dissent and preserve their doctrines.',

    'Reeves Company':
        'The Reeves Company (リーブス商会 Rībusu Shōkai?) was a merchant organization led by the Reeves family, operating primarily in the Trost District. Initially focused on profit and maintaining influence through connections with the Military Police Brigade, the company underwent a transformation under the leadership of Flegel Reeves following his father\'s death. Aligning with the Survey Corps, the Reeves Company played a pivotal role in supporting the military coup against the corrupt royal government, aiding in the restoration of order within the Walls.',

    'Restorationists':
        'The Restorationists (エルディア復権派 Erudia Fukken-ha?) were a radical group of Eldians in Liberio who sought to overthrow Marley and restore Eldia as a world power. They aimed to achieve this by obtaining the Founding Titan and using its power to liberate their people. The group was founded by remnants of the Fritz royal family and was characterized by their deep resentment of Marley\'s oppression. Ultimately, the Restorationists were discovered and brutally suppressed by Marley\'s Public Security Authorities, with many members executed for treason.',

    'Royal Government':
        'The Royal Government (王政府 Ōseifu) was the ruling body governing the people within the Walls. For over a century, the false Fritz family served as the public face of the monarchy, while the true royal lineage, the Reiss family, secretly held power. Operating from the capital Mitras, the government maintained strict control over society, often suppressing information and dissent. Following a successful coup d\'état, the old regime was dismantled, leading to a military-led government with Historia Reiss, of the true royal bloodline, ascending as the new queen.',

    'Titan Biology Research Society':
        'The Titan Biology Research Society was a scientific organization dedicated to studying the nature and origins of Titans. Their research aimed to uncover the secrets behind Titan transformations, abilities, and the connection between Titans and Eldians. Operating under strict secrecy due to the sensitive nature of their work, the society contributed valuable insights that informed military strategies and deepened the understanding of Titan physiology within the Walls.',

    'Warriours':
        'The Warriors were an elite unit within the Marleyan military, composed of Eldian individuals chosen to inherit the power of the Titans. Trained from a young age, these Warriors served as Marley\'s primary weapon in maintaining dominance over other nations. Despite their status, Warriors and their families lived under strict surveillance and discrimination. Their roles often placed them in morally complex situations, as they were used to oppress their own people in service of Marley\'s imperial ambitions.',
  };
  return descriptions[name] ?? 'Description not available for this character.';
}
