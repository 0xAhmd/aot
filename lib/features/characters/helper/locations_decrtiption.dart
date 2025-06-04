String getDescription(String name) {
  const Map<String, String> locationDescriptions = {
    "Basement":
        "Hidden beneath the Yeager family’s home in Shiganshina, the basement held the secrets of the Titans and the outside world. It was the key to understanding the true history of humanity. Its discovery marked a turning point in the war. Once a symbol of mystery, it became a gateway to truth.",

    "Braus Stables":
        "Located in the quiet village of Dauper, the Braus Stables is home to the humble Braus family. It’s where Sasha Braus grew up and where Gabi and Falco took refuge. The stables reflect the simple, peaceful life outside the walls. It became a small sanctuary amidst growing chaos.",

    "Calaneth District":
        "Calaneth is an eastern district within Wall Rose. It was a site of Titan breach during early attacks. Despite its vulnerability, it played a part in evacuations and military operations. Its people experienced the horrors of sudden Titan appearances.",

    "Capital Mitras":
        "Mitras is the royal capital located at the heart of Wall Sina. It’s home to the noble class and government officials. Lavish and protected, it represents the social divide within the Walls. Beneath its grandeur lies corruption and political manipulation.",

    "Dauper":
        "A quiet village in the south of Wall Rose, Dauper is mostly known for being Sasha Braus’ hometown. The area is rich in natural beauty and rural charm. Its peaceful existence contrasts with the larger conflicts of the series. It symbolizes the lives lost in the wake of war.",

    "Ehrmich District":
        "Situated in Wall Sina, Ehrmich was one of the strategic locations used during military operations. Though not heavily featured, it saw increased activity during times of political unrest. It served as a backdrop to internal power struggles.",

    "Eldia":
        "Eldia was once a vast empire ruled by the Subjects of Ymir. Now a fallen kingdom, its remnants exist on Paradis Island. Its legacy is central to the Titan curse and the world’s hatred. It remains a land of both tragedy and power.",

    "Elsnir Castle":
        "A remote, decrepit castle located within Wall Rose, Elsnir Castle was once used for storage and later as a temporary base. It became significant during the Beast Titan’s early attacks. The isolated location made it ideal for ambushes and suspenseful battles.",

    "Forest of Giant Trees":
        "This towering forest served as a tactical battlefield during Titan-related operations. The immense trees allowed vertical maneuvering for the ODM gear. It was used to trap and transport Titans. Its eerie stillness added to the show's tension.",

    "Fort Salta":
        "Located in Marley, Fort Salta was a major military base and a strategic stronghold. It played a crucial role in the final conflict between Marleyans and Eldians. Its fortified structure and artillery reflect the global scale of the war. The site became a focal point for humanity’s final stand.",

    "Fort Slava":
        "This Marleyan fortress served as a battlefield in the war against the Mid-East Allied Forces. It marked the anime's shift to a more modern warfare setting. Fort Slava was heavily fortified and witnessed the destructive power of the Titans. It showcased the brutal efficiency of Marley’s military.",

    "Hizuru":
        "Hizuru is an Eastern nation known for its technological advancement and political ties to Paradis Island. It is home to the Azumabito clan. Despite its outward diplomacy, Hizuru’s interest in Paradis is largely self-serving. The culture and attire contrast starkly with the Marleyan and Eldian world.",

    "Industrial City":
        "One of the major manufacturing hubs, the Industrial City helped produce gear and weapons for the military. Its smokestacks and factories fueled the Walls' defense capabilities. Though not often shown, it represents the evolution of war within the Walls.",

    "Jinae":
        "A small southern village within Wall Rose, Jinae is where many cadets, including Eren’s group, were first stationed. The village exemplifies the simple life within the Walls. It serves as a reminder of what’s at stake in the war against Titans.",

    "Karifa":
        "Karifa is a Marleyan territory mentioned briefly in the final season. It reflects the widespread control and reach of the Marleyan empire. Though little is shown, its presence hints at Marley’s global dominance and its many military fronts.",

    "Krolva District":
        "Located in the western part of Wall Rose, Krolva District is sparsely detailed. It was likely involved in evacuation or supply lines during Titan invasions. Like many minor districts, it underscores how vast and vulnerable the human territory was.",

    "Lakua":
        "A lesser-known Marleyan location, Lakua was part of the continental mainland. It was referenced during operations against Paradis. Its role emphasizes how widespread the global stage of the conflict had become. It hints at Marley’s international presence.",

    "Liberio":
        "Liberio is a Marleyan internment zone for Eldians, including the Warrior candidates. It’s where Reiner, Gabi, and others grew up. Surrounded by walls, it mirrors Paradis' oppression in reverse. Its streets tell a story of forced loyalty and identity conflict.",

    "Marley":
        "Marley is one of the most powerful nations in the world, known for its advanced military and use of Titans. It ruled over Eldians through fear and control. Marley’s imperialism and history of war drive much of the series’ global conflict. It represents tyranny masked as order.",

    "Mid-East Allied Forces":
        "A coalition of nations at war with Marley, the Mid-East Allied Forces were introduced in Season 4. Their defeat marked Marley’s continued dominance. Their presence expanded the series beyond the Titan-focused conflict. They symbolize the world’s complexity and military rivalries.",
    "Odel":
        "A lesser-known village within Wall Rose, Odel appears during the training arc. Though it plays a small role, it reflects the many quiet settlements threatened by Titans. Its inclusion emphasizes the broad scope of humanity’s struggle for survival.",

    "Odiha":
        "A coastal city in Marley, Odiha served as a critical evacuation and launch point for the alliance’s counterattack. Its docks were the stage for strategic planning and sacrifice. Though not glamorous, Odiha was a beacon of hope amid escalating war.",

    "Orvud District":
        "Located in the north of Wall Sina, Orvud was the chosen site for the battle against the monstrous Rod Reiss Titan. Its people were evacuated in a rare moment of transparency by the government. The battle there showed a shift in military leadership.",

    "Paradis Island":
        "The central setting of the series, Paradis Island is the last refuge of the Eldian people. Encased by three walls, its isolation preserved secrets and bred ignorance. Its transformation mirrors the characters' journey from fear to defiance. A land of both sanctuary and captivity.",

    "Ragako":
        "A quiet village south of Wall Rose, Ragako was the hometown of Connie Springer. It became infamous when its residents were turned into Titans by Zeke. The tragic fate of Ragako underscored the cruelty of Marley’s tactics and the personal stakes of war.",

    "Sea":
        "To the people of Paradis, the sea was a symbol of freedom and wonder. For Eren, it marked both awe and the beginning of a broader conflict. It represents the blurred line between dreams and reality. A calm expanse that hides deeper storms.",

    "Shiganshina District":
        "A southern outpost on Wall Maria, Shiganshina was home to Eren, Mikasa, and Armin. Its fall marked the beginning of humanity’s desperate fight for survival. It later became the site of a pivotal reclamation battle. A place of both loss and revelation.",

    "Snate":
        "Briefly mentioned during early episodes, Snate is a small village within Wall Rose. It typifies the many quiet towns that faced devastation without warning. Its lack of prominence mirrors the many untold tragedies within the series.",

    "Stohess District":
        "Located in the east of Wall Sina, Stohess was the setting for Annie Leonhart’s transformation and battle with Eren. Its collapse revealed the fragility of peace inside the inner walls. The battle there exposed deep conspiracies and hidden powers.",

    "Trost District":
        "A southern district of Wall Rose, Trost was the first major battleground where Eren displayed his Titan powers. It was a critical moment in regaining hope. Trost symbolizes humanity’s resilience and the beginning of its counteroffensive.",

    "Underground":
        "A dark slum beneath the capital, the Underground City harbored outcasts and criminals. It was the childhood home of Levi Ackerman. With its filth and desperation, it stood in stark contrast to the luxury above. A place born from inequality and abandonment.",

    "Underground Chapel":
        "Hidden beneath the capital, this chapel was used by the Reiss family for Titan rituals. It was the setting for Eren’s near-sacrifice and his eventual refusal to perpetuate the cycle. The chapel's eerie stillness underscores the weight of inherited sins.",

    "Utgard Castle":
        "An old ruin within Wall Rose, Utgard Castle was the site of a major Titan assault on the Scouts. Its crumbling walls bore witness to acts of heroism and shocking revelations. The night spent there marked a major turning point for many characters.",

    "Utopia District":
        "A northern district within Wall Rose, Utopia saw limited action in the main series. Like many districts, it served as a reminder of humanity’s fragile geography. Its name ironically contrasts with the harsh reality of life behind the walls.",

    "Walls":
        "The three concentric Walls—Maria, Rose, and Sina—defined the boundaries of human life on Paradis. Built from hardened Titans, they protected and imprisoned simultaneously. Their mysterious origin shaped much of the series’ central mystery.",

    "Yarckel District":
        "A western district of Wall Sina, Yarckel was involved in military operations during Wall Maria’s recapture. Though minor, it reflects the extent of coordinated effort required for large-scale defense. Like many such districts, its people lived in quiet uncertainty.",
  };
  return locationDescriptions[name] ??
      'Description not available for this character.';
}
