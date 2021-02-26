puts 'Cleaning database...'

  Word.destroy_all

puts 'Creating words...'

  urls = [
        "https://cdn.pixabay.com/photo/2016/08/18/14/25/watercolour-texture-1603104_1280.jpg",
        "https://cdn.pixabay.com/photo/2017/08/10/02/05/tiles-shapes-2617112_1280.jpg",
        "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2020/07/Set-Of-Watercolor-Eucalyptus-Leaves-9.jpg",
        "https://www.designcuts.com/wp-content/uploads/2020/07/Botanical-Seamless-Patterns-5.jpg",
        "https://cdn.pixabay.com/photo/2016/04/08/19/51/watercolor-1316867_1280.jpg",
        "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2020/09/Risograph-for-Procreate-3-scaled.jpg",
        "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2021/02/Alcohol-Ink-Texture-14-3.jpg",
        "https://cutewallpaper.org/21/tumblr-background-watercolor/Watercolor-Pattern-at-GetDrawings.com-Free-for-personal-.jpg",
        "https://wallpaperforu.com/wp-content/uploads/2020/07/yellow-aesthetic-wallpaper-20072002141919.jpg",
        "https://eskipaper.com/images/free-pattern-backgrounds-1.jpg",
          ]

puts 'Callipyge, gadru, vespéral, quintessence, mirliflore...'
  callipyge = Word.create(name: 'Callipyge', cat: 'adj.', day: '2021-02-21',
                          definition: "Adjectif faisant allusion à un type de statues antiques de Vénus Callipyge : elles représentent Vénus soulevant son péplos pour se mirer dans l'eau et regarder ses fesses, nécessairement superbes par-dessus l'épaule. De nos jours, Callipyge est utilisé pour parler d'une personne qui a de belles fesses, harmonieusement arrondies.",
                          example: "Même ne me concentrant, je ne peux dire qui de vous deux est le•a plus callipyge !",
                          url: urls[0])

  gadru = Word.create(name: 'Gadru·e', cat: 'adj.', day: '2021-02-22',
                      definition: "Cet adjectif picard, qui à l'origine décrivait un petit enfant en bonne santé, a évolué dans le temps. On dit d’un tout jeune enfant qui est vif, éveillé, gaillard, bien portant, qu’il est bien gadru. Gadru•e peut décrit quelqu'un en pleine forme ou bon vivant.",
                      example: "A 11 ans, elle fait 1200m de dénivelé en 3h ? Elle est bien gadrue !",
                      url: urls[1])

  vespéral = Word.create(name: 'Vespéral·e', cat: 'adj.', day: '2021-02-23',
                        definition: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies. Plus couramment, on qualifie de vespérale une chose qui se déroule ou qui a lieu le soir.',
                        example: "La clarté vespérale nimbait le salon, rendant la raclette encore plus appétissante.",
                        url: urls[2])

  quintessence = Word.create(name: 'Quintessence', cat: 'n.f.', day: '2021-02-24',
                      definition: "Ce mot est utilisé pour nommer de l'extrait le plus concentré ou le plus délicat. Il est aussi utilisé pour nommer la part la plus subtile d'une substance. Plus généralement aujourd'hui, quintessence désigne la partie la plus raffinée, la meilleure.",
                      example: "La quintessence du beauf se trouve dans son célèbre combo claquettes/chaussettes.",
                      url: urls[3])

  mirliflore = Word.create(name: 'Mirliflore', cat: 'n.m.', day: '2021-02-25',
                    definition: "Un mirliflore est un jeune homme très porté sur son élégance et sur son apparence, \"mirliflor\" comme les \"mille fleurs\" de son parfum. Aujourd'hui, ce terme un peu vieilli décrit un jeune homme agissant de façon fière voire hautaine.",
                    example: "Le mirliflore lança un regard rapide à la file d'attente et la contourna pour s'adresser directement au guichet.",
                    url: urls[4])

puts 'Lampadophore, haptique, pabullophobie, lénifier, faribole ...'
  lampadophore = Word.create(name: 'Lampadophore', cat: 'adj.', day: '2021-02-26',
                      definition: "Rôle qui peut être décisif dans certaines situation, la personne lampadophore pouvait donner le signal de départ d\'une course ou d\'un sport. De façon plus globale, lampadophore désigne être porteur·se de flambeau.",
                      example: "Bon, pour la suite du rituel, il faut un cercle de chamans lampadophore, mettez-vous autour du pentacle.",
                      url: urls[5])

  haptique = Word.create(name: 'Haptique', cat: 'n.f.', day: '2021-02-27',
                      definition: "L'haptique est une science comme l'optique ou l'acoustique, mais elle décrit la science liée à la sensation du toucher. Haptique évoque surtout le ressenti produit au niveau du cerveau lors d'un contact avec sa peau.",
                      example: "Tu fais quoi samedi ? Jserais dispo pour une démo de science haptique si ça te chante.",
                      url: urls[6])

  pabullophobie = Word.create(name: 'Pabullophobie', cat: 'n.f', day: '2021-02-28',
                    definition: "Comme tout mot finissant par -phobie, la Pabullophobie est une peur. Il s'agit, en l'occurence, de la peur des brouettes.",
                    example: "J'ai cherché un peu sur le net, il semblerait que personne ne soit jamais mort de sa pabullophobie.",
                    url: urls[7])

  lénifier = Word.create(name: 'Lénifier', cat: 'vb.', day: '2021-03-01',
                    definition: "Ce verbe transitif vient du \"lénitif\", un médicament utilisé pour apaiser un patient. Maintenant, lénifier est utilisé pour signifier calmer, adoucir, apaiser une peine. Attention, lénifier peut également signifier amollir quelqu'un.",
                    example: "Tu es malade ? Est-ce qu'une demi-douzaine de cookies pourrait te lénifier ?",
                    url: urls[8])

  faribole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-03-02',
                    definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
                    example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
                    url: urls[9])

  # new = Word.create(name: '', cat: '', day: '',
  #                   definition: '',
  #                   example: '',
  #                   url: urls[])
