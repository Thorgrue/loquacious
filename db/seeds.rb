require 'csv'

puts 'Cleaning database...'

  Word.destroy_all


csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath1    = 'words.csv'
filepath2    = 'urls.csv'

puts 'Creating backgrounds...'
urls = []

CSV.foreach(filepath2, csv_options) do |row|
  puts "- #{row['description']}"
  urls << row['url']
end

puts 'Creating words...'
i = 0
day = Date.new(2021, 05, 5)

CSV.foreach(filepath1, csv_options) do |row|
  puts "- #{row['name']}"
  Word.create(name: row['name'], cat: row['cat'], definition: row['definition'], example: row['example'], url: urls[i], day: day)
  i < 15 ? i = i+1 : i = 0
  day = day + 1.day
end



# urls = [
#   # 0) arc-en-ciel
#     "https://cdn.europosters.eu/image/1300/wall-murals/modern-art-rainbow-416x254-cm-130g-m2-vlies-non-woven-i51875.jpg",
#   # 1) plante grasse
#     "https://images.unsplash.com/photo-1459664018906-085c36f472af?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80",
#   # 2) traces aquarelle
#     "https://cdn.pixabay.com/photo/2016/04/08/19/51/watercolor-1316867_1280.jpg",
#   # 3) écorce
#     "https://images.unsplash.com/photo-1519606247872-0440aae9b827?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
#   # 4) alcool
#     "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2021/02/Alcohol-Ink-Texture-14-3.jpg",
#   # 5) tuiles
#     "https://cdn.pixabay.com/photo/2017/08/10/02/05/tiles-shapes-2617112_1280.jpg",
#   # 6) palmier
#     "https://images.unsplash.com/photo-1484506097116-1bcba4fa7568?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80",
#   # 7) plantes corail
#     "https://www.designcuts.com/wp-content/uploads/2020/07/Botanical-Seamless-Patterns-5.jpg",
#   # 8) marbré
#     "https://images.unsplash.com/photo-1496504175726-c7b4523c7e81?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1990&q=80",
#   # 9) watercolor
#     "https://cdn.pixabay.com/photo/2016/08/18/14/25/watercolour-texture-1603104_1280.jpg",
#   # 10) plage
#     "https://images.unsplash.com/photo-1524946274118-e7680e33ccc5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80",
#   # 11) lemons
#     "https://wallpaperforu.com/wp-content/uploads/2020/07/yellow-aesthetic-wallpaper-20072002141919.jpg",
#   # 12) painted canva
#     "https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80",
#   # 13) plantes aquarelle
#     "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2020/07/Set-Of-Watercolor-Eucalyptus-Leaves-9.jpg",
#   # 14) formes abstraites
#     "https://s8v8k3v9.stackpathcdn.com/wp-content/uploads/2020/09/Risograph-for-Procreate-3-scaled.jpg",
#   # 15) tails aquarelle
#     "https://cutewallpaper.org/21/tumblr-background-watercolor/Watercolor-Pattern-at-GetDrawings.com-Free-for-personal-.jpg"
#         ]



# puts 'Callipyge, gadru, vespéral, quintessence, mirliflore...'
#   callipyge = Word.create(name: 'Callipyge', cat: 'adj.', day: '2021-04-01',
#                           definition: "Adjectif faisant allusion à un type de statues antiques de Vénus Callipyge : elles représentent Vénus soulevant son péplos pour se mirer dans l'eau et regarder ses fesses, nécessairement superbes par-dessus l'épaule. De nos jours, Callipyge est utilisé pour parler d'une personne qui a de belles fesses, harmonieusement arrondies.",
#                           example: "Même ne me concentrant, je ne peux dire qui de vous deux est le•a plus callipyge !",
#                           url: urls[0])

#   gadru = Word.create(name: 'Gadru·e', cat: 'adj.', day: '2021-04-02',
#                       definition: "Cet adjectif picard, qui à l'origine décrivait un petit enfant en bonne santé, a évolué dans le temps. On dit d’un tout jeune enfant qui est vif, éveillé, gaillard, bien portant, qu’il est bien gadru. Gadru•e peut décrit quelqu'un en pleine forme ou bon vivant.",
#                       example: "A 11 ans, elle fait 1200m de dénivelé en 3h ? Elle est bien gadrue !",
#                       url: urls[1])

