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
  callipyge = Word.create(name: 'Callipyge', cat: 'adj.', day: '2021-03-01',
                          origin: "Adjectif faisant allusion à un type de statues antiques de Vénus Callipyge : elles représentent Vénus soulevant son péplos pour se mirer dans l'eau et regarder ses fesses, nécessairement superbes par-dessus l'épaule.",
                          definition: "De nos jours, Callipyge est utilisé pour parler d'une personne qui a de belles fesses, harmonieusement arrondies.",
                          url: urls[0])

  gadru = Word.create(name: 'Gadru·e', cat: 'adj.', day: '2021-03-02',
                      origin: "Cet adjectif picard, qui à l’origine décrivait un petit enfant en bonne santé, a évolué dans le temps. On dit d’un tout jeune enfant qui est vif, éveillé, gaillard, bien portant, qu’il est bien gadru. ",
                      definition: "Gadru est maintenant utilisé comme un substantif pour décrire des gens qui sont en pleine forme ou bien des bons vivants ; quelque chose de fort et/ou avec une bonne vitalité.",
                      url: urls[1])

  vespéral = Word.create(name: 'Vespéral·e', cat: 'adj.', day: '2021-03-03',
                        origin: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies.',
                        definition: 'Plus couramment : qui se déroule, qui a lieu le soir. Une clarté vespérale, des rayons vespéraux.',
                        url: urls[2])

  quintessence = Word.create(name: 'Quintessence', cat: 'n.f.', day: '2021-03-04',
                      origin: "Utilisé pour nommer de l'extrait le plus concentré ou le plus délicat. Utilisé aussi pour nommer la partie la plus subtile d'une substance.",
                      definition: "Généralement, quintessence désigne ce qu'il y a de meilleur et de plus raffiné dans quelque chose.",
                      url: urls[3])

  mirliflore = Word.create(name: 'Mirliflore', cat: 'n.m.', day: '2021-03-05',
                    origin: "Un mirliflore est un jeune homme très porté sur son élégance et sur son apparence, \"mirliflor\" comme les mille fleurs de son parfum.",
                    definition: "Aujourd'hui, ce terme un peu vieilli décrit un jeune homme agissant de façon fière voire hautaine.",
                    url: urls[4])

puts 'Lampadophore, haptique, pabullophobie, lénifier, faribole ...'
  lampadophore = Word.create(name: 'Lampadophore', cat: 'adj.', day: '2021-03-06',
                      origin: 'Rôle qui peut être décisif dans certaines situation, la personne lampadophore pouvait donnait le signal de départ d\'une course ou d\'un sport.',
                      definition: "De façon plus globale, lampadophore désigne être porteur·se de flambeau.",
                      url: urls[5])

  haptique = Word.create(name: 'Haptique', cat: 'n.f.', day: '2021-03-07',
                      origin: "L'haptique est une science comme l'optique ou l'acoustique, mais elle décrit la science liée à la sensation du toucher.",
                      definition: "Haptique évoque surtout le ressenti produit au niveau du cerveau lors d'un contact avec sa peau.",
                      url: urls[6])

  pabullophobie = Word.create(name: 'Pabullophobie', cat: 'n.f', day: '2021-03-08',
                    origin: "Comme tout mot finissant par -phobie, la Pabullophobie est une peur.",
                    definition: "En l'occurence, c'est la peur des brouettes.",
                    url: urls[7])

  lénifier = Word.create(name: 'Lénifier', cat: 'vb.', day: '2021-03-09',
                    origin: "Ce verbe transitif vient du \"lénitif\" un médicament utilisé pour apaiser quelqu'un. ",
                    definition: "Maintenant lénifier est utilisé pour signifier calmer, adoucir, apaiser une peine. Attention, lénifier peut également signifier amollir quelqu'un.",
                    url: urls[8])

  faribole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-03-10',
                    origin: "Une faribole est une phrase légère, peu sérieuse. Une faribole n'a que peu de valeur, elle est frivole et peu être vaine de sens.",
                    definition: "La faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
                    url: urls[9])

  # new = Word.create(name: '', cat: '', day: '',
  #                   origin: '',
  #                   definition: '',
  #                   url: urls[])
