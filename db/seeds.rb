# Create Admin User

manoel = {
  email: 'manoel.bemi@gmail.com',
  password: 'bocamiuda2021',
  admin: true
}

User.create(manoel)

# Categories

c1 = {
  nome: 'Colagem',
  icon: 'icon-estrela'
}

c2 = {
  nome: 'Fotografia Analógica',
  icon: 'icon-circulo'
}

c3 = {
  nome: 'Texto',
  icon: 'icon-triangulo'
}

c4 = {
  nome: 'Pintura',
  icon: 'icon-quadrado'
}

categories = [c1, c2, c3, c4]

categories.each do |c|
  new_c = Category.create(c)
  puts "Categoria #{new_c.nome} criada 🎨"
end

# Artistas s/ Conteúdo

a1 = {
  nome: 'Marcia Barbosa',
  cidade: 'Cabo Frio',
  social: 'marciabarbosa',
  pdf: 'www.google.com'
}

a2 = {
  nome: 'Mulambö',
  cidade: 'Saquarema',
  social: 'mulambotu',
  pdf: 'www.google.com'
}

a3 = {
  nome: 'Rodrigo Rosm',
  cidade: 'Armação dos Búzios',
  social: 'rodrigorosm',
  pdf: 'www.google.com'
}

def create_artist(artist, category)
  new_a = Artist.create(artist)
  new_a.category = Category.find_by(nome: category)
  new_a.save
  puts "Artista #{new_a.nome} criado 🌸"
end

create_artist(a1, 'Pintura')
create_artist(a2, 'Pintura')
create_artist(a3, 'Texto')

# Artistas com Conteúdo

carla = {
  nome: "Carla Santana",
  cidade: "São Gonçalo",
  social: "carlassssantana",
  pdf: "www.google.com",
  h1: "O mais dificil  é começar",
  h2: "Nós pensamos  com o corpo todo",
  h3: "Quero ser lembrada sem ser vista",
  p1: "Desde o início da minha trajetória  no teatro junto com a Jade Maria , eu justifico minha prática através  do meu corpo. Na busca de acessar entranhas doloridas ou não. Hoje consigo demarcar momentos, pontos, bifurcações  e ideias-chaves que pairam a minha produção. No primeiro momento,  creio que inconscientemente, acreditava na arte como um meio de cura. Trazer  à tona centelhas de lugares emocionais indecifráveis e, ao mesmo tempo, preencher de indagações lacunas sobre  a minha experiência num corpo-social repleto de tensões. De prima, minha linha expressiva se aliou à uma necessidade de expurgação. Falo sobre reflexões má digeridas, comunicação sempre foi um  problema. Ser vista e ouvida também.

Queria mostrar os problemas, as dores, as inquietações: o indizível. Quando meu trabalho começa a circular em exposições, atrelado a criação da Trovoa, compreendo uma outra dimensão muito importante: o olhar de fora. Para quem eu estou transmitindo. As interpretações  e identificações mostram-me que  eu havia traduzido na minha particularidade imagens e sensações  que me aproximavam dos meus pares.  Então, como guia começo a investigar  a linha tênue entre o corpo-social  e o corpo-subjetivo, entre o íntimo e o público.",
  p2: "Falando sobre cura, uma pessoa se fez catapulta, me atirando num processo  de afirmação para acreditar no meu  processo e impulsioná-lo. Em 2017 conheci a Ângela Brito, nas reuniões da CURA,  onde nos reunimos com outras mulheres  que trabalham com criação. Estava num momento batendo cabeça e Ângela me disse: 'Só pega e faz. Onde te disserem que você não pode, você enfia o pé e diz Eu posso!'",
  p3: "Que a despretensão seja a minha guia. Uma diretriz que aprendi na prática com a Ana Almeida é a liberdade de fazer e não ter que suprir expectativas alheias. Enquanto mulher negra e artista eu não preciso fazer trabalhos ditos “políticos” o tempo inteiro. A minha liberdade intelectual, estética e expressiva me tiram de um lugar massificado. Agora estou pensando sobre as águas que acometem os meus sonhos constantemente, sobre pegar sol na laje, sobre tartarugas e plantas. Sobre desejos, falta de vontade e clausura. Sobre minhas avós, memória, ancestralidade e esquecimento. Tudo isso enquanto objeto, estudo, texto, imagem, técnica e meio. Absorve e tira o caldo. O produto vem depois.",
  f1: "https://res.cloudinary.com/juliaf1/image/upload/v1614468624/Boca%20Mi%C3%BAda/carla_1_umvcsh.jpg",
  f2: "https://res.cloudinary.com/juliaf1/image/upload/v1614016692/Boca%20Mi%C3%BAda/carla_2_qjxmkx.png",
  f3: "https://res.cloudinary.com/juliaf1/image/upload/v1614016692/Boca%20Mi%C3%BAda/carla_3_qonx4q.png",
  f4: "https://res.cloudinary.com/juliaf1/image/upload/v1614468624/Boca%20Mi%C3%BAda/carla_4_kjitfj.jpg",
  f1_legenda: "Chás de Verão — Críticas Coletivas 
Fotografia: Loli Brito",
  f2_legenda: "Recôndita, 2017
Vídeo-instalação
Duração 2’22’’",
  f3_legenda: "Sem título, 2020
Fotografia 35mm",
  f4_legenda: "Sem Título, 2020
Acrílica, pastel e grafiti s\ papel
29 x 42 cm"
}