#   vespéral = Word.create(name: 'Vespéral·e', cat: 'adj.', day: '2021-04-03',
#                         definition: 'Vespéral pouvait désigner, dans la lithurgie catholique, un livre contenant les prières du soir, les vêpres et complies. Plus couramment, on qualifie de vespérale une chose qui se déroule ou qui a lieu le soir.',
#                         example: "La clarté vespérale nimbait le salon, rendant la raclette encore plus appétissante.",
#                         url: urls[2])

#   quintessence = Word.create(name: 'Quintessence', cat: 'n.f.', day: '2021-04-04',
#                       definition: "Ce mot est utilisé pour nommer de l'extrait le plus concentré ou le plus délicat. Il est aussi utilisé pour nommer la part la plus subtile d'une substance. Plus généralement aujourd'hui, quintessence désigne la partie la plus raffinée, la meilleure.",
#                       example: "La quintessence du beauf se trouve dans son célèbre combo claquettes/chaussettes.",
#                       url: urls[3])

#   mirliflore = Word.create(name: 'Mirliflore', cat: 'n.m.', day: '2021-04-05',
#                     definition: "Un mirliflore est un jeune homme très porté sur son élégance et sur son apparence, \"mirliflor\" comme les \"mille fleurs\" de son parfum. Aujourd'hui, ce terme un peu vieilli décrit un jeune homme agissant de façon fière voire hautaine.",
#                     example: "Le mirliflore lança un regard rapide à la file d'attente et la contourna pour s'adresser directement au guichet.",
#                     url: urls[4])

# puts 'Lampadophore, haptique, pabullophobie, lénifier, faribole ...'
#   lampadophore = Word.create(name: 'Lampadophore', cat: 'adj.', day: '2021-04-06',
#                       definition: "Rôle qui peut être décisif dans certaines situation, la personne lampadophore pouvait donner le signal de départ d\'une course ou d\'un sport. De façon plus globale, lampadophore désigne être porteur·se de flambeau.",
#                       example: "Bon, pour la suite du rituel, il faut un cercle de chamans lampadophore, mettez-vous autour du pentacle.",
#                       url: urls[5])

#   haptique = Word.create(name: 'Haptique', cat: 'n.f.', day: '2021-04-07',
#                       definition: "L'haptique est une science comme l'optique ou l'acoustique, mais elle décrit la science liée à la sensation du toucher. Haptique évoque surtout le ressenti produit au niveau du cerveau lors d'un contact avec sa peau.",
#                       example: "Tu fais quoi samedi ? Jserais dispo pour une démo de science haptique si ça te chante.",
#                       url: urls[6])

#   pabullophobie = Word.create(name: 'Pabullophobie', cat: 'n.f', day: '2021-04-08',
#                     definition: "Comme tout mot finissant par -phobie, la Pabullophobie est une peur. Il s'agit, en l'occurence, de la peur des brouettes.",
#                     example: "J'ai cherché un peu sur le net, il semblerait que personne ne soit jamais mort de sa pabullophobie.",
#                     url: urls[7])

#   lénifier = Word.create(name: 'Lénifier', cat: 'vb.', day: '2021-04-09',
#                     definition: "Ce verbe transitif vient du \"lénitif\", un médicament utilisé pour apaiser un patient. Maintenant, lénifier est utilisé pour signifier calmer, adoucir, apaiser une peine. Attention, lénifier peut également signifier amollir quelqu'un.",
#                     example: "Tu es malade ? Est-ce qu'une demi-douzaine de cookies pourrait te lénifier ?",
#                     url: urls[8])

#   faribole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-10',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[9])

#     faribolee = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-11',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[10])

#       faribolle = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-12',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[11])
#         fariboole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-13',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[12])
#           faribbole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-14',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[13])
#             fariibole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-15',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[14])
#               farribole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-16',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[15])
#                 faaribole = Word.create(name: 'Faribole', cat: 'n.f.', day: '2021-04-17',
#                     definition: "Une faribole est une phrase légère, peu sérieuse, qui n'a que peu de valeur. Si la faribole est un propos peu important et sans but particulier, elle reste néanmoins agréable.",
#                     example: "Il disait quelques fariboles, en attendant d'avoir le courage de lui avouer sa flamme.",
#                     url: urls[0])


  # new = Word.create(name: '', cat: '', day: '',
  #                   definition: '',
  #                   example: '',
  #                   url: urls[])
