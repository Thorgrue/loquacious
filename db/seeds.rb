puts 'Cleaning database...'

  Word.destroy_all

puts 'Creating words...'

  urls = [
        "https://cdn.pixabay.com/photo/2017/08/10/02/05/tiles-shapes-2617112_1280.jpg",
        "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2020/07/Set-Of-Watercolor-Eucalyptus-Leaves-9.jpg",
        "https://cdn.pixabay.com/photo/2018/06/22/11/57/lavender-3490599_1280.jpg",
        "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2020/09/Risograph-for-Procreate-3-scaled.jpg",
        "https://thumbs.dreamstime.com/z/seamless-pattern-ginkgo-biloba-leaves-linear-drawing-watercolor-spots-can-be-used-wallpaper-fills-background-textile-web-177004887.jpg",
        "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2021/02/Alcohol-Ink-Texture-14-3.jpg",
        "https://cutewallpaper.org/21/tumblr-background-watercolor/Watercolor-Pattern-at-GetDrawings.com-Free-for-personal-.jpg",
        "https://wallpaperforu.com/wp-content/uploads/2020/07/yellow-aesthetic-wallpaper-20072002141919.jpg",
        "https://www.designcuts.com/wp-content/uploads/2020/07/Botanical-Seamless-Patterns-5.jpg",
        "https://eskipaper.com/images/free-pattern-backgrounds-1.jpg",
          ]

  callipyge = Word.create(name: 'Callipyge', cat: 'adj.', day: '2021-02-22',
                          origin: "Adjectif faisant allusion à un type de statues antiques de Vénus Callipyge : elles représentent Vénus soulevant son péplos pour se mirer dans l'eau et regarder ses fesses, nécessairement superbes par-dessus l'épaule.",
                          definition: "De nos jours, Callipyge est utilisé pour parler d'une personne qui a de belles fesses, harmonieusement arrondies.",
                          url: urls[0])

  gadru = Word.create(name: 'Gadru', cat: 'adj.', day: '2021-02-23',
                      origin: "Cet adjectif picard, qui à l’origine décrivait un petit enfant en bonne santé, a évolué dans le temps. On dit d’un tout jeune enfant qui est vif, éveillé, gaillard, bien portant, qu’il est bien gadru. ",
                      definition: "Gadru est maintenant utilisé comme un substantif pour décrire des gens qui sont en pleine forme ou bien des bons vivants ; quelque chose de fort et/ou avec une bonne vitalité.",
                      url: urls[1])

  vespéral = Word.create(name: 'Vespéral', cat: 'adj.', day: '2021-02-24',
                        origin: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies.',
                        definition: 'Plus couramment : qui se déroule, qui a lieu le soir. Une clarté vespérale, des rayons vespéraux.',
                        url: urls[2])

  callip = Word.create(name: 'Callip', cat: 'adj.', day: '2021-02-25',
                      origin: "Adjectif faisant allusion à un type de statues antiques de Vénus Callipyge : elles représentent Vénus soulevant son péplos pour se mirer dans l'eau et regarder ses fesses, nécessairement superbes par-dessus l'épaule.",
                      definition: "De nos jours, Callipyge est utilisé pour parler d'une personne qui a de belles fesses, harmonieusement arrondies.",
                      url: urls[3])

  gadr = Word.create(name: 'Gadr', cat: 'adj.', day: '2021-02-26',
                    origin: "Cet adjectif picard, qui à l’origine décrivait un petit enfant en bonne santé, a évolué dans le temps. On dit d’un tout jeune enfant qui est vif, éveillé, gaillard, bien portant, qu’il est bien gadru. ",
                    definition: "Gadru est maintenant utilisé comme un substantif pour décrire des gens qui sont en pleine forme ou bien des bons vivants ; quelque chose de fort et/ou avec une bonne vitalité.",
                    url: urls[4])

  vespér = Word.create(name: 'Vespér', cat: 'adj.', day: '2021-02-27',
                      origin: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies.',
                      definition: 'Plus couramment : qui se déroule, qui a lieu le soir. Une clarté vespérale, des rayons vespéraux.',
                      url: urls[5])

  vesp = Word.create(name: 'Vesp', cat: 'adj.', day: '2021-02-28',
                      origin: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies.',
                      definition: 'Plus couramment : qui se déroule, qui a lieu le soir. Une clarté vespérale, des rayons vespéraux.',
                      url: urls[6])

  ves = Word.create(name: 'Ves', cat: 'adj.', day: '2021-03-01',
                    origin: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies.',
                    definition: 'Plus couramment : qui se déroule, qui a lieu le soir. Une clarté vespérale, des rayons vespéraux.',
                    url: urls[7])

  gad = Word.create(name: 'Gad', cat: 'adj.', day: '2021-03-02',
                    origin: "Cet adjectif picard, qui à l’origine décrivait un petit enfant en bonne santé, a évolué dans le temps. On dit d’un tout jeune enfant qui est vif, éveillé, gaillard, bien portant, qu’il est bien gadru. ",
                    definition: "Gadru est maintenant utilisé comme un substantif pour décrire des gens qui sont en pleine forme ou bien des bons vivants ; quelque chose de fort et/ou avec une bonne vitalité.",
                    url: urls[8])

  call = Word.create(name: 'Call', cat: 'adj.', day: '2021-03-03',
                    origin: "Adjectif faisant allusion à un type de statues antiques de Vénus Callipyge : elles représentent Vénus soulevant son péplos pour se mirer dans l'eau et regarder ses fesses, nécessairement superbes par-dessus l'épaule.",
                    definition: "De nos jours, Callipyge est utilisé pour parler d'une personne qui a de belles fesses, harmonieusement arrondies.",
                    url: urls[9])

  # new = Word.create(name: '', cat: '', day: '',
  #                   origin: '',
  #                   definition: '',
  #                   url: urls[])