manoel = {
  nome: "Manoel Manoel",
  cidade: "Niterói",
  social: "manoelmanoel",
  pdf: "www.google.com",
  h1: "[...]",
  h2: "A prática",
  h3: "Deslumbrado",
  p1: "Toda gama de possibilidades expressivas são engenhocas onde o artista constrói a sua visão de mundo. Arte é vida.  Sem meio termos ou dicotomias.  Toda obra de arte é uma memória, inventada ou vivida. Para introduzir a pesquisa visual do Manoel, me vem à cabeça uma afirmação do Cildo Meireles: 'A memória é o ponto de partida para toda ação do artista. É ela que lida com a realidade implacável do tempo  e é a maior de todas as realidades.'

Manoel cria um universo onde aplica  uma pesquisa sobre a dimensão gráfica das cores e formas. Encara as linguagens como o desenho e a pintura como  A prática. Prática esta é o exercício cotidiano de impressão da sua poética. Poética é a insistência do fazer, escoar memórias de narrativas ficcionais que ainda não foram inventadas. Trazendo  em sua bagagem subjetiva o realismo fantástico onde revela-se um vocabulário de personagens caóticos e monstruosos, explosões gráficas e pequenos textos grafados sobre pinturas.  ",
  p2: "Busca uma cena chapada,  uma dimensão única onde os elementos visuais nos levam  a criar uma narrativa quase abstrata.  Uma colagem de memórias fragmentadas desembocam num estudo sobre a materialização através do desenho,  de forma prática mas não objetiva.

Desenvolvendo séries em serigrafia,  Manoel cria o que eu gosto de chamar  de onomatopéias imagéticas.  Recorrendo a formas muito características das histórias  em quadrinhos, traz a natureza das explosões gráficas  que, ao meu ver, remetem diretamente aos estrondos e grunhidos cotidianos que nos passam batidos. Nessas serigrafias as formas  dão uma entonação ficcional e as cores indicam uma pulsão tendenciosa,  a sensação de surpresa e detonação. Permanece imbuído na criação  de imagens gráficas, sem a intenção de uma comunicação única.",
  p3: "Foi aluno de Iole de Freitas e estudou Sociologia na UFF. Participou de coletivas como Depois do Futuro (Daniela Labra),  A Felicidade Às Vezes Mora Aqui (Edmilson Nunes) e Carpintaria para Todos. Em 2016 apresenta a individual 'Tudo é muito bonito mas sei lá', na Fundação de Arte de Niterói.  Configura imagens nos limites entre desenho, pintura e objeto. Sua pesquisa questiona as fronteiras da literatura fantástica e a estética do cangaço, fauna/flora locais, e a disposição dos corpos na praia da boa viagem.",
  f1: "https://res.cloudinary.com/juliaf1/image/upload/v1614468834/Boca%20Mi%C3%BAda/manoel_1_exukgo.png",
  f2: "https://res.cloudinary.com/juliaf1/image/upload/v1614016759/Boca%20Mi%C3%BAda/manoel_2_pvhnfm.png",
  f3: "https://res.cloudinary.com/juliaf1/image/upload/v1614468835/Boca%20Mi%C3%BAda/manoel_3_gozkgw.png",
  f4: "https://res.cloudinary.com/juliaf1/image/upload/v1614469112/Boca%20Mi%C3%BAda/manoel_4_elalgj.png",
  f1_legenda: "Chás de Verão — Críticas Coletivas 
Fotografia: Loli Brito",
  f2_legenda: "Sem título (Jovens), 2020
Óleo, acrílica, guache, aquarela, nanquim, ecoline e cola plástica s/ tela.
100 x 200 cm",
  f3_legenda: "Praia da Boa Viagem (Ponte), 2018 
Serigrafia (Tiragem única)
17,5 x 12 cm",
  f4_legenda: "archaeopteryx lithographica, 2016 
Nanquim, aquarela, guache, grafite s/ papel pardo
134 x 74 cm"
}

create_artist(carla, 'Fotografia Analógica')
create_artist(manoel, 'Colagem')
