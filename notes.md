#### 17/07/2023

Curso de iOS: construindo seu primeiro aplicativo

@01-Iniciando o projeto

@@01
Apresentação

Olá! Meu nome é Giovanna Moeller e sou instrutora na Alura.
Autodescrição: Sou uma mulher branca de cabelos loiros. Estou vestindo uma blusa marrom. Ao fundo, há uma parede lisa com iluminação degradê de azul até rosa.
Boas-vindas ao Curso de iOS: construindo o seu primeiro aplicativo! Ao longo desse curso, vamos construir a nossa primeira aplicação usando a linguagem Swift.

O projeto que será desenvolvido será o iQuiz.

Tela inicial de aplicativo. A tela está preenchida com o fundo na cor roxa e mais acima da parte central dela, há a imagem do iQuiz com um botão "Iniciar Quiz", abaixo.

Ao clicarmos no botão "Iniciar Quiz", será exibida a seguinte perguntas com as respectivas alternativas na tela:

Qual o feitiço para desarmar o seu oponente, em Harry Potter?
Expecto Patronum
Avada Kedavra
Expelliarmus
Selecionamos "Expecto Patronum", e já somos redirecionados para a próxima pergunta:

Quando foi lançado o filme Avatar 2?
2014
2022
2023
Clicamos em "2022", e vamos para a próxima pergunta:

Quando foi lançado o filme Vingadores Ultimato?
2019
2018
2017
Clicamos em "2019", e na próxima tela, temos as seguintes mensagens e um botão de "reiniciar Quiz", centralizado na parte inferior da tela:

Você finalizou o iQuiz!
Você acertou 2 de 3 questões

Percentual final: 66%

Reiniciar Quiz

Ou seja, é um aplicativo de perguntas e respostas customizado. Podemos desenvolver o tema de nossa preferência e jogar com os nossos amigos.

O protótipo dessa aplicação estará no Figma. Você terá acesso ao link pelas atividades, e o usaremos como base para desenvolver essa aplicação com código.

Construindo o seu primeiro aplicativo
Construção de interfaces com autolayout;
navegação entre telas;
modelagem de dados.
E vários outros conceitos importantes! Será a partir dessa aplicação que usaremos como base para construirmos outros aplicativos iOS e para você dar os seus primeiros passos na sua carreira como pessoa desenvolvedora iOS.

Pré-requisitos
É muito importante que você já possua conhecimento prévio em linguagem Swift, dentre os conceitos necessários, estão:

Variáveis;
tipos de dados;
condicionais/funções;
laço de repetição e orientação a objetos.
Temos todos esses conteúdos na plataforma Alura! Basta ir à página inicial desse curso em "Pré-requisitos" que os cursos estarão listados lá.

Use o Discord! Não se esqueça de entrar no nosso Discord para conhecer outras pessoas estudantes e instrutores, para trocar projetos e conhecimentos sobre a linguagem Swift e o desenvolvimento iOS.

Vamos iniciar a construção do nosso primeiro aplicativo?

Te espero na primeira aula!

@@02
Preparando ambiente: Xcode e Figma

Neste curso, vamos construir o aplicativo iOS de quiz: o iQuiz!
Assim, siga os dois passos necessários para iniciar o curso:

1) Clique aqui e acesse o protótipo no Figma: verifique o projeto que vamos desenvolver, entendendo seus elementos técnicos e visuais como telas, cores, botões e fontes.

a) Vamos produzir um app do zero, portanto, não há download do projeto. A cada aula, você encontrará o código construído até então para estudar e revisar o seu projeto.
2) Baixe e instale o Xcode: essa é a ferramenta oficial da Apple para construir projetos iOS (e dar vida ao layout do Figma)!

a) Acesse aqui as instruções de instalação, caso não tenha o Xcode instalado.
b) Lembre-se: o Xcode é a ferramenta padrão para desenvolvimento iOS e roda apenas em ambientes com sistemas operacionais MacOS, portanto, é imprescindível que você possua máquina com esse sistema operacional. Infelizmente, essa é uma limitação para as pessoas que buscam estudar iOS!
Após ter realizado esses passos, você pode prosseguir com seus estudos!

Abaixo, você encontra mais detalhes sobre as ferramentas e tecnologias deste curso.

Como é o projeto iQuiz que vamos construir?
Conforme o link do Figma, você verá que o iQuiz possui seis telas (ao menos inicialmente).

A ideia é que o usuário responda perguntas sobre qualquer temática e, ao final, descubra o número de questões respondidas corretamente e a porcentagem de acerto.

O Figma é uma ferramenta que permite criar protótipos e layouts de aplicativos. Na vida real, a equipe de design envia um arquivo do Figma que é utilizado de referência pela pessoa desenvolvedora que vai codar um aplicativo perfeitamente funcional!
Como é a ferramenta que vamos utilizar?
O Xcode é uma IDE (ambiente de desenvolvimento) utilizada para construir aplicativos que rodam em iPhones, MacOS e demais dispositivos iOS.

É a ferramenta padrão para desenvolvimento mobile iOS, pois possui todas as funcionalidades necessárias desde o processo de desenvolvimento até o processo de publicação da sua aplicação nas lojas da Apple.

Bons estudos!

https://www.figma.com/file/arNzZp0KyM55CKpvlZjUOL/iQuiz?node-id=0%3A1

https://cursos.alura.com.br/course/swift-entendendo-linguagem/task/118477

@@03
Devo utilizar UIKit ou SwiftUI?

Vamos desenvolver o aplicativo chamado de iQuiz, sendo um aplicativo customizado de perguntas e respostas!
Figma do projeto. Nele, há um protótipo de 6 telas do aplicativo. Na primeira tela temos a tela inicial, onde ela está preenchida com o fundo a cor roxa e há o ícone do aplicativo iQuiz e um botão "Iniciar Quiz", abaixo. Na segunda tela, temos a pergunta "Qual o feitiço para desarmar o seu oponente, em Harry Potter?", com as opções: "Expecto Patronum", "Avada Kedavra" e "Expelliarmus". Na sequência, temos duas telas em casos de a resposta à pergunta anterior estiver certa (tela superior) e caso a resposta à pergunta estiver errada (tela inferior). Na tela superior (resposta certa), há a mesma tela com a pergunta anterior, só que com a alternativa com a resposta correta "Expelliarmus" preenchida na cor verde. Na tela inferior (resposta errada), a alternativa selecionada errada ("Avada Kedavra") está preenchida na cor vermelha. Na quinta tela, temos a pergunta "Em que ano Vingadores Ultimato foi lançado?", com as opções: "2019", "2018" e "2017". Na sexta e última tela, temos a tela de desempenho com as seguintes mensagens: "Você finalizou o iQuiz!", abaixo temos informando a quantidade de acertos: "Você acertou 2 de 10 questões"; em seguida, o percentual de acertos, sendo a mensagem "Percentual final: 20%"; e, por fim, o botão "Reiniciar Quiz" abaixo.

No Figma, temos o protótipo desse aplicativo. O Figma é um software de design bastante usado para construir protótipos de aplicações.

Temos todas as telas, e as perguntas eu simulei um quiz sobre filmes. Porém, isso será totalmente customizável, você poderá escolher perguntas e respostas com o tema de sua preferência.

Temos também o protótipo de quando a pessoa usuária acerta ou erra a pergunta, e, por fim, a nossa tela informando o desempenho ao final do quiz. Acabei simulando como dez perguntas, mas vimos que possui somente duas, mas enfim, são detalhes. O nosso aplicativo será flexível.

Vamos deixar o Figma disponibilizado nas atividades, para você verificar, por exemplo, qual a cor de fundo, como os elementos estão distribuídos na tela, qual a cor do botão e o tamanho da fonte. Isto é, as informações relacionadas ao design do aplicativo.

Iniciaremos a construção do nosso aplicativo, de fato. Afinal, temos somente o design.

Para isso, precisamos escolher um framework para o desenvolvimento!

Qual framework iOS utilizar?
UIKit ou SwiftUI?
Caso tenha algum conhecimento prévio sobre desenvolvimento iOS, você pode ter ouvido falar sobre o UIKit e o SwiftUI. Ambos são frameworks que usamos para construir aplicativos iOS.

Resumo
01 O que é um framework?
02 UIKit vs SwiftUI
03 Mercado de trabalho
Vamos entender o que é um framework e qual o cenário do mercado de trabalho atual para pessoas desenvolvedoras iOS.

Vamos lá!

O que é um framework?
Swift: Linguagem de programação
Até o momento, aprendemos sobre o Swift, que nada mais é que uma linguagem de programação.

Agora, precisamos escolher um framework iOs.

Framework iOS: (Conjunto de ferramentas) Foco no desenvolvimento
Um framework é o conjunto de ferramentas que possui como objetivo final o desenvolvimento. Sendo quem nos fornece os botões para construirmos o aplicativo, os textos e as imagens.

Logo, ao nos referirmos à construção de um aplicativo precisamos desse conjunto de ferramentas para possibilitar a sua construção. É a partir desse momento, que entra os dois frameworks mencionados: UIKit e SwiftUI.

UIKit
Lançado em 2008 (desde o iOS 2.0);
utilizado na maioria dos aplicativos até o momento;
construção de layouts com Storyboard e View Code.
Estamos no iOS 16.0, considerando que a Apple lança uma nova versão do sistema operacional a cada ano. Ou seja, é um sistema bem antigo mesmo.

Contudo, isso não significa que não é utilizado atualmente. Recentemente, ele é usado na maioria dos aplicativos, justamente pela maturidade e por estar muito tempo presente no mercado de trabalho.

Com o UIKit, podemos construir os layouts de diferentes formas, tanto com o Storyboard quanto com o View Code. O Storyboard é uma ferramenta com as telas de dispositivos, onde vamos arrastando os elementos para a tela.

E o View Code, sendo a construção de layouts de forma programática, com código. Também vamos ver sobre isso em cursos futuros.

SwiftUI
Lançamento em 2019 (recente);
suporta versões superiores ao iOS 13.0;
futuro do desenvolvimento iOS, pois tem funcionalidades exclusivas;
parecido com React Native e Flutter;
interoperabilidade com UIKit;
funcionalidade "Preview".
O SwiftUI foi lançado em 2019, é bem recente, suportando versões superiores ao iOS 13.0. Estamos na versão 16.0, isso significa que um dispositivo 10.0, 11.0, 12.0 não irão suportar um aplicativo desenvolvido com o SwiftUI.

Essa ferramenta vem com a proposta de ser o futuro do desenvolvimento iOS. A Apple aposta muito nesse framework, por possuir algumas funcionalidades exclusivas, os eventos da Apple relacionados a desenvolvimento também trazem funcionalidades novas para o SwiftUI.

Caso conheça um pouco dos frameworks para a construção de aplicativos de forma híbrida, o SwiftUI é bem parecido com o React Native e com o Flutter. O modo de desenvolvimento é bem semelhante.

É importante mencionarmos que ele possui interoperabilidade com o UIKit. Isso significa que ao construirmos um aplicativo com o SwiftUI, podemos também obter arquivos com o UIKit.

O SwiftUI também possui a funcionalidade "Preview". Em suma, conseguimos visualizar, em tempo real, as alterações do nosso código. Isso não acontece no UIKit, onde a cada atualização precisamos rodar novamente o código para visualizarmos.

Mercado de trabalho
UIKit é mais utilizado pelas empresas em geral;
SwiftUI precisa de uma versão muito alta do iOS;
Espera da maturidade do SwiftUI.
No mercado de trabalho, o UIKit é muito mais usado pelas empresas atualmente; isso porque o SwiftUI precisa de uma versão superior do iOS para funcionar. Como mencionado, a partir da versão 13.0 e isso exclui vários dispositivos.

Assim, se uma pessoa tiver o iOS na versão 12.0, não poderá utilizar o aplicativo. E nenhuma quer perder tantos usuários assim, pois não é difícil encontrar pessoas com versões menores que a 12.0.

Então, espera-se a maturidade do SwiftUI! Porque, como mencionado, ele é recente e o UIKit já existe desde 2008, sendo extremamente maduro.

Portanto, para o mercado de trabalho, o UIKit é o mais usado e devemos aprender a usá-lo se tivermos interesse em entrar no mercado de trabalho do iOS.

Decidimos, então, usar o UIKit para construirmos o nosso aplicativo iQuiz!

Vamos iniciar a configuração do nosso projeto?

Te espero no próximo vídeo!

@@04
Configuração do projeto

Na aula passada decidimos que usaremos o UIKit. Agora partiremos para a configuração inicial do nosso projeto.
Já estou com o meu Xcode aberto; e na tela inicial temos a mensagem "Welcome do XCode" (em português, "Boas-vindas ao XCode"), e abaixo temos três opções, onde clicaremos na opção "Create a new XCode projeto" ("Crie um novo projeto XCode").

Create a new XCode projeto: Create an app for Iphone, Ipad, Mac, Apple Watch, or Apple TV.
Será aberta uma janela intitulada “Choose a template for your new project”, onde temos vários tipos de aplicativos para construirmos.

Abaixo do título, temos um menu superior com as opções: MultiPlatform, iOS, macOS, watchOS, tvOS, DriverKit e Other. E mais à direita, temos um campo de filtro.

Na sequência, temos as seguintes possibilidades na seção “Application”:

App;
Document App;
Game;
Augmented;
Swift Playgrounds;
Sticker Pack App;
iMessage App Safari Extension App.
Logo após, temos as seguintes possibilidades na seção “Framework & Library”:

Framework;
Static Library;
Metal Library.
Na parte inferior esquerda, temos o botão “Cancel”, e à direita há dois botões: “Previous” e “Next”.

No menu na barra superior abaixo do título, estão os diversos sistemas operacionais. Deixaremos o "iOS" selecionado, e depois clicamos em "App" na seção "Application". Logo após, selecionamos o botão "Next".

Na janela seguinte, temos os campos: “Product Name”, “Team” (com um botão “Add account”), “Organization Identifier” (já preenchido com br.com.alura), “Bundle identifier” (já preenchido com br.com.alura.ProductName), Interface (preenchido com Storyboard) e Language (preenchido com Swift). Abaixo, temos duas caixas de checkboxes: “Use Core Data” e “Include Tests”. Na parte inferior esquerda, temos o botão “Cancel”, e à direita há dois botões: “Previous” e “Next”.
Vamos inserir algumas configurações básicas no nosso projeto.

No campo "Product Name", digitamos o nome "iQuiz"; já na identificação da organização ("Organization Identifier"), podemos inserir o nosso nome mesmo, porque isso é mais para o processo de enviar alguma coisa para a loja de aplicativos, que é necessário ter uma organização e conta. No momento não vamos nos preocupar com isso.

Deixaremos a interface como Storyboard, porque estamos usando UIKit e não o SwiftUI. E para a linguagem, deixamos a Swift. As última duas opções, “Use Core Data” e “Include Tests”, vamos deixar desmarcados, dado que não vamos usá-las nesse projeto.

Choose a template for your new project
Product Name: iQuiz
Team:
Organization Identifier:
Bundle identifier: br.com.alura.iQuiz
Interface: Storyboard
Language: Swift
Depois, clicamos no botão "Next".

Agora precisamos escolher a pasta onde salvaremos o projeto. No meu caso, escolherei a pasta "Documentos" do meu computador, e depois clicar no botão "Create", no canto inferior direito.

Na página seguinte, temos uma barra superior com as seguintes abas: General, Signing & Capabilities, Resource Tags, Info, Build Settings, Build Phases e Build Rules. Abaixo, temos as seguintes seções (visíveis até o momento), com seus respectivos campos:

Supported Destination
Destination	SDK
iPhone	iOS
iPad	iOS
Mac	iOS
Minimum Deployment
iOS 16.2
Identity
App Category: None
Display Name:
Bundle Identifier: br.com.alura.iQuiz
Verson: 1.0
Build: 1
Deployment info
Iphone Orientation
Portrait
Upside Down (desmarcado)
Landscape Left
Landscape Right
Vamos entender um pouco sobre cada uma dessas informações.

Em "Supported Destination", temos os destinos suportados, ou seja, se a nossa aplicação vai rodar em um iPhone, em um iPad ou Mac. Já em "Minimum Deployment", é a versão mínima do iOS que precisamos ter para rodar esse aplicativo; no caso está na 16.2, mas você pode selecionar a que quiser.

Observe que interessante: a implantação mínima é 11.0, caso você crie o aplicativo com o SwiftUI seria a versão 13.0. Em "Identity" são informações de identificação sobre o aplicativo mesmo, podemos pular e ir para o "Deployment info", onde temos algumas informações para realizar o deploy.

Deploy significa publicar o aplicativo na loja para outras pessoas terem acesso.
Por exemplo, a orientação do iPhone ("Iphone Orientation"). Se o aplicativo suporta que você use o iPhone na horizontal ou somente na vertical. Há aplicativos que não suportam quando viramos o celular na horizontal e quebram.

Mas partiremos para o que nos interessa!

Do lado esquerdo, temos a seguinte estrutura de arquivos:

iQuiz
iQuiz
AppDelegate
SceneDelegate
ViewController
Main
Assets
LaunchScreen
Info
Um arquivo que será bastante importante para nós é o Main, o StoryBoard do nosso aplicativo.

O StoryBoard é o conjunto de todas as telas de uma aplicação, sendo o que representa todo o fluxo do aplicativo.
Essa é uma ferramenta Drag and Drop (em português, "arrastar e soltar"), significa que arrastamos os elementos para construirmos um layout.

Observe que na barra do menu inferior, estamos tratando de um iPhone 14 Pro. Clicando nele, podemos alterar o dispositivo.

Por exemplo, clicando na tela referente ao iPhone SE notamos que a tela é bem menor, temos telas até para testarmos no Ipad. Ou seja, conseguimos visualizar como as informações ficarão disponíveis nos diferentes dispositivos. Deixaremos no iPhone 14 Pro.

Clicando na tela do aplicativo em branco dentro do arquivo Main, do lado direito temos algumas informações exibidas:

View
Content Mode
Semantic
Tag
Interaction
User Interaction Enabled
Multiple Touch
Alpha
Background
Tint
Drawing
Opaque
Hidden
Clears Graphics Contexto
Clips to Bounds
Autoresize Subviews
Stretching
Clicando em "Background", conseguimos alterar a cor de fundo dessa tela à esquerda. Eu gosto da "System indigo", observe que o fundo da nossa tela foi alterado:

Tela de celular com a tela do aplicativo completamente preenchida pela cor índigo.

Logo, o StoryBoard são as informações que podemos alterar a tela, e podemos fazer isso do lado direito no painel de atributos.

Voltaremos à estrutura de pastas do lado esquerdo, no XCode. No arquivo Assets é onde colocaremos todas as imagens da nossa aplicação. Vamos entender mais sobre isso nos próximos conteúdos.

Clicando em ViewController, temos:

ViewController
//
//  ViewController.swift
//  iQuiz
//
//  Created by Giovanna Moeller on 27/01/23.
//

import UIKit

class ViewController: UIViewController {

        override func viewDidLoad() {
                super.viewDidLove()
                // Do any additional setup after loading the view.
        }
}COPIAR CÓDIGO
Esse é o código da nossa aplicação! Então no arquivo Main (onde está localizado a nossa tela de aplicativo), cada tela representada no StoryBoard terá uma ViewController embutida nela.

Imagine: no StoryBoard temos somente uma tela sempre representada (a que preenchemos com o fundo na cor índigo) e essa tela possui o código do arquivo ViewController.

Ao adicionarmos uma nova tela (faremos isso mais adiante na prática), teremos outra ViewController vinculada à essa tela.

O StoryBoard é algo visual, mas e o código? Como vamos programar as coisas que envolvem o aplicativo aqui? Como os objetos irão se relacionar? Para isso, temos uma ViewController ligada a cada tela.

Voltando à estrutura de arquivos, o AppDelegate e o SceneDelegate são informações internas e quase nunca alteramos algo dentro desses arquivos. Podemos não nos preocupar com isso.

Clicando em LaunchScreen do lado esquerdo, é exibida uma tela de aplicativo em um celular toda em branco. Sendo o arquivo relacionado à primeira tela, quando o aplicativo está carregando e estamos aguardando o carregamento, de fato. Essa é a LaunchScreen ou SplashScreen.

O último arquivo info configura algumas propriedades e não precisamos nos preocupar também.

Focaremos no StoryBoard, sendo a representação visual de todo fluxo do nosso aplicativo; e nas ViewControllers, que são ligadas a cada tela.

Assim, finalizamos as configurações básicas de um aplicativo, entendemos como criar e como funciona, e tivemos uma visão geral do XCode com as estruturas de arquivos do projeto.

Vamos iniciar o desenvolvimento adicionando elementos na tela. Te espero na próxima aula!

05
Sobre os frameworks iOS

Vimos algumas informações relevantes para colocarmos a mão na massa e desenvolver aplicativos iOS.
A Ana, uma amiga sua, tem algumas dúvidas sobre os frameworks iOS. Vamos ajudá-la?

Selecione a afirmação verdadeira:

No storyboard, você tem uma funcionalidade chamada de “Interface Builder”, que permite que você construa o layout com a ferramenta de “drag-in-drop” (arrasta e solta).
 
Verdadeiro. É uma funcionalidade amigável para iniciantes, pois conseguem construir layouts de forma prática e sem muitas dificuldades.
Alternativa correta

Já que o SwiftUI funciona em dispositivos com a versão do iOS superior a 13.0, isso significa que o UIKit não é mais suportado em versões acima desta.
 
Alternativa correta
É necessário criar um arquivo Main.storyboard para cada tela adicionada na aplicação.
 
Alternativa correta
Quando escolher um framework para desenvolvimento, a versão do sistema operacional não deve ser levada em conta.

@@06
Conhecendo o Storyboard e importando a primeira imagem

Já criamos o nosso projeto, conhecemos sobre o StoryBoard e as configurações iniciais do XCode. Agora, vamos construir a primeira tela do nosso aplicativo!
Voltando ao Figma, observamos que a primeira tela contém uma imagem e um botão com o texto "Iniciar Quiz".

Tela inicial de aplicativo. A tela está preenchida com o fundo na cor roxa e mais acima da parte central dela, há uma imagem do iQuiz com um botão "Iniciar Quiz" preenchido em um tom lilás, centralizado abaixo.

A primeira coisa que precisamos fazer é exportarmos essa imagem com o ícone do iQuiz do Figma. Para isso, clicamos nela e vamos ao menu lateral direito na seção "Export" e depois selecionamos o botão "Export Logo".

Observe que a imagem está marcada como "SVG", mas ao clicarmos nela, temos as opções: PNG, JPG, SVG e PDF. Vamos deixar a imagem como SVG mesmo, por ser um formato vetorial (não perde qualidade independente do tamanho da tela).

Após clicarmos em "Export Logo", é realizado o download da imagem e vamos importá-la para o XCode. Voltando ao XCode, lembra que mencionei que as imagens do nosso projeto ficarão armazenadas no arquivo Assets.

Clicando no arquivo Assets, selecionaremos o ícone de sinal de mais ("+") no canto inferior esquerdo. Após isso, escolhemos a opção "import…", onde será exibida a janela para buscarmos na nossa máquina a imagem, basta ir onde você salvou, selecionar a imagem e clicar no botão "Open", no canto inferior direito.

Observe que do lado esquerdo agora no arquivo Assets, temos a Logo. A imagem foi aberta, perceba que centralizado na tela temos as imagens: 1x, 2x e 3x. Sendo que somente a 1x está com o nosso ícone do iQuiz.

Isso com imagens em formato não vetoriais, como PNG e JPG. Imagine uma imagem PNG, quando nos aproximamos dela aplicando o zoom, conseguimos visualizar alguns quadrados, os pixels. Portanto, há uma resolução.

E quando nos referimos aos dispositivos iOS, eles possuem diferentes tamanhos e diferentes resoluções. Logo, um iPhone SE é bem menor do que um iPhone 14 Pro, por exemplo.

Os dispositivos diferem em tamanho e resolução.
Assim, ao usarmos imagens que não estão no formato vetorial é necessário importarmos em três diferentes tamanhos para adaptar com as diferentes resoluções dos dispositivos.

Mas por estarmos trabalhando com SVG (PDF também funcionária por ser vetorial), não precisamos nos preocupar com esses tamanhos de 1x, 2x e 3x. Inclusive, podemos remover isso dessa pasta Assets.

Para tal, vamos ao menu lateral direito onde temos um atributo chamado de "Resizing" (em português, "Redimensionando"), nele temos um checkbox escrito "Preserve Vector Data" ("Preservar dados vetoriais").

Vamos marcar essa possibilidade! Isso porque ele irá preservar esse formato vetorial. Além disso, logo abaixo em "Scales" ("escalas"), observe que esta como "Individual scales" ("escalas individuais") e é por isso que é exibido o 1x, 2x e 3x. Logo, precisamos marcar a opção "Single scale" ("escala única") por ser um formato SVG.

Note que agora não temos mais as três imagens para preenchermos centralizado na tela do arquivo Assets, temos somente uma única imagem com a imagem do iQuiz.

Importamos a imagem!

Uma observação sobre esse arquivo Assets: não precisamos, necessariamente, inserir somente imagens nele. Podemos colocar cores do nosso projeto e também um ícone. Mas vamos entender melhor sobre isso depois.

Do lado esquerdo do XCode, clicamos no arquivo Main. Nela, temos a seguinte tela:

Tela de celular com a tela do aplicativo completamente preenchida pela cor índigo.

Precisamos inserir a imagem nela! Para isso, do lado direito superior temos um ícone de mais ("+") (referente a library), selecionando ele será aberta a biblioteca de elementos.

Na janela seguinte, temos as seguintes opções do lado esquerdo:

Label
Button
Gray Button
Tinted Button
Filled Button
Pull Down Button
Pop Up Button
Segmented Control
Text Field
Slider
Switch
Activity indicator View
Progress View
Nessa seção, estão todos os elementos disponíveis que podemos incluir na tela. Como a label, que é um texto; um botão; um text field que é quando a pessoa usuária digita algo; até mesmo o slider; um painel de progresso; um Color Well; entre outros elementos.

Precisamos de uma imagem! Por isso, clicamos no canto superior esquerdo da janela, onde está escrito "Objects" e pesquisaremos por "image". Observe que apareceu uma possibilidade "Image View" do lado esquerdo, clicamos e arrastamos essa opção para a tela do nosso aplicativo no arquivo Main.

Perceba que agora temos uma sombreado referenciando a imageView centralizado na tela do nosso aplicativo. Onde há pontos para alterarmos o tamanho da imagem nas laterais e na parte superior e na parte inferior.
Agora, escolheremos a imagem. Para isso, vamos ao menu lateral direito na parte superior, onde temos um atributo chamado de image. Clicando na seta à direita desse atributo, note que o nosso "Logo" já é exibido. Além disso, temos diversos outros ícones que a Apple nos fornece.

Clicamos em "Logo". Pronto! A nossa imagem do nosso iQuiz está na tela do nosso aplicativo.

Tela de celular com a tela do aplicativo completamente preenchida pela cor índigo ao fundo. A imagem do iQuiz está centralizado horizontalmente, mas verticalmente está mais à esquerda da tela.

Ao clicarmos na imagem, percebemos que podemos arrastá-la para posicioná-la onde desejarmos. Eu vou centralizá-la (horizontalmente falando), observe que há uma linha na vertical onde podemos ter uma noção da posição.

Podemos aumentar ou diminuir o tamanho arrastando os pontos do retângulo com pontos centralizados nas arestas e vértices. Vou deixar a imagem um pouco acima do centro da tela.

Já importamos a imagem, e agora precisamos dar continuidade para acrescentar o botão para a pessoa usuária iniciar o nosso quiz.

Te espero no próximo vídeo!

@@07
Construindo o botão e executando o aplicativo no simulador

Estamos com a nossa imagem importada, agora vamos acrescentar o botão.
Novamente, clicamos no ícone com o sinal de mais ("+") para abrirmos a biblioteca no canto superior direito, e selecionamos (do lado esquerdo) a opção "Button", após selecioná-la vamos arrastá-la para a nossa tela do aplicativo.

No menu lateral direito, temos algumas propriedades. É importante ressaltar que todas essas propriedades são referentes ao botão, porque é ele que está selecionado. Observe que ao selecionarmos o botão, esse painel de atributos à direita é exibido.

Caso não consiga entrar nesse painel de atributos, no canto superior direito temos o ícone ao lado do sinal de mais, parecendo um quadrado. Ao clicarmos nele, o painel do lado esquerdo some; e clicando novamente, reaparece.

O mesmo acontece no menu lateral esquerdo dos arquivos. Ao clicarmos no ícone no canto superior esquerdo que parece um quadrado, a estrutura de arquivos some; se clicamos novamente, reaparece.

Voltando aos atributos do botão, observe que ele está em uma cor azul que mal conseguimos visualizar. Isso acontece porque ele vem com a cor padrão, do lado esquerdo vamos até a propriedade chamada de Tint. Clicando nesta opção, vamos escolher a opção "System Background Color".

Observe que agora o nosso botão na tela do aplicativo possui o texto "Button" na cor branca. Agora vamos alterar o texto do botão para "Iniciar Quiz". Podemos fazer isso de duas formas!

A primeira forma é dando um duplo clique sobre o texto "Button", e simplesmente digitando "Iniciar Quiz". A segunda forma, é irmos no painel de atributos do lado direito e ao invés de "Button" (abaixo do atributo title) escrevemos o texto desejado. Texto do botão alterado!

Agora a nossa tela possui a imagem do iQuiz e um botão com o texto na cor branca escrito "Iniciar Quiz". Mas perceba que o botão está sem cor de fundo, ele se misturado com o fundo do próprio aplicativo.

Vamos alterar a cor de fundo do botão! Para isso, procuramos por "Background". Observe que ele está com um risco na cor vermelha (cor branca, com um risco diagonal em vermelho), isso significa que ele não possui cor nenhuma.

Temos várias cores pré-definidas no atributo Background. Mas desejamos uma cor customizada, afinal, no Figma conseguimos obter a cor em código hexadecimal.

Voltando ao Figma, clicamos no botão "Iniciar Quiz" da primeira tela. Assim, conseguimos visualizar do lado direito, em "Fill" (em português, "preenchimento"), que a cor de fundo dele é o código 7432FF. Podemos copiá-lo e voltar ao XCode.

Clicando no atributo Background de novo, vamos até o final em "Custom" para inserirmos uma cor customizada. No pop-up exibido, temos um campo chamado de Hex Color, onde podemos colar o código que copiamos do Figma, o 7432FF, e depois teclamos "Enter". Podemos fechar o pop-up do atributo background.

Observe que na nossa tela temos: a imagem do iQuiz, e abaixo o botão com o texto escrito "Iniciar Quiz" na cor azul, e esse botão agora possui preenchimento um pouco mais escuro.

Em aulas anteriores, colocamos a cor de fundo da nossa tela como "System Indigo Color". Mas a cor de fundo do nosso aplicativo é na verdade a cor com o código 521EC2 (podemos visualizar isso voltando ao Figma).

Por isso, clicamos no plano de fundo do aplicativo e no atributo Background do lado direito, selecionamos "Custom" e colamos o código em "Hex Color".

Note que o nosso plano de fundo do aplicativo ficou um pouco mais escuro e podemos visualizar melhor o preenchimento do botão "Iniciar Quiz". Estamos com as mesma cores do Figma.

Vamos selecionar e arrastar o botão para centralizá-lo tanto horizontalmente quanto verticalmente. Vou aumentar o tamanho do botão (o preenchimento ficou um pouco maior que a fonte), e sumir um pouco mais a imagem do iQuiz. Pronto!

A fonte do nosso botão está um pouco pequena para o tamanho do botão que colocamos, né? Vamos aumentá-la selecionando a e, do lado direito, temos um campo chamado "No font" em um cinza bem claro.

Ao clicamos na caixa de texto do lado direito do campo “No Font”, será exibido um pop-up os seguintes campos:

Font: Custom
Style: Regular
Size
E um botão “Done”, do lado direito inferior.

Em Font, escolheremos a opção "System" por ser a fonte do sistema ou padrão. Não trabalharemos com fontes customizadas nesse aplicativo. Já em Size ("tamanho") colocaremos o número 22.

Já gostei desse tamanho, note que agora a fonte do botão está mais de acordo com o tamanho do preenchimento dele, aumentamos um pouco. O atributo Style, é caso desejarmos que a fonte esteja em negrito ou em itálico, por exemplo. Vamos deixar o "Regular" mesmo.

Font: System - System
Style: Regular
Size: 22
Em seguida, clicamos no botão "Done".

Assim, temos a imagem e o botão. Tudo o que estamos aprendendo é um StoryBoard, mas desejamos simular essa aplicação para simulá-la em um simulador de iPhone. Como podemos fazer isso?

Centralizado na parte superior, temos uma barra que possui o nome do aplicativo iQuiz e do lado o iPhone 14 Pro.

Dependendo da versão do XCode, pode ser que o seu não seja o iPhone 14 Pro.
Ao clicarmos no iPhone 14 Pro, temos a seção "iOS Simulations", sendo a lista de simuladores iOS (iPhone e iPad). Também podemos adicionar outro simulador, em "Add Additional Simulators".

A instrutora testou no iPhone 14 Pro.
Agora, no canto superior lateral esquerdo, temos um ícone de play "▶", colocando o mouse por cima temos a mensagem "Start the active scheme" (em português, "Iniciar o esquema ativo").

Ao clicarmos nela, precisamos aguardar um pouco dado que o nosso aplicativo irá buildar, isto é, executar. Após esperar, o aplicativo rodou sem problema nenhum e abriu um simulador do simulator.

O simulator é outra aplicação, não estamos mais nos referindo ao XCode. Observe ser um simulador do iPhone 14 Pro, logo, executamos o nosso aplicativo através de um simulador.

Tela inicial de aplicativo. A tela está preenchida com o fundo na cor roxa e mais acima da parte central dela, há uma imagem do iQuiz com um botão "Iniciar Quiz" preenchido em um tom lilás, centralizado abaixo.

Desse modo, temos a primeira tela do nosso aplicativo construída.

Entenderemos mais sobre layouts nos próximos vídeos, te espero lá!

@@08
Faça como eu fiz: criando o projeto

Agora é a sua vez! Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Portanto:
Crie um novo projeto no Xcode com a opção Storyboard;
Explore o Storyboard e Interface Builder;
Importe sua primeira imagem;
Construa o botão inicial;
Rode sua aplicação no simulador de sua preferência.
Caso já tenha feito esses passos, excelente. Se ainda não, é importante que você execute o que foi visto nos vídeos para poder continuar com a próxima aula.

O ideal é que você tente replicar os passos por conta própria para validar seu aprendizado. Porém, caso tenha dificuldade, fique à vontade para dar uma olhadinha nos vídeos!
Vamos lá?

Opinião do instrutor

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-01

@@09
Para saber mais: Storyboard e acessibilidade

O Storyboard é uma ferramenta drag and drop, ou seja, de arrastar elementos na tela. Entendemos que isso pode dificultar a acessibilidade de pessoas cegas e com baixa visão.
Assim, uma alternativa é utilizar o voice over. O Voice Over é um recurso de acessibilidade integrado a sistemas operacionais da Apple, que pessoas com baixa visão ou cegas possam interagir com o dispositivo através de áudio. Ele fala o que está na tela, incluindo elementos de interface, textos, botões, entre outros, tornando o dispositivo mais acessível para esses usuários.

Nós, como desenvolvedores, precisamos sempre pensar na acessibilidade da nossa aplicação, com o objetivo em torná-la acessível para todos os usuários.

Também, é possível construir aplicativos iOS só com código, porém, isso foge ao escopo desse curso dada a complexidade de desenvolver dessa maneira em um primeiro momento.

https://support.apple.com/pt-br/guide/voiceover/vo2682/mac#:~:text=You%20can%20also%20turn%20VoiceOver,then%20press%20the%20Space%20bar

@@10
O que aprendemos?

Nessa aula, você aprendeu como:
Diferenciar os frameworks SwiftUI e UIKit: neste curso usaremos o UIKit por motivos de uso no mercado;
Criar seu projeto no Xcode: para desenvolver seus projetos iOS;
Adicionar elementos no storyboard com o uso do interface builder;
Alterar atributos de elementos, por exemplo, cor de fundo da tela.
Ótimo, não é mesmo? Vejo você na segunda aula!

#### 18/07/2023

@02-Constraints, ações e navegação

01
Projeto da aula anterior

Você pode acompanhar o passo a passo do desenvolvimento do nosso projeto no Github e, caso deseje, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-01

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/archive/refs/heads/aula-01.zip

@@02
Constraints e autolayout

Desenvolvemos a primeira tela do nosso aplicativo, mas vou mostrar um fato curioso para vocês agora. Eu desenvolvi o aplicativo com base no Iphone 14 Pro, vai depender da versão do XCode que vocês estarão utilizando.
Na parte inferior esquerda da janela, temos na barra de menu a opção "Iphone 14 Pro" selecionada. Clicando nela, aparece as opções de novos dispositivos, onde escolheremos o "Iphone SE", que é a última opção da esquerda para direita.

O layout não ficou legal no Iphone SE. Inclusive tínhamos centralizado a imagem e o botão, mas eles acabaram ficando muito para direita, o que é um comportamento estranho.

Vamos centralizar novamente a imagem e diminuir o tamanho dela. Fazendo isso, percebemos que ela está com bastante espaço em branco, o que é desnecessário. Clicando e arrastando o círculo centro superior para baixo, conseguimos diminuir esse espaço em branco e podemos centralizar a imagem. Também podemos centralizar o botão em seguida.

Feito isso, podemos selecionar mais uma vez o "Iphone 14 Pro" no menu inferior esquerdo. Com a mudança, notamos que o layout ficou muito à esquerda dessa vez. Isso acontece porque o centro do Iphone SE não é o mesmo do Iphone 14 Pro, justamente porque eles possuem tamanhos diferentes. Precisamos resolver isso, porque esse não é o comportamento esperado.

Queremos que nosso aplicativo funcione corretamente em todos os Autolayout. Esse é um sistema usado para desenvolver layouts de aplicativos iOS com base em regras de relação de posicionamento entre os elementos.

A primeira coisa que faremos é centralizar horizontal e verticalmente o botão, então clicamos no botão. Depois, no lado inferior direito da janela, observamos cinco ícones, que usaremos para trabalhar nas regras de posicionamento, chamadas de Constraints, algo que veremos bastante ao longo desse curso.

Se deixarmos o mouse sobre o segundo ícone da esquerda para direita, descobriremos que o nome dele é align. Clicando nele, abre uma janela flutuante acima dele, e nela tem caixa de seleções ao lado esquerdo das opções que podemos marcar.

Essas opções são a de alinhar horizontalmente e a de alinhar verticalmente conforme o Container, que é nossa tela. Marcamos as duas, clicamos no botão "Add to Constraints" (Adicionar às regras) na parte inferior da janela.

Percebemos que o botão que criamos centralizou tanto verticalmente, quanto horizontalmente. Inclusive ele reduziu o tamanho, mas iremos arrumar isso depois.

Nosso botão está alinhado no Iphone 14 e, ao voltarmos para o Iphone SE, percebemos que ele está alinhado também. A diferença é que a fonte bugou um pouco no Iphone SE, quebrando o texto "Iniciar Quiz" em duas linhas. Isso porque ela está um pouco grande para essa tela, mas tudo bem.

Voltando para o Iphone 14 Pro, notamos que a fonte bugou também, porém resolvemos isso diminuindo um pouco a fonte e aumentando novamente. Com isso o texto volta a ficar em apenas uma linha novamente. Esses bugs às vezes acontecem no XCode, mas não tem problema.

Centralizamos o botão, agora precisamos mexer na imagem. Primeiramente vamos centralizá-la horizontalmente, então clicaremos no botão "align" e marcaremos a caixa de seleção de centralizar horizontalmente. Não alinharemos alinharmos verticalmente porque ficaria no mesmo lugar do botão, e não é o que queremos.

Adicionamos essa constraint à imagem, mas ela ficou com as bordas horizontais marcadas em vermelho. Isso significa que está faltando um constraint, ou seja, uma regra, e precisamos adicionar.

Pensem que alinhamos apenas horizontalmente, mas ainda falta uma regra de posicionamento verticalmente. E o que podemos fazer? Nesse caso, queremos que a parte de baixo da imagem esteja a uma distância de 42px da parte superior do botão.

Para isso, clicaremos no terceiro ícone da parte inferior direita, que abre a janela flutuante "Add New Constraints (Adicionar novas regras)" acima do ícone. Nela conseguimos identificar quais são as regras do elemento selecionado, ou seja, a imagem.

Reparem que na parte superior da janela tem um quadrado preto no centro cercado por quatro campos de números. Esses quatro campos são referentes às bordas do elemento: a do topo, da direita, da esquerda e a inferior.

Se queremos que a parte inferior da imagem esteja a 42px de distância do topo do botão, ativaremos a constraint inferior. Então vamos clicar na linha vertical vermelha entre o quadrado preto e o campo inferior e, ao fazermos isso, ela passa de um vermelho mais opaco para um mais intenso.

Depois escrevemos o valor no campo inferior, que é 42, e clicamos em uma seta que tem no lado direito desse campo. Com isso, um menu flutuante abre e, ao final dele, podemos escolher com qual elemento queremos que essa medida se relacione.

Como queremos que esteja a 42px do nosso botão, selecionamos a opção "Iniciar Quiz". Se fosse 42px da parte inferior da tela, selecionaríamos "View" ou "Safe Area" (Área segura), que é a área segura da tela. Isso porque, quando estamos mexendo com Iphone, temos a parte superior com as informações de horário, a porcentagem da bateria.

Então não podemos desenvolver tão perto das extremidades superior e inferior da tela, deixando os elementos dentro da área segura. Contudo, no nosso caso, queremos que a distância seja em relação ao botão, então selecionamos o "Iniciar Quiz".

Feito isso, escreveremos 42 novamente, porque, ao clicar, ele pode retornar o valor para distância atual. Em seguida, clicamos no botão na parte inferior da janela flutuante, escrito "Add 1 Constraint (Adicionar 1 regra)". Assim reparamos que a imagem fica na distância de 42px do botão.

A última constraint que adicionaremos nesse vídeo é para arrumarmos o botão, que queremos que tenha uma altura e uma largura maiores. Não deixaremos esse tamanho fixo, mas sim com base no tamanho da tela. Dessa forma, clicaremos novamente no terceiro ícone da parte inferior direita, o ícone para adicionar regras (constraints).

Com o menu "Add New Constraints" aberto, escreveremos 64 no campo da esquerda, que é a constraint chamada de leading, e 64 no campo da direita, que é a constraint chamada de tralling. Esses valores serão conforme a tela, então clicaremos no botão "Add 2 constraints" na parte inferior.

Percebam que, ao fazermos isso, nosso botão aumentou de largura, porque informamos que o espaçamento dele em relação às bordas laterais da tela tem que ser 64px. E para ajustarmos um valor da altura desse botão, clicamos novamente no ícone para adicionar constraints.

No menu "Add New Constraint", marcamos a caixa de seleção do "Height" (Altura), que fica abaixo dos campos de margem e, ao lado direito teremos o campo para definir o valor da altura, que será 62. Em seguida, clicamos no botão "Add 1 constraint" e temos o valor de altura do nosso botão ajustado, gerando um botão muito mais bonito.

Nesse vídeo aprendemos mais sobre constraints e autolayout, que utilizaremos bastante durante esse curso. Então não se preocupem que vocês verão outros exemplos.

@@03
Conhecendo @IBAction e @IBOutlet

Eu tenho uma pergunta para fazer a vocês: como podemos capturar o toque em um botão? Por exemplo, quando o usuário está mexendo no aplicativo e pressiona um botão, eu quero que, no Console, recebamos uma mensagem como "O botão foi pressionado". Como fazer isso? Onde está o código da nossa aplicação?
Estamos aprendendo bastante sobre storyboard e elementos arrastados para a tela, mas ainda não vimos o que precisamos fazer com o código. A primeira coisa que faremos é criar uma conexão entre os objetos da nossa tela com o código.

Lembrem-se que mencionei que para cada tela existe uma ViewController relacionada. É exatamente com ela que trabalharemos agora. Dessa forma, abriremos o storyboard em uma parte da tela e o código em outra parte da tela.

Para isso, clicaremos em no segundo ícone do canto superior direito do storyboard, logo abaixo do ícone para abrir os elementos do storyboard. Esse ícone é formado por várias listras horizontais e, ao clicarmos nele, um menu flutuante aparece na parte com diversas opções.

Selecionamos a opção "Assistant", que abre, ao lado esquerdo, o código da ViewController relacionado a essa tela. Assim acabamos com muitas coisas abertas no XCode, sendo assim, minimizaremos algumas delas.

Começaremos minimizando os Arquivos, clicando no canto superior esquerdo da janela. Feito isso, à esquerda fica apenas o menu de constraints, que eu ainda não havia mencionado. Nele aparecem todas as constraints relacionadas ao botão e à imagem.

Também vamos ocultá-lo, clicando no canto no botão "Hide document outline" (Ocultar documento da borda), localizado no canto inferior direito do menu. Por fim esconderemos o painel de atributos, clicando no canto superior direito da janela. Feito isso, limpamos a tela e ficamos apenas com o storyboard, no lado esquerdo, e o código referente à tela no lado direito do XCode.

Como eu falei, precisamos criar uma conexão entre os elementos da tela com o código, então clicaremos no botão "Iniciar Quiz", pressionaremos "Ctrl" no teclado e, com a tecla pressionada, arrastaremos o botão para o código. Com isso, uma linha azul saindo do botão e indo para o código aparece e quando soltamos o mouse uma pequena janela aparece no centro da tela.

O primeiro atributo nessa janela é o Connection (Conexão), que é um Outlet. Ao clicarmos nessa opção, abre-se um menu, e notamos que a connection também pode ser uma Action (Ação). E qual a diferença entre as duas?

Quando escolhemos o "Outlet", significa que estamos fazendo a conexão de apenas um elemento, por exemplo, estamos criando o elemento "botão" no nosso código. Quando escolhemos o "Action" (Ação), significa que estamos conectando uma ação específica desse elemento, como o toque de um botão. Escolheremos a opção "Action" para entendermos como funciona.

No campo "Name" (Nome) escreveremos "botaoPressionado". Sempre tentem ser concisos e explicar o que essa ação faz. No campo "Type" (Tipo) manteremos como "Any" (Qualquer). O campo seguinte é a propriedade "Event" (Evento), definida como "Touch Up Inside" (Tocado por dentro), que é o evento padrão quando pressionamos um botão.

Com as propriedades definidas, podemos clicar no botão "Connect" (Conectar) no canto inferior da janela. Feito isso, uma nova função aparece na linha 12, com a marcação @IBAction, por se tratar de uma ação. Então ficou @IBAction func botaoPressionado(_ senders: Any) {}, e dentro dessa função, podemos escrever print("O botão foi pressionado!").

@IBAction func botaoPressionado(_ senders: Any) {
    print("O botão foi pressionado!")
}COPIAR CÓDIGO
Voltando a pressionar o "Ctrl", clicaremos no botão e arrastaremos novamente para o código, mas dessa vez deixarei a conexão como "Outlet" para vocês verem a diferença. No campo "Nome", escrevemos "botaoIniciarQuiz" e o "Tipo" será "UIButton", que é uma classe que representa um botão.

Lembrete: É extremamente importante nomear bem as variáveis no código.
Feito isso, clicamos no botão "Conectar" no canto inferior direito da janela. Assim, aparece um novo código na linha 12, que não é mais uma função, e sim um atributo da classe ViewController.

@IBOutlet weak var botaoIniciarQuiz: UIButton!COPIAR CÓDIGO
Quando utilizamos o "Outlet", ele apenas faz uma referência ao elemento, no caso, o botão, enquanto o "Action" é usado para fazermos uma ação relacionada ao elemento. Outro fato importantíssimo de ser mencionado é o que acontece ao editarmos as propriedades de um botão,

Voltando a abrir o "Inspecionar elemento", clicando no canto superior direito da janela, notamos que alteramos a cor de fundo e o tamanho da fonte, tudo feito pelo storyboard e pelo painel de atributos. Entretanto, poderíamos fazer também por código, porque o outlet é o próprio botão.

Esse botão, que possui a classe UIButton!, possui também diversos atributos e métodos. Um exemplo, nós não conseguimos arredondar os cantos do botão pelo painel de atributos do storyboard, ou seja, precisamos fazer isso através do código.

Eu não cheguei a explicar o código da linha 10, o class ViewController: UIViewController. Nele temos a classe ViewController, que herda de outra classe, chamada UIViewController, e ela possui todos os métodos e atributos de uma view, sendo que anteriormente já aprendemos sobre classes, atributos e métodos.

A view é a tela, ou seja, a ViewController, e o método viewDidLoad() sempre será chamado quando a view for carregada. Dentro desse método, na linha 19, tem um comentário falando "Do any additional setup after loading the view." (Faça qualquer ajuste adicional após carregar a view).

Na linha 20, após o fechamento do método viewDidLoad, pressionaremos "Enter" duas vezes e, na linha 22, criaremos a func configuraLayout. Em seguida, na linha 19, no lugar do comentário, chamaremos essa função.

//código omitido

    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()

    }


    func configuraLayout() {
    }COPIAR CÓDIGO
Eu gosto de criar muitas funções para deixar o código bastante organizado. Sendo assim, dentro da função configuraLayout() iremos arredondar os cantos do botão. Como faremos isso?

Temos o botaoIniciarQuiz na linha 12, representando nosso botão. Então vamos chamá-lo na linha 23 junto com uma propriedade dele, a layer (camada). Dentro dessa propriedade, chamaremos outra propriedade, a cornerRadius, para arredondarmos os cantos, e definiremos o valor como 12.0. Sendo assim, escrevemos:

    func configuraLayout() {
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }COPIAR CÓDIGO
Um ponto importante a ser dito é que não conseguimos visualizar essa modificação na tela do storyboard. Ela só é visível quando executamos o projeto, e é o que faremos.

Podemos executar clicando no "▶", um botão que fica na parte superior direita da janela, ou usando o "Command + R". Esse processo de build pode demorar um pouco, dependendo da sua máquina, então não se assustem.

Com o emulador rodando o nosso projeto, reparamos que nosso botão está com as bordas arredondadas, assim como queríamos. Ao pressionarmos o "Iniciar Quiz" e voltarmos para o "XCode", recebemos a mensagem "O botão foi pressionado!" no Console, ou seja, ele pegou a ação da linha 14.

Agora aprendemos como iremos escrever os códigos e como conectamos elementos do storyboard com o código.

@@04
Conectando elementos no código


PRÓXIMA ATIVIDADE

Descobrimos como conectar os elementos do Storyboard com o código da respectiva tela, permitindo o acesso e manipulação das propriedades desses elementos da interface do usuário no nosso código, além de permitir também a configuração de ações para esses elementos, como por exemplo o toque em um botão.
Diante disso, para criarmos um botão com borda arredondado, como fazemos? Selecione as práticas verdadeiras:

Para configurar o botão de borda arredondada, precisamos conectar o botão via código através da opção @IBOutlet e alterar a propriedade que adiciona as bordas arredondadas, que é definida por layer.radiusCurve.
 
Alternativa correta
Para configurar o botão de borda arredondada, precisamos conectar o botão via código através da opção @IBOutlet e alterar a propriedade que adiciona as bordas arredondadas, que é definida por layer.cornerRadius.
 
Isso mesmo! A opção outlet serve para conectarmos um elemento no nosso código, enquanto a propriedade layer.cornerRadius define um valor para os cantos arredondados do botão.
Alternativa correta
Podemos alterar essa opção no menu lateral de propriedades oferecido pelo Interface Builder;
 
Alternativa correta
Precisamos conectar o botão via código através da opção @IBAction

@@05
Criando a segunda tela e navegando entre elas

Terminamos nossa primeira tela. Agora precisamos dar continuidade, criando a segunda tela: a tela de questões.
Clicaremos no botão de "+", na parte superior, para abrirmos a biblioteca de elementos do storyboard. Depois escreveremos "view controller" para criarmos uma nova tela, já que até o momento só temos uma. Clicamos no "view controller" e depois arrastamos para o storyboard.

Agora temos duas telas, mas ao clicarmos na segunda tela, na metade direita da tela aparece um código muito estranho. Isso acontece porque não existe nenhuma UIViewController ligada a essa tela.

Lembrem-se que eu falei que toda tela do storyboard precisa ter uma View Controller ligada a ela, então criaremos uma nova ViewController. Para isso, no lado esquerdo, onde temos a estrutura de arquivos, clicaremos com o botão direito sobre a pasta "IQuiz" e selecionar "New File" (Novo Arquivo).

Uma janela se abre no centro da tela e nela selecionamos a opção "Cocoa Touch Class", e logo explicarei o porquê. Clicamos em "Next" (Próximo), no canto inferior direito, e a janela atualiza para um formulário com três propriedades: Class (Classe), Subclass of (Subclasse de) e Language (Linguagem).

No campo "Subclass of" está selecionada a opção "UIViewController" e, clicando nela, abre-se um menu flutuante com todas as classes disponíveis. A opção "UIViewController" precisa estar selecionada nesse campo, então se no XCode de vocês estiver diferente, basta selecioná-la.

Fazendo isso, ele cria um arquivo pronto com uma classe que herda de UIViewController. Sendo assim, o nome dessa classe, ou seja, o campo "Class", não pode ser "ViewController", porque já existe um arquivo com esse nome, portanto mudaremos para "QuestaoViewController". A linguagem permanece como "Swift".

Clicamos em próximo, a janela atualiza novamente e então escolhemos o local onde queremos salvar a classe. Como já abriu na pasta do projeto, eu vou apenas clicar em "Create" para criar o código.

Fazendo isso, o XCode abre o arquivo com a classe QuestaoViewController com o método viewDidLoad, disparado quando a View é carregada de fato. Então está tudo pronto para nós, diferente de criarmos um arquivo Swift, onde teríamos que escrever todos esses códigos, ou seja, poupamos tempo.

No menu de arquivos do lado esquerdo, nós clicaremos no "Main", onde voltamos para o storyboard. Precisamos conectar a ViewController do storyboard com o arquivo "QuestaoViewController". Dando um zoom sobre a tela branca, notaremos uma barra com três pequenos botões. Clicaremos no primeiro deles, que corresponde ao "view controller".

Ao fazemos isso, o painel de inspetores, na lateral direita da janela, atualiza. Na parte superior dela tem vários ícones. O quinto ícone da esquerda para direita, formado por uma lista de sliders, é onde clicamos para abrir o painel de atributos, onde mudamos algumas coisas em relação à tela.

Já o quarto ícone da esquerda para direita, é referente ao inspetor de identidade, que é onde ligaremos o arquivo que acabamos de criar com a ViewController. No começo desse painel tem o campo "Class" (Classe), onde escreveremos a classe que acabamos de criar, no caso, a "QuestaoViewController", a classe que vai controlar essa tela.

Quando pressionamos "Enter", notamos que a aba de código já mudou. O código estranho sumiu e apareceu o código da QuestaoViewController como esperávamos.

Agora mudaremos a cor de fundo dessa tela, porque não queremos que ela seja branca. Usaremos a mesma cor da primeira tela, então clicaremos na primeira tela e voltaremos para o painel de atributos, clicando no quinto ícone da parte superior da aba da direita.

Nele clicaremos na cor do "background" para abrir o editor de cores na parte inferior, onde copiaremos o código hexadecimal que é o "521EC2". Depois clicaremos na tela branca e, no painel de atributos, clicaremos no campo "Background" e na cor branca.

O editor de cores abre na parte inferior do painel, e a opção selecionada na parte superior do editor é a greyscale slider. Clicando nela, abrimos um menu onde selecionaremos a opção "RGB Sliders", que é a segunda. Nessa opção temos o campo "Hex Color" na parte inferior direita, onde iremos colar o código que copiamos. Assim temos a nossa segunda tela.

Agora precisamos conectar as duas telas, porque queremos ir para segunda tela ao clicarmos no botão "Iniciar Quiz". Quando falamos de navegação entre telas, existe uma classe responsável por tudo isso, que é UINavigationController. Essa classe vai gerenciar todas as navegações da nossa aplicação, então precisamos adicioná-la ao nosso código para tudo funcionar corretamente.

Vamos clicar no ícone de View Controller na barra de acima da primeira tela. Em seguida, na barra superior da janela, clicaremos em "Editor > Embed In > Navigation Controller".

Observem que aparece uma tela à esquerda da primeira tela, mas não mexeremos nela. Ela representa a Navigation Controller, ou seja, a tela que irá gerenciar todas as navegações entre telas.

Vamos executar o código do nosso aplicativo e, quando ele abre, reparamos que não houve nenhuma modificação da tela inicial, porque a tela Navigation Controller não tem nenhum efeito visual sobre a nossa aplicação. Agora precisamos fazer que sempre que pressionarmos o botão "Iniciar Quiz", a segunda tela apareça.

Para isso, pressionaremos a tecla "Ctrl", clicaremos no botão "Iniciar Quiz", da primeira tela, e arrastaremos ele para segunda tela. Quando soltamos o clique, aparece um menu flutuante com todas as possibilidades de ação que podemos realizar quando mudamos de uma view controller para outra.

Por exemplo, a Show (Mostrar) é uma ação onde a tela vai simplesmente aparecer. Se clicarmos em Present Modaly (Apresentar Modal), significa que irá abrir como um modal, já o Present as Popover Apresentar Popover) vai mostrar a tela como Popover.

Esses são alguns dos diferentes tipos de exibição do iOS. Clicaremos no "Show", que é a exibição padrão. Observem agora que no storyboard há uma seta cinza claro conectando a primeira view controller à segunda. Inclusive, na segunda view controller apareceu um botão no canto superior esquerdo escrito "Voltar", que é uma característica da navigation controller.

Como eu comentei, a navigation controller gerencia todas as navegações, e com ela conseguimos ir para próxima página, voltar para tela anterior, descobrir em qual página estamos, entre outros métodos envolvendo a navegação. Então ao executaremos esse código novamente, pressionando "Command + R", e voltaremos para o emulador.

Quando a aplicação abre, podemos clicar no botão "Iniciar Quiz" e, com isso, mudamos para outra tela, onde aparece o botão de voltar em azul no canto superior direito da tela. Quando clicamos nesse botão de voltar, retornamos para tela inicial.

Agora entendemos como funciona a navegação de telas. Espero vocês no próximo conteúdo para continuarmos desenvolvendo o layout da tela de questão.

@@06
Desafio: propriedades da tela via código

Você já alterou diversas propriedades de um elemento - que poder uma imagem, um texto e muito mais e que chamamos de view - pelo Interface Builder do Storyboard, como cor de fundo, tamanhos de fontes, entre outros.
E você também alterou essas propriedades via código, por exemplo, adicionou a propriedade que arredonda as bordas de um botão.

Agora, faça uma pesquisa e procure entender como alterar outras propriedades via código, como a propriedade cor de fundo. Se você precisasse alterar a cor de fundo do botão da tela inicial de forma programática, ou seja, via código, como você faria isso?

Compartilhe seu código lá no discord com a gente!

Para alterar a cor de fundo do botão da tela inicial de forma programática, você pode fazer da seguinte forma:
botaoIniciarQuiz.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)COPIAR CÓDIGO
Vamos entender o código acima!

O elemento botaoIniciar possui uma propriedade chamada de backgroundColor, que é do tipo UIColor. Se você pressionar a tecla option e clicar logo acima de ‘backgroundColor’ conseguirá verificar o seu tipo.

Infelizmente, nós não conseguimos colocar a cor em hexadecimal de forma programática. Hexadecimal seria o valor #7432FF, igual está no Figma. Conseguimos colocar a cor de diversas outras formas, e uma delas é através do sistema RGB (red, green, blue).

Portanto, estamos inicializando uma classe UIColor que recebe 4 parâmetros diferentes: red, green, blue, alpha :

Red é a quantidade de vermelho em uma cor;
Green é a quantidade de verde;
Blue é a quantidade de azul.
No código, essas quantidades são representadas de 0 até 1, porém, se você observar no Figma, verá que a cor RGB está como (116, 50, 255), pois, nesse caso, o valor vai de 0 até 255. Por esse motivo, precisamos dividir os valores por 255 no código.

A última propriedade, alpha, é referente à opacidade da cor, que também vai de 0 a 1, sendo 0 transparente e 1 com sua cor total.

Fez sentido?

@@07
Faça como eu fiz: adicione constraints e crie uma segunda tela

Agora é a sua vez!
Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Portanto:

Defina constraints (regras de posicionamento e tamanho) para os elementos (botões e imagens, por exemplo);
Conecte o elemento do botão ao código através do @IBOutlet;
Crie uma ação qualquer para este botão através do @IBAction (mesmo que seja apenas um print no console);
Crie uma segunda View Controller, que representará a tela de questões;
Faça a navegação entre telas.
Caso já tenha feito esses passos, excelente. Se ainda não, é importante que você execute o que foi visto nos vídeos para poder continuar com a próxima aula.

O ideal é que você tente replicar os passos por conta própria para validar seu aprendizado. Porém, caso tenha dificuldade, fique à vontade para dar uma olhadinha nos vídeos!
Vamos lá?

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-01

@@08
Para saber mais: documentação do iOS

Você pode conferir a documentação do iOS clicando aqui. A Apple também oferece diversos tutoriais e artigos para você complementar os seus estudos.

@@09
O que aprendemos?

Nessa aula, você aprendeu como:
Utilizar de constraints (regras de posicionamento e tamanho de elementos) para criação de layouts;
Adicionar elementos do storyboard no código, bem como suas ações;
Realizar navegação entre telas pelo storyboard;
Criar uma nova ViewController, ou seja, uma nova tela do aplicativo.
Concluímos a aula 2! Vejo você na próxima aula!

#### 19/07/2023

@03-Tela de questão

@@01
Projeto da aula anterior

Você pode acompanhar o passo a passo do desenvolvimento do nosso projeto no Github e, caso deseje, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-02

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/archive/refs/heads/aula-02.zip

@@02
Construindo o layout base da tela de questão

A primeira coisa que faremos para melhorarmos o layout será esconder o botão de voltar na tela de questão.
Tela de questão com o plano de fundo na cor roxa em um iPhone 14 Pro. Na parte superior esquerda há um botão "Back" escrito na cor azul escuro.

Isso porque quando a pessoa usuária pressiona o botão "Iniciar Quiz", desejamos que não seja possível retornar à tela inicial. Portanto, vamos esconder esse botão de voltar. Como adicionamos uma NavigationController responsável por gerenciar tudo relacionado à navegação, isso é possível.

No arquivo QuestaoViewController, dentro da viewDidLoad acessaremos um atributo da NavigationController, sendo o navigationItem. Na sequência deste, colocamos um ponto e colocamos o atributo hidesBackButton, e igualamos isso a true.

Ao fazermos isso, estamos solicitando que o botão seja escondido.

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

            override func viewDidLoad() {
        super.viewDidLoad()

                navigationItem.hidesBackButton = true

                }
// trecho de código suprimidoCOPIAR CÓDIGO
Após isso, executamos o código. Seremos redirecionados para a tela inicial do quiz e clicamos no botão "Iniciar Quiz", assim, somos redirecionados para a tela de questões. Note que o botão "Back" no canto superior esquerdo não consta mais.

Tela de questão com o plano de fundo na cor roxa em um iPhone 14 Pro. 

Voltando ao XCode, temos um aviso no console:

Por fins didáticos, o aviso não será exibido por completo
[Assert] UiNavigationBar decoded as unlicked for UiNavigationController, or navigationBar delegate set up incorrectly. Inconsistent configuration may cause problemas.
…

Caso você também tenha recebido esse aviso, não se preocupe muito. Eu realmente acho que seja algum bug do XCode na versão 14, algumas pessoas relataram sobre esse aviso também. Vamos apenas ignorar.

Agora, vamos construir o layout da nossa tela de questões!

Iniciaremos adicionando um texto na nossa tela. Para isso, selecionamos a tela de questões e clicamos no ícone para abrir a biblioteca de elementos. Nela, selecionamos "Label" do lado esquerdo e arrastamos para a nossa tela de questões.

Com o label selecionado, do lado direito ao invés de "Label" escrevemos "Título da Questão". Não se preocupe muito com os nomes, alteraremos isso de forma dinâmica mais para frente.

Ainda do lado direito, em "Color", vamos escolher a opção "White Color". Na tela, vamos centralizar a label (mais adiante usaremos constraints para isso).

Agora, vamos alterar o tamanho da fonte. Do lado direito, em "Font", clicamos na caixa de texto e preenchemos as informações com os seguintes dados:

Font: System - System
Style: Semibold
Size: 32
Em seguida, clicamos em "Done".

Observe que a nossa tela de questões possui um fundo na cor roxa, e agora também contém o texto "Título da Questão" escrito na cor branca, centralizado na tela.

A partir disso, vamos adicionar os botões. Visualizando no Figma, temos três respostas diferentes, e, portanto, vamos acrescentar três botões.

No canto superior direito, abriremos a biblioteca e selecionaremos e arrastaremos o "Button" para a nossa tela de questões.

Selecionando o "Button" na tela, do lado direito serão exibidos os atributos. o campo abaixo de title, ao invés de "Button" colocaremos "Resposta 01".

Descendo a seção dos atributos do botão do lado direito, vamos em "Tint" e escolhemos a opção "White Color" para o texto. Depois vamos em "Background > Custom" e em "Hex Color" colocamos o código 7432FF.

Observe que agora o nosso botão "Resposta 01" possui um preenchimento retângular mais destacado, em uma cor mais lilás.

Vamos alterar o tamanho da fonte do botão "Resposta 01". Do lado esquerdo, vamos em "Font" e colocamos as seguintes informações:

Font: System - System
Style: Regular
Size: 22
Em seguida, clicamos em "Done".

Observe que a fonte com o texto "Resposta 01" está mais preenchida no retângulo do botão. Faz mais sentido um tamanho maior.

Agora, podemos copiar e colar o botão mais duas vezes! Basta selecionarmos "Command + C" (ou "Ctrl + V" no Windows) selecionando o botão "Resposta 01" e depois "Command + V" ("Ctrl + V"). Isso duas vezes, dado que são mais dois botões.

Logo após, basta centralizarmos as três respostas uma abaixo da outra. Como as três estão com o texto "Resposta 01", vamos alterar as duas últimas para "Resposta 02" e "Resposta 03".

Tela do aplicativo preenchida com a cor roxa de fundo. Na parte superior esquerda temos um botão com o texto "Back" na cor azul escuro com uma seta apontada para a esquerda do lado esquerdo. Abaixo e centralizado na tela, temos o título chamado atualmente de "Título da Questão" escrito na cor branca; abaixo deste, temos as três respostas com os respectivos textos: Resposta 01, Resposta 02 e Resposta 03. Todos estão preenchidos com uma cor em um tom mais claro que o fundo da tela, voltado para o lilás, com o texto escrito na cor branca.

Pronto! Estamos com a estrutura da nossa tela de questões criada, agora vamos trabalhar com as constraints para alinhar os elementos.

Te espero para o próximo conteúdo!

@@03
Inserindo constraints

Agora precisamos criar as constraints. Iniciaremos pelo título da questão, observe as constraints que colocaremos aqui.
No canto inferior clicaremos no ícone de constraints, e na janela intitulada "Add New Constraints" colocaremos uma de 112 para o topo e nas laterais, colocaremos 64 na esquerda e na direita (isso em relação à nossa tela). Logo após, clicamos em "Add 2 Constraints".

Observe na tela do aplicativo que o título moveu um pouco. Nos botões, temos três:

Resposta 01
Resposta 02
Resposta 03
Selecionando o "Resposta 1" abriremos as Constraints. Esse primeiro botão terá um espaçamento de 72 na margem inferior do título da questão, e um espaçamento 64 para a lateral esquerda e direita.

Clicando na seta para baixo ao lado do número de espaçamento 72, o título da questão está marcado com um check ("√"). Precisamos digitar novamente o 72, dado que ele altera quando selecionamos.

Clicando na seta para baixo ao lado do número de espaçamento 64 do lado esquerdo, o Safe Area (em português, "área segura") da tela que está marcado, ele está marcado com um check ("√"). Perceba que ele até nos exibe a distância atual do elemento com a safe area.

Na próxima seção, temos "Width" (em português, "Largura") e "Height" ("Altura"). Vamos alterar a altura para 62; a largura deixaremos com 141.

Width: 141
Height: 62
Logo após, clicamos no botão "Add 4 Constraints".

Observe que agora temos a nossa tela intitulada "Título da Questão", com três respostas abaixo: Resposta 01, Resposta 02 e Resposta 03. Note que a resposta um está com um preenchimento maior agora, sendo as outras estão com um preenchimento em um tamanho menor.

Selecionando "Resposta 02" e depois o ícone de constraints, colocaremos que na margem inferior do botão 01 terá um espaçamento de 32; já nas laterais colocamos 64.

Na seção seguinte, temos "Width" e "Height" (marcado no checkbox). Vamos alterar a altura para 62; a largura deixaremos com 144.

Width: 144
Height: 62
Logo após, clicamos em "Add 4 Constraints".

Agora o nosso segundo botão está do mesmo tamanho que o botão 01, e possuem uma distância de 32 entre eles.

Agora vamos clicar na "Resposta 03" e depois o ícone de constraints. Colocaremos que na margem inferior do botão 01 terá um espaçamento de 32; já nas laterais colocamos 64.

Na seção seguinte, temos "Width" e "Height" (marcado no checkbox). Vamos alterar a altura para 62; a largura deixaremos com 144.

Width: 145
Height: 62
Podemos notar que ele sempre pega o elemento mais próximo. Por exemplo, nesse caso, para a constraint do topo ele pega a "Resposta 02", sendo o elemento mais próximo. Por isso, já está selecionado da forma correta.

Logo após, clicamos em "Add 4 Constraints".

Tela do aplicativo preenchida com a cor roxa de fundo. Na parte superior esquerda temos um botão com o texto "Back" na cor azul escuro com uma seta apontada para a esquerda do lado esquerdo. Abaixo e centralizado na tela, temos o título chamado atualmente de "Título da Questão" escrito na cor branca; abaixo deste, temos as três respostas com os respectivos textos: Resposta 01, Resposta 02 e Resposta 03. Todos estão preenchidos com uma cor em um tom mais claro que o fundo da tela, voltado para o lilás, com o texto escrito na cor branca.

As constraints estão funcionando, agora precisamos conectar esses elementos ao nosso código.

Até mais!

@@04
Conectando os botões e ajustando cantos arredondados

O primeiro elemento que conectaremos ao código será o título da questão.
Para isso, na tela de questão do nosso aplicativo clicamos em "Título da Questão", pressionamos a tecla "Ctrl" e arrastamos para o código do arquivo QuestaoViewController, do lado direito do XCode.

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

            override func viewDidLoad() {
        super.viewDidLoad()

            navigationItem.hidesBackButton = true

                }
// trecho de código suprimidoCOPIAR CÓDIGO
Observe que na janela exibida, temos os seguintes campos:

Connection: Outlet
Object: Questao View Controller
Name:
Type: UILabel
Storage: Weak
Em "name", digitaremos "tituloQuestaoLabel". Sejam bastante descritivos no nome para ficar intuitivo!

Connection: Outlet
Object: Questao View Controller
Name: tituloQuestaoLabel
Type: UILabel
Storage: Weak
Logo após, clicamos no botão "Connect", no canto inferior direito.

Agora precisamos conectar as ações dos nossos botões. Com essa finalidade, novamente pressionamos a tecla "Ctrl" sobre o primeiro botão de cima para baixo chamado de "Resposta 01" e arrastamos até o código do lado direito.

Uma vez arrastado, será exibida a janela para inserirmos os campos que já conhecemos. Preencheremos:

Observe que na janela exibida, temos os seguintes campos:

Connection: Action
Object: Questao View Controller
Name: respostaBotaoPressionado
Type: Touch Up Inside
Event: Weak
Arguments: Sender
Em seguida, clicamos no botão "Connect". Após isso, o código ficará:

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBAction func respostaBotaoPressionado(_ sender: Any) {
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            navigationItem.hidesBackButton = true

                }
// trecho de código suprimidoCOPIAR CÓDIGO
Mas vamos pensar: precisamos capturar as ações dos três botões, isso porque a pessoa usuária pode clicar em qualquer um deles no momento de escolher a resposta. Assim, ao invés de criarmos uma função para cada botão, desejamos colocar os três botões em uma única função.

Isso para nos ajudar a identificar quando a pessoa usuária seleciona a resposta para verificar se está correta ou não. Vamos analisar uma coisa interessante: vamos selecionar o segundo botão chamado de "Resposta 02", pressionar "Ctrl" e arrastar para a função respostaBotaoPressionado.

Observe que ao fazermos isso, a função exibe um destaque na cor azul. Podemos soltar. Faremos o mesmo processo para o botão chamado de "Resposta 03", pressionamos o "Ctrl", arrastamos e soltamos na função.

Agora, ao colocarmos o mouse por cima do círculo do lado esquerdo da linha 14, podemos visualizar que os três botões do nosso aplicativo estão destacados na tela do nosso aplicativo.

Isso significa que ao pressionarmos um botão, a função respostaBotaoPressionado será disparada. Por exemplo, se pressionarmos o primeiro botão, essa função será acionada; e se pressionarmos o segundo botão, também, e assim por diante.

Conseguimos diferenciar esses botões! Ao analisarmos as propriedades do botão denominado "Resposta 01" (para isso, precisamos pressionar o botão), percebemos que no menu lateral direito está com o último ícone selecionado, da esquerda para a direita. Nele, temos as seguintes seções com seus respectivos atributos (não serão exibidas todas as seções e atributos):

Triggered Segues
action
Outlet Collections
gestureRecognizers
Sent Events
Did End On Exit
Editing Changed
Editing Did Begin
…
Touch Up Inside
Colocando o mouse sobre o último ícone temos a mensagem "Show the Connections inspector" (em português, "Mostrar o inspetor de conexões"). Ou seja, é um inspetor de conexões, exibindo todas as conexões que estamos aplicando no elemento do StoryBoard para o código.

Caso você queira remover alguma conexão, basta selecionar o ícone de xis "X" no canto superior esquerdo, por exemplo, na caixa do lado direito do "Touch Up Inside". Mas não iremos remover nenhuma conexão agora.

Vamos ao painel de atributos, e em "View", temos uma Tag com um número um preenchido no campo. No meu caso está com o número um, pois já realizei essa alteração anteriormente; mas provavelmente, o seu estará com o número zero.

Essa tag funciona como um identificador, para sabermos qual o botão está sendo selecionado. Então, altere de zero para um caso esteja com a tag zerada.

Se clicarmos no botão "Resposta 02", a minha tag estará com o número dois; provavelmente a sua estará zerada, então insira o número dois. A mesma lógica se aplica para o botão "Resposta 03", precisamos ter o campo tag preenchida com o número três.

Vamos testar!

No código, dentro da função respostaBotaoPressionado exibiremos no console o sender.tag. Mas note: não aconteceu nenhum autocomplete do XCode e ele está nos comunicando o seguinte erro:

Value of type 'Any' has no member 'tag'
Cast 'Any' to 'AnyObject' or use 'as!' to force downcast to a more specific type to access members

Ou seja, o tipo "Any" (em português, "Qualquer") não possui nenhum membro tag. Isso porque nos parâmetros da nossa função recebemos um objeto do tipo Any, e na verdade precisamos alterar para UIButton.

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            navigationItem.hidesBackButton = true

                }

// trecho de código suprimidoCOPIAR CÓDIGO
Isso porque sabemos que estamos recebendo um botão. Logo, mudamos para UIButton e agora, se removermos o "tag" do print e simplesmente deixarmos sender., perceba que o XCode aciona o autocomplete, serão exibidas todas as propriedades e métodos de um botão. Mas deixaremos com o .tag.

Vamos executar o código!

Após rodarmos o código, na tela inicial do nosso aplicativo clicamos no botão "Iniciar Quiz"; seremos redirecionados para a tela de questões, onde clicamos no botão "Reposta 01".

Na sequência, voltamos ao XCode para visualizarmos o console. Nele, temos como retorno o número um.

O botão foi pressionado!
1

Esse número um é o valor da tag.

Voltando à nossa tela de questões do aplicativo, clicamos no botão "Resposta 02"; retornamos ao XCode, e temos como retorno no console o número 2:

O botão foi pressionado!
1

2

É dessa forma que vamos trabalhar para verificarmos a resposta da pessoa usuária. Aprenderemos mais sobre isso mais adiante, não se preocupe.

O nosso próximo desafio será arredondar as bordas dos botões. Ao invés de criarmos um outlet para cada botão (isso para evitar repetição de código), como podemos aplicar isso de forma mais eficiente?

Podemos criar uma coleção, um array de botões. Veremos agora como aplicar isso na prática.

No XCode, clicamos no primeiro botão "Resposta 01"; e então pressionar a tecla "Ctrl" e arrastar para o código do arquivo QuestaoViewController. Na janela exibida, temos:

Connection: Outlet
Object: Questao View Controller
Name:
Type: UIButton
Storage: Weak
Em "Connection" ao invés de "Outlet" colocaremos "Outlet Collection" que será uma coleção, nesse caso, de botões.

Connection: Outlet Collection
Object: Questao View Controller
Name: botoesRespostas
Type: UIButton
Storage: Weak
Logo após, clicamos em "Connect". Assim, o código ficará:

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBOutlet var botoesResposta: [UIButton]!

                     @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            navigationItem.hidesBackButton = true

                }

// trecho de código suprimidoCOPIAR CÓDIGO
Do lado esquerdo da linha da função botoesResposta, temos o círculo e ao colocarmos o mouse por cima, observe que o botão "Resposta 02" também estará selecionado, assim como o botão "Resposta 01".

Faremos a mesma coisa para "Resposta 03", selecionamos o círculo do lado esquerdo da linha da função botoesResposta e arrastamos segurando "Ctrl" para o botão "Resposta 03" na nossa tela de questões.

Com isso, notamos que os três botões estão selecionados e dentro dessa coleção de botões.

Você lembra como percorremos uma coleção (array)? Podemos usar o comando for. Logo, após a nossa viewDidLoad criaremos um método chamado de configurarLayout (igual fizemos na primeira tela).

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBOutlet var botoesResposta: [UIButton]!

                     @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            navigationItem.hidesBackButton = true

                }

                        func configurarLayout() { 

                        }

// trecho de código suprimidoCOPIAR CÓDIGO
Em seguida, copiamos a linha navigationItem.hidesBackButton = true e passamos para dentro da função configurarLayout; removemos essa linha de dentro da função viewDidLoad e passamos a função configurarLayout.

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBOutlet var botoesResposta: [UIButton]!

                     @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            configurarLayout()
                }

                        func configurarLayout() { 
                                navigationItem.hidesBackButton = true
                        }

// trecho de código suprimidoCOPIAR CÓDIGO
Eu, Giovanna, gosto bastante de separar as responsabilidades e acoplar o código.

Seguindo, dentro da função configurarLayout vamos percorrer esse array de botões. Para isso, escrevemos "for botao in botoesResposta{}"

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBOutlet var botoesResposta: [UIButton]!

                     @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            configurarLayout()
                }

                        func configurarLayout() { 
                                navigationItem.hidesBackButton = true
                                for botao in botoesResposta {

                                }
                        }

// trecho de código suprimidoCOPIAR CÓDIGO
Dentro do for, vamos alterar o arredondamento dos cantos desses botões. Para tal, digitamos "botao.layer.cornerRadius = 12.0".

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!

                     @IBOutlet var botoesResposta: [UIButton]!

                     @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
                            super.viewDidLoad()

                            configurarLayout()
                }

                        func configurarLayout() { 
                                navigationItem.hidesBackButton = true
                                for botao in botoesResposta {
                                botao.layer.cornerRadius = 12.0
                                }
                        }

// trecho de código suprimidoCOPIAR CÓDIGO
Em seguida, executamos o código.

Após aguardar a execução do código, na tela inicial do nosso aplicativo clicamos em "Iniciar Quiz"; e na tela de questões conseguimos observar que os botões estão mais arredondados nas arestas.

Tela do aplicativo preenchida com a cor roxa de plano de fundo. Centralizado na tela, temos o título chamado de "Título da Questão" escrito na cor branca; abaixo deste, temos as três respostas com os respectivos textos: Resposta 01, Resposta 02 e Resposta 03. Todos estão preenchidos com uma cor em um tom mais claro que o fundo da tela, voltado para o lilás, com o texto escrito na cor branca. As arestas dos botões estão mais arredondadas que nas telas anteriores, onde as arestas tinham um ângulo de noventa graus.

Com isso, criamos o layout da tela de questões. Agora, precisamos tornar as coisas mais dinâmicas, afinal, precisamos inserir as perguntas e respostas. É isso que faremos na sequência.

Até mais!

@@05
Auto Layout

No desenvolvimento do nosso aplicativo, vimos que precisamos criar os elementos e posicioná-los na tela de acordo com o protótipo de layout do Figma.
Assim, precisamos colocar os elementos de uma forma que eles funcionem em qualquer dispositivo, independente do tamanho de tela.

Como podemos resolver esse problema na prática?

Não precisamos utilizar o “Auto Layout”, já que os elementos se ajustam por padrão, sem precisarmos realizar nenhuma operação.
 
Alternativa correta
O “Auto Layout” é a solução, pois ajuda a calcular dinamicamente o tamanho e a posição de todas os elementos (views), com base nas restrições (constraints) colocadas.
 
Isso mesmo! Auto Layout é um sistema de layout que permite que você defina as relações entre os elementos na tela da sua aplicação iOS, ao invés de usar posições absolutas ou dimensões fixas. Assim, o layout será responsivo e funcionará em diferentes dispositivos.
Alternativa correta
Podemos adicionar constraints de posições para as 4 margens de um elemento, que são definidas como: top, bottom, left, right.
 
Alternativa correta
Para aplicar as regras de constraint e posicionar um botão, consideramos a posição dele em relação a um elemento (como um outro botão) próximo dele.
 
Isso aí! Podemos definir regras de posicionamento de um elemento em relação a outros elementos.
Alternativa correta
Com o Auto Layout, controlamos apenas a posição de uma determinada view, mas não o seu tamanho.

@@06
Faça como eu fiz: tela de questão

Agora é a sua vez! Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Portanto:
Adicione elementos na tela via interface builder;
Defina constraints para os elementos da tela;
Conecte os botões com o código através de uma coleção de @IBOutlet;
Conecte as ações dos botões com o código através do @IBAction.
Caso já tenha feito esses passos, excelente. Se ainda não, é importante que você execute o que foi visto nos vídeos para poder continuar com a próxima aula.

O ideal é que você tente replicar os passos por conta própria para validar seu aprendizado. Porém, caso tenha dificuldade, fique à vontade para dar uma olhadinha nos vídeos!
Vamos lá?

Opinião do instrutor

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-03

@@07
O que aprendemos?

Nessa aula, você aprendeu e praticou ainda mais sobre como:
Posicionar elementos conforme o layout do Figma com o uso de constraints;
Conectar elementos do storyboard no código (como botões);
Alterar propriedades de elementos via código, ou seja, deixar um botão com borda arredondada, por exemplo.
Tudo certo até aqui?

Se precisar de ajuda, acione a gente lá no fórum ou discord.

Nos vemos na próxima aula!

#### 20/07/2023

@04-Modelagem dos dados

@@01
Projeto da aula anterior

Você pode acompanhar o passo a passo do desenvolvimento do nosso projeto no Github e, caso deseje, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-03

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/archive/refs/heads/aula-03.zip

@@02
Criando modelo das questões

Precisamos deixar o nosso aplicativo mais dinâmico, isto é, criar a estrutura das questões. Cada questão terá:
um título;
as alternativas;
e a resposta correta.
Quando nos referimos a criar uma estrutura, podemos usar structs ou classes para gerar esse molde de dados. Afinal, a questão é um molde que usaremos para formar as demais perguntas. É o que faremos agora!

Na estrutura de arquivos do lado esquerdo do XCode, clicamos com o botão direito do mouse na pasta iQuiz e escolhemos a opção "New File". Porém, agora ele não será um arquivo sobre layout, e sim, um arquivo Swift mesmo.

Na janela para escolhermos o arquivo, com o iOS selecionado na barra superior, selecionamos a primeira opção "Swift File" e clicamos no botão "Next", no canto inferior direito. Nomearemos o arquivo de "Questao" e selecionamos o botão "Create".

Seremos redirecionados para o arquivo que acabamos de criar, que por enquanto estará da seguinte forma:

Questao.swift
//
//  Questao.swift
//  iQuiz
//
//  Created by Alura on 27/01/23.
//

import FoundationCOPIAR CÓDIGO
Ao invés de uma classe usaremos struct, porque ela é mais simples e para o que estamos desenvolvendo (sem usar herança ou algo nesse sentido) a struct já é o suficiente.

Abaixo do import Foundation, escrevemos "struct Questao {}".

Questao.swift
//
//  Questao.swift
//  iQuiz
//
//  Created by Alura on 27/01/23.
//

import Foundation

struct Questao {

}COPIAR CÓDIGO
Dentro da struct, vamos colocar alguns atributos, como o título, as respostas e a resposta correta; para todos colocaremos um var antes, o nome e o tipo de dado. Por exemplo, "var titulo: String".

Questao.swift
//
//  Questao.swift
//  iQuiz
//
//  Created by Alura on 27/01/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}COPIAR CÓDIGO
Em respostas, usamos o [String] por ser uma array com três respostas. Já a nossa respostaCorreta será do tipo inteiro porque irá armazenar o índice da resposta correta desse array de string resposta.

Teremos várias questões no aplicativo, então fora dessa struct Questao podemos criar um array de questões para ser usado na ViewController. Para isso, criamos uma constante chamada de questoes que será um array de questão, logo escrevemos "[Questao] = []". No caso, estamos deixando o tipo explícito, mas não é necessário.

Questao.swift
//
//  Questao.swift
//  iQuiz
//
//  Created by Alura on 27/01/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [

]COPIAR CÓDIGO
O primeiro elemento desse array será a Questao(), vamos inicializar e instanciar uma questão. No parênteses, passamos o titulo, as respostas e a respostaCorreta.

No titulo, podemos voltar ao Figma para copiar a primeira questão: "Qual feitiço para desarmar o seu oponente, em Harry Potter?". Depois, copiamos as repostas e colamos, separando as entre vírgula e dentro de colchetes (por ser um array de string).

Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], ),COPIAR CÓDIGO
Na sequência, inserimos a respostaCorreta passando o número dois. Isso porque a resposta correta está no índice dois, a Expelliarmus (lembrando que o array inicia a sua contagem no índice zero).

Questao.swift
//
//  Questao.swift
//  iQuiz
//
//  Created by Alura on 27/01/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),

]COPIAR CÓDIGO
Faremos a mesma lógica para as outras questões.

Perguntas que a instutora usou no exemplo e suas respectivas alternativas:
Quando foi lançado o filme Avatar 2?
2014
2022
2023
Quando foi lançado o filme Vingadores Ultimato?
2019
2018
2017
Assim, o código ficará:

Questao.swift
//
//  Questao.swift
//  iQuiz
//
//  Created by Alura on 27/01/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Quando foi lançado o filme Avatar 2?", respostas: ["2014", "2022", "2023"], respostaCorreta: 1),
    Questao(titulo: "Quando foi lançado o filme Vingadores Ultimato?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),

]COPIAR CÓDIGO
Você pode escolher as perguntas que desejar para construir o seu aplicativo!

Um ponto interessante do iOS, é que mesmo definindo esse array de questão dentro do arquivo Questao, podemos ir na QuestaoViewController e acessar esse array sem nenhuma importação.

Na QuestaoViewController criaremos dois atributos: a pontuação (que acrescentaremos um caso a pessoa usuária acerte a resposta) e o número da questão que a pessoa usuária está.

Isso porque a nossa tela é totalmente dinâmica, não vamos criar uma tela para cada questão. Faremos isso de forma dinâmica e manipulando as variáveis. Isso vai ficar muito interessante, vocês vão ver!

O nosso arquivo QuestaoViewController está assim, por enquanto:

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

           @IBOutlet weak var tituloQuestaoLabel: UILabel!
           @IBOutlet var botoesResposta: [UIButton]!

           @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
               super.viewDidLoad()
                             // Do any additional setup after loading the view
               configurarLayout()
                }

           func configurarLayout() { 
               navigationItem.hidesBackButton = true
               for botao in botoesResposta {
                                     botao.layer.cornerRadius = 12.0
                                }
                        }

// trecho de código suprimidoCOPIAR CÓDIGO
Criaremos as variáveis após definirmos a classe, sendo a pontuacao e a numeroQuestao, ambas serão inicializadas no zero. Isso porque estamos trabalhando com arrays e o índice inicia pelo zero, temos um array de questões.

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

                     var pontuacao = 0
                     var numeroQuestao = 0

           @IBOutlet weak var tituloQuestaoLabel: UILabel!
           @IBOutlet var botoesResposta: [UIButton]!

           @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
               super.viewDidLoad()
                             // Do any additional setup after loading the view
               configurarLayout()
                }

           func configurarLayout() { 
               navigationItem.hidesBackButton = true
               for botao in botoesResposta {
                                     botao.layer.cornerRadius = 12.0
                                }
                        }

// trecho de código suprimidoCOPIAR CÓDIGO
Descendo o código, após a função configurarLayout criaremos a func configurarQuestao() {}. Logo após, chamamos esse método dentro do viewDidLoad após o configurarLayout().

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

                     var pontuacao = 0
                     var numeroQuestao = 0

           @IBOutlet weak var tituloQuestaoLabel: UILabel!
           @IBOutlet var botoesResposta: [UIButton]!

           @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
               super.viewDidLoad()

                             // Do any additional setup after loading the view
               configurarLayout()
                             configurarQuestao()
            }

           func configurarLayout() { 
               navigationItem.hidesBackButton = true
               for botao in botoesResposta {
                                     botao.layer.cornerRadius = 12.0
                                }
           }

                     func configurarQuestao() { 

                    }

// trecho de código suprimidoCOPIAR CÓDIGO
O que precisamos configurar? No caso, precisamos configurar o tituloQuestaoLabel (o título da questão) e os botoesResposta (as alternativas).

Na função configurarQuestao, escrevemos "tituloQuestaoLabel" e na sequência colocamos ".text", sendo a propriedade que altera o texto de uma label.

tituloQuestaoLabel.textCOPIAR CÓDIGO
Isso será igual ao questoes (o nosso array de questões que definimos no arquivo Questao) e por ser um array precisamos acessar por um índice, sendo o numeroQuestao. E na sequência, pegamos a propriedade do título usando .titulo.

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo

    }COPIAR CÓDIGO
Lembrando que questão é um modelo, uma struct que possui os seus atributos.

Assim, o código ficará:

QuestaoViewController
import UIKit

class QuestaoViewController:
        UIViewController {

                     var pontuacao = 0
                     var numeroQuestao = 0

           @IBOutlet weak var tituloQuestaoLabel: UILabel!
           @IBOutlet var botoesResposta: [UIButton]!

           @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
                     print(sender.tag)
                     }

           override func viewDidLoad() {
               super.viewDidLoad()

                             // Do any additional setup after loading the view
               configurarLayout()
                             configurarQuestao()
            }

           func configurarLayout() { 
               navigationItem.hidesBackButton = true
               for botao in botoesResposta {
                                     botao.layer.cornerRadius = 12.0
                                }
           }

                    func configurarQuestao() {
                            tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
                    }

// trecho de código suprimidoCOPIAR CÓDIGO
Executaremos o código, teclando "Command + R".

Na tela inicial do nosso aplicativo, clicamos no botão "Iniciar Quiz"; na tela de questão observe que ela não é exibida por completo e com reticências.

Qual feitiço para…
Resposta 01
Resposta 02
Resposta 03
Isso não ficou legal, não é? Voltando ao XCode, dentro da função configurarLayout escrevemos "tituloQuestaoLabel.numberOfLines = 0".

    func configurarLayout() {
        tituloQuestaoLabel.numberOfLines = 0
        for botao in botoesResposta {
            botao.layer.cornerRadius = 12.0
        }COPIAR CÓDIGO
Assim, ele irá alterar o número de linhas para automático.

Voltando ao nosso aplicativo, na tela inicial clicamos no botão "Iniciar Quiz" e observe que na tela de questões agora consta a pergunta completa. Porém, ela está descentralizado e alinhada mais à esquerda.

Para centralizarmos o título, novamente dentro da função configurarLayout acrescentamos a linha "tituloQuestaoLabel.textAlignment = .center". Sendo o textAlignment a propriedade que usamos para configurar o alinhamento do texto.

    func configurarLayout() {
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        navigationItem.hidesBackButton = true
        for botao in botoesResposta {
            botao.layer.cornerRadius = 12.0
        }COPIAR CÓDIGO
Executando o código, na tela inicial do nosso aplicativo clicamos em "Iniciar Quiz" e na tela de questões temos a pergunta completa e centralizada na tela! Está pegando o primeiro elemento do array de questões e está setando esse título.

No próximo vídeo, vamos focar nos botões. Te espero lá!

@@03
Configurando a resposta da questão

Agora precisamos configurar as respostas das questões pelos botões. Para isso, vamos ao arquivo QuestaoViewController dentro do método configurarQuestao.
QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo

    }

// trecho de código suprimidoCOPIAR CÓDIGO
Observe que já configuramos o label do título da questão, e agora vamos configurar os botões. A primeira coisa que faremos será percorrer cada botão usando o comando for. Dentro da função configurarQuestao, escrevemos "for botao in botoesResposta{}".

QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
                for botao in botoesResposta {

                }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Qual a ideia? Voltando ao arquivo Main (lado esquerdo do XCode), na tela de questões, cada botão possui uma tag. Porém, no meu caso a propriedade tag está iniciando no número um, e ela deve iniciar no zero.

Então, selecionando o botão "Resposta 01" e do lado direito, em "tag", alterar de um para zero. Isso porque essa tag corresponderá ao índice do array de string.

Voltando ao arquivo Questao para visualizarmos melhor, temos:

Questao
import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Quando foi lançado o filme Avatar 2?", respostas: ["2014", "2022", "2023"], respostaCorreta: 1),
    Questao(titulo: "Quando foi lançado o filme Vingadores Ultimato?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),

]COPIAR CÓDIGO
A struct Questao possui um atributo chamado de respostas, sendo um array de strings. E são essas respostas que estão vinculadas aos botões, porque cada resposta irá ser exibida em um botão diferente.

Portanto, no arquivo Main (Storyboard) na tela de questões (após alterarmos a tag do botão "Resposta 01" de um para zero), vamos alterar a tag do segundo botão de dois para um; e a tag do terceiro botão de três para dois.

Botão "Resposta 01": tag 0
Botão "Resposta 02": tag 1
Botão "Resposta 03": tag 2
Isso porque como um array inicia no índice zero, esse atributo tag precisar estar em conformidade para que o nosso array não explode, e sim gere aquele erro de índex fora do limite. Vamos visualizar na prática.

Voltando ao arquivo QuestaoViewController, dentro do comando for da função configurarQuestao precisamos mudar o título desse botão. Para isso, usamos um método chamado de setTitle; e então, colocamos o title que é uma string.

QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
                for botao in botoesResposta {

                botao.setTitle(title: String?, for: UIControl.State)
                }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Acima do setTitle, criaremos uma constante para armazenar o título do botão chamado de tituloBotao, escrevemos "let tituloBotao =". Isso será igual ao o que?

Temos o array de questoes[], precisamos acessar esse array no índice numeroQuestao, então dentro do colchetes colocamos isso.

let tituloBotao = questoes[numeroQuestao]COPIAR CÓDIGO
Na sequência, colocamos o atributo chamado de respostas[] que também é um array. O índice desse array de respostas é a nossa tag do botão.

let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]COPIAR CÓDIGO
Assim, ficará:

QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
                for botao in botoesResposta {
                let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
                botao.setTitle(title: String?, for: UIControl.State)
                }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Por isso ele precisa iniciar no zero, porque se temos três respostas o nosso array vai de zero até dois (0, 1 e 2); se a tag do botão for de um até três, o número três já não é mais o índice do array. Logo, esse array irá explodir.

Voltando ao setTitle, colocamos dentro do parênteses a constante tituloBotao. Esse for é o estado do botão, se colocarmos um ponto visualizamos o menu flutuante com todos os estados disponíveis, como o disabled (desativado). No caso, vamos escolher a opção "normal".

QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
                for botao in botoesResposta {
                let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
                botao.setTitle(tituloBotao, for: .normal)
                }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Em seguida, executamos o código.

No nosso aplicativo, na tela inicial clicamos em "Iniciar Quiz"; e na tela de questões temos todas as alternativas (respostas) que inserimos do nosso array.

Qual feitiço para desarmar o seu oponente, em Harry Potter?
Expecto Patronum
Avada Kedavra
Expelliarmus
Está funcionando conforme o esperado!

Vamos voltar ao XCode para fazermos a verificação se a pessoa usuária selecionou a resposta correta.

Dentro da função respostaBotaoPressionado, temos acesso ao sender.tag. Isso quer dizer que estamos pegando a tag do botão que a pessoa usuária pressionou.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print (sender.tag)
        }

// trecho de código suprimidoCOPIAR CÓDIGO
Logo, precisamos verificar se esse sender.tag é igual a resposta correta do nosso array. Caso seja igual, precisamos adicionar um no atributo pontuacao.

Isso porque temos a tela final de desempenho, com o número de questões que a pessoa usuária acertou e o percentual final.

Dentro da função respostaBotaoPressionado, vamos remover a exibição do sender.tag e criar uma constante chamada de usuarioAcertouResposta.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = 
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Vamos igualar essa variável usuarioAcertouResposta ao array de questoes no índice numeroQuestao; e então, na sequência colocamos que a respostaCorreta é igual a tag do botão que a pessoa usuária pressionou (sender.tag).

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Em suma, nesse trecho de código estamos armazenando na constante usuarioAcertouResposta se o array de questões no número da questão, a resposta correta é igual ao sender.tag (identificação do botão).

Se essa constante for verdadeira, usaremos a condicional if usuarioAcertouResposta e acrescentamos um na pontuacao; se a pessoa usuária errou, não faremos nada.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
    }
}

// trecho de código suprimidoCOPIAR CÓDIGO
Dentro da condicional if, colocaremos a seguinte mensagem: "O usuário acertou!".

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
                print("O usuário acertou!")
    }
}

// trecho de código suprimidoCOPIAR CÓDIGO
Em seguida, executamos o código!

Na tela inicial do aplicativo clicamos no botão "Iniciar Quiz"; na tela seguinte escolhemos a opção "Expelliarmus".

Voltando ao console do XCode, temos a mensagem esperada como retorno:

O usuário acertou!
Com isso, a nossa pontuação acrescentou em um.

Executaremos o código novamente, e na tela de questões vamos clicar na opção errada, em "Expecto Patronum". Voltando ao console do XCode, perceba que não foi exibida a mensagem "O usuário acertou!".

Assim, capturamos quando a pessoa usuária acerta ou erra a resposta. O nosso próximo passo é alterar a cor de fundo do botão em caso de acerto ou erro.

@@04
Próxima questão e alterando cor de fundo do botão

Antes de alterar a cor de fundo do botão em caso de acerto ou erro da questão, precisamos implementar a funcionalidade para seguirmos para a próxima pergunta. Ainda não mexemos no atributo numeroQuestao, e é isso que faremos agora.
Dentro do método respostaBotaoPressionado, vamos colocar fora da condicional if (afinal, se a pessoa usuária errou a resposta também desejamos seguir para a próxima questão) a seguinte linha: "numeroQuestao += 1". Em seguida, chamamos o método configurarQuestao() novamente.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
        print("O usuário acertou!")
    }

        numeroQuestao += 1
        configurarQuestao()
}

// trecho de código suprimidoCOPIAR CÓDIGO
Isso porque dentro do método configurarQuestao(), alteramos o texto da label e os títulos do botões. Vamos rodar o código como está para analisarmos.

Após iniciar o quiz, na tela da primeira questão clicamos em "Expectro Patronum"; e somos redirecionados para a segunda pergunta com sucesso, alteramos o número da questão:

Quando foi lançado o filme Avatar 2?
2014
2022
2023
Clicamos em "2022", a última pergunta seguinte será:

Quando foi lançado o filme Vingadores Ultimato?
2019
2018
2017
Selecionamos "2019". Opa! Ocorreu um crash no aplicativo e somos redirecionados para o código. Observe que temos uma mensagem informando o erro:

Thread: Fatal error: Index out of range
Mas o que ocorreu? Vamos analisar o método respostaBotaoPressionado.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
        print("O usuário acertou!")
    }

        numeroQuestao += 1
        configurarQuestao()
}

// trecho de código suprimidoCOPIAR CÓDIGO
O nosso numeroQuestao inicia com zero, mas quando estamos com o índex número dois, somamos um. Logo, o index vira três e isso não é possível por ir somente de zero até dois. Assim, acontece um erro no nosso aplicativo.

Para arrumar isso, incluiremos uma verificação.

Abaixo do usuarioAcertouResposta, colocaremos mais uma condicional if numeroQuestao for menor do que questoes (o nosso array), ponto count. Assim, ele contará os elementos desse array: if numeroQuestao < questoes.count {}.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
        print("O usuário acertou!")
    }

        if numeroQuestao < questoes.count {

        }

        numeroQuestao += 1
        configurarQuestao()
}

// trecho de código suprimidoCOPIAR CÓDIGO
Logo após, copiamos as seguintes linhas:

        numeroQuestao += 1
        configurarQuestao()COPIAR CÓDIGO
E colamos dentro do if numeroQuestao.

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
        print("O usuário acertou!")
    }

        if numeroQuestao < questoes.count {
                numeroQuestao += 1
                configurarQuestao()
        }
}

// trecho de código suprimidoCOPIAR CÓDIGO
O questoes.count é três, pois há três elementos no nosso array de questões. Porém, quando o numeroQuestao for dois (limite do array), ele confere "o número dois é menor do que três? Sim". Logo, ele entra na condicional e acrescenta um no numeroQuestao, resultando, assim, no número três. E isso não é possível!

Por isso, na frente de questoes.count passamos o "-1".

QuestaoViewController
// trecho de código suprimido

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag 

    if usuarioAcertouResposta {
        pontuacao += 1
        print("O usuário acertou!")
    }

        if numeroQuestao < questoes.count - 1 {
                numeroQuestao += 1
                configurarQuestao()
        }
}

// trecho de código suprimidoCOPIAR CÓDIGO
Vamos executar o código com "Command + R".

No aplicativo, vamos clicar em "Iniciar Quiz > Expectro Patronum > 2022 > 2019". Perceba que não houve erro ao selecionarmos a última pergunta, não gerou um crash.

Voltando ao XCode, precisamos alterar a cor de fundo do botão conforme o usuário acerta ou erra. Para isso, usaremos uma propriedade chamada de backgroundColor dentro da função usuarioAcertouResposta. Podemos remover a linha print("O usuário acertou!").

Onde estava o print, escrevemos "sender.backgroundColor = UIColor". Usamos o UIColor para definirmos através do RGB (red, green, blue e alpha).

Nesse momento, a instrutora volta ao Figma para ensinar como buscar pelo RGB da cor verde do botão. Para isso, basta selecionar o botão com a cor verde e do lado direito alterar de "Hex" para "RGB".
Assim, o nosso código (sem o preenchimento das informações) ficará:

QuestaoViewController
// trecho de código suprimido

        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: , green: , blue: , alpha: )
        }

// trecho de código suprimidoCOPIAR CÓDIGO
Lembrando que o sender é o botão pressionado pelo usuário; a propriedade backgroundColor é o responsável por mudar a cor; e o UIColor é uma classe do UIKit para definirmos uma cor (dado que ela é customizada).

Podemos inicializar a classe UIColor de diferentes formas, inclusive, usando o padrão RGB (red, green, blue e alpha, sendo esta e opacidade) que já estamos usando.

O UIColor ao receber as cores (red, green e blue), ele recebe o valor de zero até um. E no sistema de cor o valor vai de zero até duzentos e cinquenta e cinco. Por isso, precisamos dividir o valor por 255.
Voltando ao Figma e selecionando o botão verde "Expelliarmus", do lado direito clicamos na cor verde e trocamos de "Hex" para "RGB". Perceba que os valores são: 11, 161, 53 e 100%, respectivamente.

No XCode, colocamos o número 11 em red, 161 no green e 53 no blue, e dividimos todos esses valores por 255.

QuestaoViewController
// trecho de código suprimido

        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        }

// trecho de código suprimidoCOPIAR CÓDIGO
Com isso, temos a cor de fundo do botão caso a pessoa usuária acerte a pergunta. Agora, caso ela selecione a alternativa errada, inserimos um else e copiamos e colamos a linha com a cor que acabamos de inserir.

Assim, ficará:

QuestaoViewController
// trecho de código suprimido

        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
                    sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)

                }
// trecho de código suprimidoCOPIAR CÓDIGO
Em seguida, voltamos ao Figma e clicamos no botão escrito "Avada Kedavra" preenchido na cor vermelha; e à direita clicamos na cor vermelha e trocamos de "Hex" para RBG. Obtemos os seguintes valores: 211, 17, 17 e 100%.

No XCode, incluiremos essas informações no else para a cor vermelha:

QuestaoViewController
// trecho de código suprimido

        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
                    sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)

                }
// trecho de código suprimidoCOPIAR CÓDIGO
Temos as cores para caso a pessoa usuária acertar ou errar a questão.

No aplicativo, vamos clicar em "Iniciar Quiz > Expectro Patronum > 2018". Perceba que está um pouco bugado, nós clicamos nas alternativas e ele simplesmente não deselecionar, o "2018" está na cor verde após clicarmos e o botão "2017" também, mas na cor vermelha.

Isso acontece porque ele está armazenando a cor, não estamos trocando a cor de fundo do botão quando uma nova questão é carregada.

Quando uma nova questão é exibida na tela, é necessário resetar todas as cores de fundo para não gerar esse bug. É isso que faremos agora.

No XCode, no método configurarQuestao dentro do comando for precisamos alterar a cor de fundo para que volte para o roxo inicial. Para isso, usamos a mesma propriedade backgroundColor pegando o RGB.

QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesResposta {
                        botao.backgroundColor = UIColor(red: , green: , blue: , alpha: )
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Agora, vamos ao Figma e selecionar algum botão para pegarmos o RGB da cor. Após isso, preenchemos no código:

QuestaoViewController
// trecho de código suprimido

    func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesResposta {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
                        botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Logo após, executamos o código.

No aplicativo, iniciamos o quiz e na primeira pergunta selecionamos "Expecto Patronum"; na segunda clicamos em "2022"; e na terceira pergunta selecionamos "2018". Observe que a cor de fundo do botão se aplicou somente na última questão.

Obs: a instrutora cometeu um equívoco ao inserir o número "20" na respostaCorreta no arquivo Questoes (o número correto é zero) na pergunta "Quando foi lançado o filme Vingadores Ultimato?". Por isso, mesmo selecionando a questão correta "2019" o botão fica preenchido na cor vermelha.
Isso acontece porque a troca de questões ocorre de maneira muito rápida. Assim, nem conseguimos visualizar essa troca, e isso é um problema.

Agora, precisamos aplicar um timer para que a cor de fundo do botão fique por um determinado período bem curto, como cinco segundos. Para conseguirmos visualizar a cor de fundo e não passar instantaneamente.

É isso que faremos no próximo vídeo. Te espero lá!

@@05
Colocando um timer entre questões

Vamos ao arquivo QuestaoViewController e colocaremos esse timer sobre a função configurarQuestao. Isso porque vamos demorar em torno de 0.5 segundos para ir para a próxima questão, e para conseguirmos visualizar a cor de fundo.
Chamamos a função configurarQuestao dentro do if da linha 28:

QuestaoViewController
// trecho de código suprimido

if numeroQuestao < questoes.count -1 {
        numeroQuestao += 1
        configurarQuestao()
    }
}

// trecho de código suprimidoCOPIAR CÓDIGO
Nesse trecho do código, estamos verificando se podemos passar para a próxima questão; e então, chamamos o método configurarQuestao. Vamos pular uma linha após o numeroQuestao para acionarmos esse timer.

O código que vou colocar aqui, pode parecer complexo. Porém, é assim que aplicamos para darmos um intervalo no nosso código, para setar um cronômetro. Para isso, usamos a classe Timer com o método estático (não estamos instanciando essa classe) chamado de scheduledTimer().

QuestaoViewController
// trecho de código suprimido

if numeroQuestao < questoes.count -1 {
        numeroQuestao += 1
        Timer.scheduledTimer(timeInternal: TimeInternal, target: Any, selector: Selector, userInfo: Any?, repeats: Bool)
        configurarQuestao()
    }
}

// trecho de código suprimidoCOPIAR CÓDIGO
O primeiro argumento que enviamos para essa função é otimeInternal, sendo a quantidade de segundos que desejamos que esse timer possua, no caso será 0.5 segundos. No target, escrevemos "self" pois estamos atuando na instância dessa classe mesmo; no selector, colocamos "#selector()" passando a função que chamaremos após o timer de 0.5 segundos, sendo a configurarQuestao.

QuestaoViewController
// trecho de código suprimido

if numeroQuestao < questoes.count -1 {
        numeroQuestao += 1
        Timer.scheduledTimer(timeInternal: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: Any?, repeats: Bool)
        configurarQuestao()
    }
}

// trecho de código suprimidoCOPIAR CÓDIGO
Prosseguindo, no userInfo colocamos "nil" e o repeats vamos deixar como false, porque não desejamos que se repita o 0.5 segundos mais de uma vez. Podemos remover o configurarQuestao() da linha 31.

QuestaoViewController
// trecho de código suprimido

if numeroQuestao < questoes.count -1 {
        numeroQuestao += 1
        Timer.scheduledTimer(timeInternal: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        configurarQuestao()
    }
}

// trecho de código suprimidoCOPIAR CÓDIGO
Observe que do lado direito temos uma mensagem de erro, isso acontece porque o selector precisa que esse método configurarQuestao esteja definido no Object C. Isso é uma particularidade dos métodos que precisam usar esse selector.

Clicando no botão "Fix" no canto inferior direito, observamos que na função configurarQuestao, foi adicionado um @objc. E isso é a única preocupação que precisamos ter ao usar o selector.

QuestaoViewController
// trecho de código suprimido

    @objct func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesResposta {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
                        botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }

// trecho de código suprimidoCOPIAR CÓDIGO
Agora, vamos executar o código e verificar se está funcionando conforme o esperado.

Após iniciarmos o quiz, na tela da primeira pergunta clicamos em "Expelliarmus". Observe que o preenchimento na cor verde ao fundo do botão aparecerá por alguns segundos antes de pular para a próxima questão.

Na segunda pergunta, selecionamos "2014" e também conseguimos visualizar o preenchimento na cor vermelha ao fundo do botão (significa que erramos essa resposta) e já passa para a próxima pergunta.

Está funcionando conforme o esperado.

Assim, estamos informando a pessoa usuária se ela errou ou acertou a pergunta, e o nosso próximo passo é construir a tela de desempenho.

Até mais!

@@06
Construindo o modelo de dados e lidando com propriedades

Aprendemos práticas importantes no desenvolvimento de um aplicativo iOS: tanto a criação de lógica do projeto com a modelagem de dados quanto alguns aspectos de customização de elementos.
Pensando nisso, assinale as práticas corretas que utilizamos:

Criamos um temporizador que define um tempo entre as questões, pois a troca acontecia de forma tão rápida que não conseguíamos observar a cor de fundo do botão sendo alterada.
Esse temporizador chama a função configurarQuestao, que precisamos definir com um @objc antes da palavra func.
 
Isso mesmo! Criamos um timer de 0.5 segundos entre as questões. A função configurarQuestao precisa ser definida com a palavra-chave @objc. Por que precisamos colocar esse @objc? Por que o temporizador é um método que possui o selector, cuja sintaxe pede a palavra-chave @objc na definição da função. O @objc é um atributo em Swift que indica que uma função ou propriedade está disponível para ser chamada ou acessada a partir do Objective-C, uma linguagem anterior ao Swift, que era muito utilizada para construir aplicativos iOS.
Alternativa correta
Criamos a estrutura da questão com o uso de uma struct, mas poderíamos também criá-la com o uso de uma classe, pois classes e structs possuem funcionalidades similares.
 
Isso aí! Classes e structs são utilizados para representar objetos da vida real em código, em um contexto de orientação a objetos. Utilizamos uma struct para criar o modelo de questão por ser mais simples, mas poderíamos, sem problemas, utilizar uma classe.
Alternativa correta
Na função respostaBotaoPressionado do nosso código, recebemos o botão pressionado pelo usuário. Para identificar qual o botão que foi pressionado e verificar a resposta, podemos utilizar de uma propriedade chamada id, que retorna o id de um botão.
 
Alternativa correta
Para alterar a cor de fundo do botão, utilizamos a propriedade backgroundColor **e atribuímos a uma instância do tipo CGColor.
 
Parabéns, você acertou!

@@07
Faça como eu fiz: desenvolvendo a lógica da aplicação

Agora é a sua vez! Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Portanto:
Crie o modelo das questões com uma struct;
Defina um array de questões (pode escolher sua própria temática);
Faça uma condição para verificar a resposta da questão;
Altere a cor de fundo do botão de acordo com a resposta do usuário (se ela estiver correta, deve ser verde, se não, deve ser vermelho);
Adicione um timer entre as questões.
Caso já tenha feito esses passos, excelente. Se ainda não, é importante que você execute o que foi visto nos vídeos para poder continuar com a próxima aula.

O ideal é que você tente replicar os passos por conta própria para validar seu aprendizado. Porém, caso tenha dificuldade, fique à vontade para dar uma olhadinha nos vídeos!
Vamos lá?

Opinião do instrutor

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-04

@@08
O que aprendemos?

Nessa aula, você aprendeu como:
Criar structs para definir o modelo dos nossos dados, ou seja, a base das questões do quiz;
Utilizar da propriedade tag para identificar o botão que foi pressionado;
Alterar propriedades (como a cor) de um elemento de forma programática;
Criar um temporizador para adicionar um intervalo de tempo de 0.5 segundos entre as questões.
Já avançamos bastante e nosso aplicativo está ficando excelente.

Vejo você na última aula!

#### 21/07/2023

@05-Construindo a tela de desempenho

@@01
Projeto da aula anterior

Você pode acompanhar o passo a passo do desenvolvimento do nosso projeto no Github e, caso deseje, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-04

https://github.com/alura-cursos/swift-entendendo-a-linguagem/archive/refs/heads/aula-04.zip

02
Construindo a tela de desempenho

Se você observar a tela do Figma, notará que falta apenas uma tela para concluirmos a construção do nosso aplicativo: a tela de desempenho.
tela de desempenho do aplicativo. sobre um fundo azul arroxeado, os seguintes textos em branco centralizados, de cima para baixo, nessa ordem: "Você finalizou o iQuiz!" em letras grandes; "Você acertou 2 de 10 questões." em letras médias; "Percentual final: 20%" em letras pequenas. abaixo do último texto, um botão num tom de roxo mais claro com os seguintes dizeres em branco: "Reiniciar Quiz".

Ela possui:

Um título: "Você finalizou o iQuiz!";
Um texto mostrando o número de acertos da pessoa usuária em relação ao total de questões;
Um texto mostrando o percentual final de acertos, para o qual precisaremos realizar um cálculo;
Um botão para reiniciar o quiz, que leva para a página inicial.
Agora precisamos construir, de fato, essa tela. Faremos isso no Xcode, e o processo será bastante parecido com o da tela de questão.

DesempenhoViewController
O primeiro passo, então, é construir o arquivo da View Controller. Para isso, no menu de arquivos à esquerda da tela, clicamos com o botão direito em "iQuiz" e, no menu de opções, clicamos em "New File".

Na janela que surge no centro da tela, selecionamos "Cocoa Touch Class" e clicamos em "Next". A classe já está definida como subclasse de "UIViewController", e a nomearemos como "DesempenhoViewController". Clicamos em "Next" novamente e salvamos o arquivo na pasta do projeto, "iQuiz", e clicamos em "Create".

Nova tela no StoryBoard
Com o arquivo criado, o próximo passo é colocar uma nova tela (ViewController) no arquivo Main, do StoryBoard. Clicamos nele, no menu lateral esquerdo.

Vamos diminuir o zoom da visualização das telas para relembrar o fluxo. Temos a NavigationController, que gere todas as questões de navegação da nossa aplicação, temos a tela inicial, a tela de questão e, agora, precisamos criar a de desempenho.

Clicamos no ícone de "+" no canto direito da barra superior da tela para abrir a biblioteca de objetos. Nessa janela, procuramos por "View Controller" na barra de pesquisa, clicando e arrastando a primeira opção para o StoryBoard, posicionando a nova tela ao fim.

Agora, precisamos realizar a conexão dessa tela com o arquivo que criamos, DesempenhoViewController. Para isso, clicamos no botão "View Controller", logo acima da nova tela do StoryBoard.

Depois, no menu de inspetores na lateral direita da tela, clicamos no quarto botão da barra superior para exibir os inspetores de identificação. No atributo Class, escrevemos "DesempenhoViewController" e pressionamos "Enter".

Agora, o nosso código DesempenhoViewController já está atrelado à ViewController do StoryBoard!

Layout da tela
Vamos começar a construir essa tela, adicionando seus elementos.

Cor de fundo
Primeiramente vamos alterar a cor de fundo, clicando no inspetor de atributos na lateral direita da tela.

Para replicar cor de fundo da tela de questão, a selecionamos e, no inspetor, clicamos em "Background > Custom" e, na parte inferior da tela, na janela Colors, copiamos o código hexadecimal da cor: "521EC2". Depois, repetimos o caminho com a nova tela selecionada e colamos o código no campo "Hex Color #" da janela Colors, selecionando a opção "RGB sliders".

Texto 1
Agora, vamos adicionar elementos clicando no "+" na barra superior da tela. O primeiro elemento que adicionaremos na tela é uma Label, então arrastamos essa opção da biblioteca de objetos até a tela de desempenho. Nela, vamos escrever:

Você finalizou o iQuiz!
Agora, no inspetor de atributos, mudamos a cor da fonte para branco, clicando em "Color > White Color". Vamos também aumentar o tamanho da fonte, clicando em "Font" e escrevendo "32" no campo "Size". Podemos mudar o estilo também, clicando em "Style > Semibold". Ao terminar, clicamos em "Done" e centralizamos o texto na tela.

Texto 2
Vamos copiar e colar o texto que criamos abaixo do original, para escrever outra frase e manter as configurações. A frase será:

Você acertou 2 de 10 questões.
Note que esse texto é extremamente estático. Nós ainda faremos com que ele entre em conformidade com a quantidade de questões que a pessoa usuária acertou e a quantidade de questões do aplicativo. Ou seja, tornaremos esse texto dinâmico mais adiante.

Vamos deixar o texto desalinhado e cortado na tela por enquanto, porque depois mexeremos com constraints para alinhar tudo.

Texto 3
Vamos copiar e colar o texto novamente. Nesse terceiro texto, escreveremos:

Percentual final: 20%
Se você observar a tela no Figma, esse texto possui uma fonte um pouco menor. Então, podemos mudar o tamanho de 32 para 26, no campo "Font > Size" no inspetor de atributos.

Botão
Para adicionar o botão, clicamos novamente no "+" na barra superior da tela e, na biblioteca de objetos, clicamos e arrastamos Button para a tela de desempenho.

Para trocar o texto do botão, clicamos nele e escrevemos:

Reiniciar Quiz
Vamos trocar a cor do texto, de azul para branco, no atributo "Tint". Também vamos mudar a fonte para System, estilo Regular e tamanho 22.

Por fim, vamos trocar a cor de fundo do botão, que copiaremos dos botões da tela de resposta: 7432FF. Clicamos novamente no botão de reiniciar o quiz e colamos o código hexadecimal em "Background > Custom > RGB sliders".

Constraints
Agora que temos os elementos, precisamos definir as constraints.

A primeira constraint que vamos definir é a do primeiro texto. Então o selecionamos e abrimos o menu de constraints, clicando no terceiro ícone do canto inferior direito da StoryBoard.

Vamos configurar uma constraint de 112 do topo, 64 da lateral esquerda e 64 da lateral direita. Então, clicamos em "Add 3 constraints".

Podemos observar que o texto inicial ficou com reticências, omitindo parte da frase. Podemos alterar isso no painel de atributos, procurando por "Lines", alterando o número de 1 para 0.

Realizamos esse mesmo comportamento, mas de forma programática, na QuestaoViewController. Pegamos o tituloQuestaoLabel, setando o número de linhas igual a zero, com a propriedade numberOfLines:

tituloQuestaoLabel.numberOfLines = 0COPIAR CÓDIGO
Ou seja, quando estamos no StoryBoard, podemos modificar todos esses atributos do painel de atributos de forma programática.

Para esse texto, também vamos alinhar o texto ao centro, clicando em "Alignment > Center".

Vamos repetir todas essas configurações para o segundo texto, configurando constraints de 72 para o topo, em relação ao elemento de cima, e 64 para cada lateral. Novamente mudamos o número de linhas para 0** e alinhamento do texto para **centralizado. O terceiro texto terá as mesmas constraints.

Por fim, o botão de reiniciar quiz terá as mesmas constraints dos dois últimos textos, e ativaremos a constraint de altura ("Height"), com o valor de 62.

Temos todas as constraints finalizadas!

Agora precisamos navegar para essa tela, porque ela ainda não é apresentada na nossa aplicação. Então, quando a pessoa usuária finaliza o quiz, ela precisa ser levada para essa tela.

Resolveremos isso no próximo vídeo!

@@03
Conectando os elementos do Storyboard

Antes de começar a trabalhar com a navegação de fato, vamos conectar os elementos do StoryBoard com o código da DesempenhoViewController.
Não conectaremos o primeiro elemento, a label de "Você finalizou o iQuiz", por ser estático. Ou seja, ele não será alterado. Já o segundo elemento, a label "Você acertou 2 de 10 questões", precisa ser dinâmico - então, o conectaremos ao código.

Não temos 10 questões na nossa aplicação, afinal de contas, podemos ter quantas questões quisermos apenas modificando o array de questões.

Então, com o arquivo DesempenhoViewController aberto no Xcode e a segunda label da tela de desempenho selecionada, pressionamos a tecla "Ctrl" e arrastamos e arrastamos o elemento para o código.

Vamos conectar esse elemento como um Outlet para referenciar apenas o elemento e nomeá-lo como "resultadoLabel". No código, surgirá o seguinte:

DesempenhoViewController
@IBOutlet weak var resultadoLabel: UILabel!COPIAR CÓDIGO
Vamos pular duas linhas abaixo dessa linha de código, para ter espaço para conectar o outro elemento.

Repetiremos o processo para conectar o elemento com o texto "Percentual final", porque ele também será alterado. Então o selecionamos, pressionamos "Ctrl" e o arrastamos para o código. Ele também será um Outlet, e o nomearemos como "percentualLabel". No código, acrescenta-se:

@IBOutlet weak var resultadoLabel: UILabel!
@IBOutlet weak var percentualLabel: UILabel!COPIAR CÓDIGO
O último elemento, o botão de "Reiniciar Quiz", conectaremos como Outlet também porque precisamos arredondar os cantos das bordas. Então, novamente, pressionamos "Ctrl" e arrastamos esse elemento para o código. O nomearemos como "botaoReiniciarQuiz". O código atualizado:

@IBOutlet weak var resultadoLabel: UILabel!
@IBOutlet weak var percentualLabel: UILabel!
@IBOutlet weak var botaoReiniciarQuiz: UIButton!COPIAR CÓDIGO
Em seguida, criaremos um método chamado configurarLayout, assim como fizemos para as outras telas. Nesse método, arredondaremos as bordas do botão: botaoReiniciarQuiz.layer.cornerRadius = 12.0:

    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 12.0COPIAR CÓDIGO
Também precisamos lembrar de chamar esse método na viewDidLoad, quando a View será carregada:

    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()COPIAR CÓDIGO
Também precisamos adicionar uma ação para esse botão. Mas não faremos isso por meio do código.

Você deve se lembrar que, na primeira tela, simplesmente pressionamos o "Ctrl" no botão de "Iniciar Quiz" e arrastamos para a segunda tela. Faremos o mesmo com o botão de "Reiniciar Quiz", porque quando pressionarmos esse botão, queremos retornar à tela inicial.

Então, clicamos no botão "Reiniciar Quiz", pressionamos "Ctrl" e arrastamos para a primeira tela. Na caixa de opções exibida, selecionamos "Show".

Nesse momento, você poderá perceber que foi criado um fluxo entre a tela de desempenho e a tela inicial, ligadas por uma linha que atravessa o StoryBoard.

Isso é o interessante do StoryBoard: conseguir mostrar todo o fluxo de navegação entre as telas.
Agora, quando pressionarmos o botão para reiniciar o quiz, a aplicação voltará ao início do fluxo, para a primeira tela.

Não executaremos esse código no momento porque não conseguiremos observar nenhuma modificação. Isso porque não estamos chamando, de fato, a tela de desempenho.

Precisamos chamá-la de maneira um pouco diferente, porque não temos nenhum botão concreto que podemos simplesmente ligar no StoryBoard. Dessa forma, precisamos realizar uma verificação de quando o usuário chegar ao final do quiz (ou seja, na última pergunta) para, então, chamar a tela de desempenho.

Além disso, também precisamos passar parâmetros. Porque, na tela de desempenho, precisamos do número de acertos da pessoa usuária. Quem armazena essa pontuação é a QuestaoViewController, no atributo pontuacao, inicializado com zero: var pontuacao = 0.

Quando fazemos o if usuarioAcertouResposta na linha 21, nós acrescentamos a pontuação em um:

QuestaoViewController
        if usuarioAcertouResposta {
            pontuacao += 1
// código omitidoCOPIAR CÓDIGO
Precisamos passar essa variável para a tela de desempenho. Então, agora, a navegação precisa funcionar com parâmetros. Realizamos esse tipo de navegação por código.

É isso que faremos no próximo vídeo. Nos encontramos lá!

@@04
Implementando navegação com parâmetros

Vamos trabalhar com a navegação, que, relembrando, precisa ter passagem de parâmetros, ou seja, que precisamos passar algum valor de uma tela para outra. No caso da nossa aplicação, precisamos passar a pontuação da pessoa usuária da tela de questão para tela de desempenho.
A primeira coisa que precisamos fazer é criar uma conexão entre a tela de questão e a tela de desempenho, e faremos isso através do storyboard. Clicaremos na view controller logo acima da tela de questão, pressionaremos "Ctrl" e arrastaremos para tela de desempenho. Quando soltamos, aparece o menu flutuante que já conhecemos, onde escolheremos "Show".

Feito isso, aparece uma seta de uma tela para outra, criando a conexão. Essa seta precisa ter um identificador, porque, quando formos para o código e chamarmos essa navegação, identificaremos a navegação pelo nome dessa conexão.

Se formos ao painel de inspetores e clicarmos no quinto ícone da parte superior, que é uma lista de sliders, abriremos o painel de inspetores de atributo. Nele temos um atributo chamado "Identifier" (Identificador), onde podemos adicionar um nome. No caso, chamaremos de "irParaTelaDesempenho". Agora esse é o nome do identificador dessa conexão.

Feito isso, lembrem-se que passaremos o atributo pontuacao para tela de desempenho, então clicaremos na DesempenhoViewController para abrir o código e criaremos o atributo chamado pontuação, escrevendo var pontuacao na linha 12. Nós não iremos inicializar esse atributo, porque se inicializarmos, por exemplo, como zero (0) , não fará sentido, já que estamos passando o atributo da tela de questão para tela de desempenho.

Sendo assim, como não iremos inicializar o atributo, precisamos declarar o tipo dele explicitamente, ou seja, var pontuacao: Int. Se deixarmos apenas dessa maneira, ele irá pedir para criarmos um inicializador, e não queremos criar um inicializador para isso.

O que queremos é, na tela de questão, chamar o atributo do DesempenhoViewController. Portanto faremos com que o atributo pontuacao seja uma opcional, colocando um ponto de interrogação após declararmos o tipo (Int?).

Assim não precisaremos criar um inicializador, pois não iremos instanciar a classe DesempenhoViewController. Nós iremos apenas acessar o atributo pontuacao na tela de questão, e em breve vocês entenderão isto na prática e conseguirão visualizar melhor o que estou explicando. No momento, criar o atributo var pontuacao: Int? já é mais que o suficiente.

Agora voltaremos para o código QuestaoViewController, clicando na segunda tela. Desceremos o código até acharmos a verificação o if numeroQuestao, a partir da linha 28, que verifica se a pessoa pode ir para próxima pergunta ou não, a fim de não estourar nosso array.

Para sabermos se a pessoa usuária chegou na última pergunta, precisamos escrever, ao final do escopo do if{}, na linha 31, um else{}, representando que a pessoa usuária está na última pergunta. E para separar melhor o código, e vocês conseguirem entender melhor, criaremos um método acima do viewDidLoad, na linha 37, escrevendo func navegaParaTelaDesempenho(){}. Depois chamaremos esse método dentro do else.

//código omitido

        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesempenho()
        }
    }

    func navegaParaTelaDesempenho() {

    }COPIAR CÓDIGO
Quando criamos a classe QuestaoViewController, se formos até o final do código, notamos que o XCode nos deixou um comentário, que diz:

"Em uma aplicação baseada no storyboard, você pode querer fazer uma preparação antes da navegação".
Ele inclusive passa o método que precisamos utilizar, porque ele é muito comum, apesar de parecer confuso:

override func prepare(for segue: UIStroryboardSegue, sender: Any?) {
    //Get the new view controller using segue.destinaton.
    //Pass the selected object to the new view controller
}COPIAR CÓDIGO
Nesse método ele fala que precisamos "Pegar a nova view controller que está sendo chamada usando o segue.destination", sendo o destination um atributo do segue, recebido como parâmetro. Depois ele fala que podemos "Passar o objeto selecionado", que no nosso caso é o atributo pontuacao, "para nova view controller".

Vamos reescrever esse método seguindo as orientações do comentário. Então na linha 65, onde fechamos o método configurarQuestao, pressionaremos "Enter" duas vezes. Depois, na linha 67, escreveremos prepare e selecionaremos a primeira sugestão do XCode, pressionando "Enter". Com isso, o método prepare será montado.

override func prepare(for segue: UIStroryboardSegue, sender: Any?) {
    code
}COPIAR CÓDIGO
Esse método é um override, usado quando estamos reescrevendo um método da classe pai, que neste caso é a UIViewController, da qual estamos herdando. Porém, o que essa classe faz afinal?

A UIViewController é uma classe do framework UIKit, que estamos utilizando. Ela fornece todas as funcionalidades básicas para trabalharmos com telas no iOS. Basicamente, ela faz a estrutura, gerencia o conteúdo, obtém as interações das pessoas usuárias e utiliza métodos para trabalharmos com a navegação entre telas.

Sendo assim, a UIViewController é a classe responsável por gerenciar uma tela da nossa aplicação, por isso sempre precisamos herdar dessa classe. E dentro do método prepare, como orienta o comentário, precisamos verificar se a nova view controller, usando o segue.destination é a nossa classe.

Para fazermos isso, usaremos o operador Type Casting, escrevendo guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }. O guard let o método que utilizamos para desembrulhar uma opcional, pois ao falarmos do Type Casting, utilizamos opcionais.

O VC em desempenhoVC é de View Controller, enquanto o as é o operador de Type Casting. Com esse código verificamos se a tela de destino é a DesempenhoViewController. Por fim, adicionamos um else { return } porque o guard let tem o else e, caso a tela não seja desejada, ele sairá desse método sem fazer nada.

Dessa forma, conseguimos acessar todos os métodos e atributos da classe desempenhoVC, porque estamos utilizando o Type Casting para verificar se é desse tipo. Inclusive podemos acessar o atributo de pontuação, escrevendo desempenhoVC.pontuacao, e atribuir a pontuacao da nossa classe QuestaoViewController, declarado na linha 12. Para isso escrevemos desempenhoVC.pontuacao = pontuacao.

//código omitido

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }COPIAR CÓDIGO
Com o desempenhoVC.pontuacao = pontuacao estamos criando uma passagem de parâmetros entre telas. É importante mencionar que o método prepare é chamado automaticamente antes de uma segue ser executada, sendo a segue uma transição entre telas. Então quando criamos essa conexão entre a tela de questão e a de desempenho, criamos uma segue.

Agora o que precisamos fazer é voltar para QuestaoViewController, clicando na barra acima da segunda tela. Feito isso, desceremos para linha 37, onde temos a função navegaParaTelaDesempenho.

Precisamos chamar a navegação para função navegaParaTelaDesempenho. E a primeira coisa que faremos para isso será chamar a performSegue, que selecionando a primeira opção que o XCode sugere para chamarmos a estrutura. Ela performa essa segue, ou seja, realiza essa transição.

performSegue(withIdentifier: String, sender: Any?)COPIAR CÓDIGO
No withIdentifier precisamos adicionar o identificador, que nomeamos anteriormente como "irParaTelaDesempenho". Então escreveremos withIdentifier: "irParaTelaDesempenho", lembrando de escrever exatamente igual ao declarado, porque se tiver algum erro ortográfico, não irá funcionar. No sender, escreveremos sender: nil, porque não precisamos nos preocupar com isso no momento.

    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }COPIAR CÓDIGO
Pressionando "Command + R", executaremos o código para descobrir se conseguimos fazer a transição funcionar. Na tela inicial, clicamos em "Iniciar Quiz" e depois pressionamos uma das alternativas em cada tela para avançarmos. Quando as questões terminam, chegamos à tela final, onde mostramos a mensagem que programamos.

Emulador do Iphone 14. Ele está exibindo a tela final do iQuiz. O fundo da tela é roxo e sobre ele há três blocos de texto em letras brancas. O primeiro bloco está em negrito e diz "Você finalizou o iQuiz!", o segundo, logo abaixo, também está em negrito e diz "Você acertou 2 de 10 questões" e o terceiro, em letras sem negrito e diz "Percentual final: 20%". Após esse último texto tem um botão lilás com o texto "Reiniciar Quiz" em letras brancas.

Lembrando que a parte "Você acertou 2 de 10 questões" ainda está estática, e logo iremos resolver isso. Quando clicamos no botão "Reiniciar Quiz", na parte inferior da tela, voltamos para tela inicial. Também iremos arrumar os botões de voltar, na parte superior esquerda da tela.

Espero que tenham entendido e aguardo vocês no próximo conteúdo.

@@05
UIViewController

Imagine que você irá criar uma nova funcionalidade na sua aplicação que irá permitir ao usuário realizar um login. Para isso, você irá precisar criar uma nova tela, chamada de LoginViewController.
Como seria a estrutura base do código?

import UIKit

class LoginViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
 
Alternativa correta
import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
 
É isso mesmo! Essa é a estrutura base para criar uma nova view controller. Primeiramente, importamos o framework UIKit. E então, criamos a nossa classe chamada de LoginViewController que herda de UIViewController. O método viewDidLoad() está sendo sobrescrito pela nossa classe. Ele será disparado assim que a nossa tela for carregada na aplicação.
Alternativa correta
import Foundation

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
 
Alternativa correta
import UIKit

struct LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
 
Alternativa correta
import UIKit

class LoginViewController: UIViewController {

    func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

@@06
Navegação entre telas e passagem de parâmetros

Para realizar a navegação com parâmetros entre as telas corretamente e preparar a tela de destino (DesempenhoViewController) para exibição, é preciso escrever a função prepare.
Assim, de acordo com o que aprendemos em aula, qual ou quais código(s) abaixo, indica(m) a escrita correta dessa função?

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
    desempenhoVC.pontuacao = pontuacao
}
 
É isso aí! O método acima utiliza do guard let para desembrulhar uma opcional e faz com que haja a preparação da tela DesempenhoViewController antes de ser chamada, passando os parâmetros necessários.
Alternativa correta
func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
    desempenhoVC.pontuacao = pontuacao
}
 
Alternativa correta
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let desempenhoVC = segue.destination as? DesempenhoViewController {
            desempenhoVC.pontuacao = pontuacao
        }
}
 
Isso mesmo! O método acima utiliza do if let para desembrulhar uma opcional e faz com que haja a preparação da tela DesempenhoViewController antes de ser chamada, passando os parâmetros necessários.
Alternativa correta
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let desempenhoVC = segue.destination as! DesempenhoViewController
    desempenhoVC.pontuacao = pontuacao
}

@@07
Mostrando o desempenho e organizando o código

Vamos começar resolvendo o problema do botão de voltar que não queremos que apareça. Sendo assim, voltaremos para o código, onde esconderemos o botão na primeira tela, a ViewController, quanto na última tela, a DesempenhoViewController.
Observação: A primeira tela, que chamamos de ViewController, poderia ter outro nome, como HomeViewController ou TelaInicialViewController.
Abrindo o arquivo "ViewController", acessaremos o método configuraLayout na linha 22. Após a abertura de chaves, pressionaremos "Enter" e, na linha 23, escreveremos navigation.hideBackButton = true.

    func configuraLayout() {
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }COPIAR CÓDIGO
Abrindo o menu lateral, clicaremos em "DesempenhoViewController" e faremos a mesma alteração no método configuraLayout, que está na linha 26. Agora executaremos o código, com "Command + R", iniciaremos o quiz, responderemos algumas perguntas e, com isso, percebemos que não tem mais o botão de voltar.

Isso porque não faz sentido poder voltar para o Quiz, da mesma forma que, ao clicarmos no botão "Reiniciar Quiz", não temos mais o botão de voltar na tela inicial. Agora voltaremos para o XCode para trabalhar nos textos da tela de desempenho, tornando-os dinâmicos.

No "DesempenhoViewController", após o fechamento de chaves do configurarLayout, na linha 29, pressionaremos "Enter" duas vezes e criaremos um novo método, escrevendo func configurarDesempenho, para configurarmos todos os textos. Depois, dentro do viewDidLoad(), chamaremos esse método na linha 24, após o configurarLayout.

//código omitido

    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarDesempenho()
        // Do any additional setup after loading the view.
    }

//código omitido

    func configurarDesempenho() {

    }COPIAR CÓDIGO
Lembrem-se que nosso atributo pontuacao é uma opcional, então precisamos "desembrulhar" essa opcional, usando o guard let dentro de configurarDesempenho. Portanto escreveremos guard let pontuacao = pontuacao else { return }. Com isso temos uma variável local chamada pontuacao que não é opcional, ou seja, está "desembrulhada".

//código omitido
    func configurarDesempenho() {
        guard let pontuacao = pontuacao else { return }
    }COPIAR CÓDIGO
Começaremos alterando o texto resultadoLabel, escrevendo resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões". Usamos aspas duplas por se tratar de um texto em string. Além disso, usamos a interpolação para inserir as variáveis em um texto, sendo elas, \(pontuacao) e \(questoes.count).

A \(pontuacao) é o número de questões acertadas e a \(questoes.count) representa o total de questões. Lembrando que questoes é a array que declaramos no modelo "Questao", mas mesmo estando em outro arquivo, podemos usar em todo nosso código. Por outro lado o .count conta todos os elementos que a array possui. Com isso temos um texto parecido com "Você acertou 2 de 10 questões".

Para o percentual precisamos fazer um cálculo, mas antes disso, executaremos o código que já temos para saber se tudo está funcionando da maneira esperada. Com isso voltaremos ao emulador, pressionamos "Iniciar Quiz" e responderemos as questões.

Na tela de finalização, após eu ter acertado duas questões, apareceu "Você acertou 2 de 3 questões", com mostrando o total de 3 questões. Portanto o texto já está dinâmico e funcionando de acordo com as questões do array e com o número de acertos da pessoa usuária.

Agora vamos calcular o percentual final. Para isso, voltaremos para configurarDesempenho e, na linha abaixo do resultadoLabel.text, escreveremos let percentual.

Precisamos realizar um pouco de cálculo, e sabemos que o percentual vai de 0% a 100%, sendo 0% o mínimo e 100% o máximo. Então nosso cálculo pode ser (pontuacao * 100) / questoes.count. Com isso temos nosso percentual.

    func configurarDesempenho() {
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões"
        let percentual = (pontuacao * 100) / questoes.count
    }COPIAR CÓDIGO
Explicando um pouco a matemática, suponhamos que acertamos duas questões, ou seja, a pontuação é 2, e 2 vezes 100 é 200. Imaginem que o número total de questões é 10, então o questoes.count será 10. Então 200 dividido por 10 é igual a 20, ou seja, 20% das questões.

Agora podemos configurar o texto para ser percentualLabel.text = "Percentual final: \(percentual)%". Assim chamamos o texto de percentual, colocamos o valor da variável percentual e o sinal "%".

    func configurarDesempenho() {
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões"
        let percentual = (pontuacao * 100) / questoes.count
        percentualLabel.text = "Percentual final: \(percentual)%"
    }COPIAR CÓDIGO
Executando o código mais uma vez, voltaremos para o emulador. Clicando no "Iniciar Quiz", podemos responder a todas as questões de forma errada e, ao chegarmos na última tela, temos as mensagens "Você acertou 0 de 3 questões" e "Percentual final: 0%".

Com isso, temos o iQuiz finalmente finalizado. Falta apenas organizarmos melhor os arquivos no XCode, porque temos nosso arquivo de modelo de questões, assim como o as view controllers todas bagunçadas na nossa estrutura de arquivos.

Sendo assim, clicaremos com o botão direito do mouse sobre a pasta do iQuiz e, no menu flutuante, selecionaremos "New Group" (Novo Grupo). Nomearemos esse novo grupo como "ViewController", depois arrastaremos todas as view controllers para dentro dessa pasta: a "ViewController", a "DesempenhoViewController" e a "QuestaoViewController".

Clicaremos novamente na pasta "iQuiz" com o botão direito e, mais uma vez, selecionaremos "New Group". Dessa vez nomearemos a pasta como "Modelo" e arrastaremos o arquivo "Questao" para lá.

Nessa aplicação, o "Questao" será o único arquivo na pasta "Modelo", mas em uma aplicação maior, com mais funcionalidades, provavelmente terão vários arquivos de modelo. Sendo assim, precisamos criar essa pasta para organizarmos nosso código de maneira eficiente. Organização de código e código limpo são boas práticas que sempre devemos seguir no projeto.

Finalizamos oficialmente nosso primeiro aplicativo iOS.

Vejo vocês no próximo vídeo.

@@08
Para saber mais: boa prática com uso de extensões

Quando falamos sobre extensões na linguagem Swift, aprendemos que podíamos utilizá-la no nosso código para uma melhor organização, correto?
No nosso arquivo QuestaoViewController.swift, nós alteramos a cor de fundo do botão para verde, caso o usuário acerte a resposta ou para vermelho, caso o usuário erre a resposta.

No momento, nosso código para essa funcionalidade está assim:

if usuarioAcertouResposta {
        pontuacao += 1
        sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
} else {
        sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
}COPIAR CÓDIGO
Nós podemos criar uma extensão de UIColor, adicionando essas duas cores, para deixar nosso código mais legível! Analise o código abaixo:

import UIKit

extension UIColor {
    static var corDeFundoVerde = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
    static var corDeFundoVermelho = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
}COPIAR CÓDIGO
Vamos a explicação: criamos uma extensão de UIColor (um tipo de dado já definido pelo framework UIKit) que contém duas novas propriedades: corDeFundoVerde e corDeFundoVermelho.

Note que essas duas propriedades são estáticas, pois não é possível criar propriedades armazenadas nas extensões. Também seria possível criar uma propriedade computada nesse caso.

Agora, voltando na verificação se o usuário acertou a resposta ou não, nosso código ficaria assim:

if usuarioAcertouResposta {
        pontuacao += 1
    sender.backgroundColor = UIColor.corDeFundoVerde
} else {
    sender.backgroundColor = UIColor.corDeFundoVermelho
}COPIAR CÓDIGO
Você pode definir a extension em um arquivo separado, nomeado como UIColor+, por exemplo.

Normalmente, quando criamos um arquivo que será uma extensão, nomeamos com o nome do tipo de dado e um sinal de adição. Veja a imagem abaixo:

Imagem que mostra o menu lateral esquerdo com os arquivos do Xcode e o código da extensão.

Pelo fato do tipo de dado UIColor ser um tipo de dado do framework UIKit, precisamos importar esse framework no arquivo UIColor+, utilizando um import UIKit.

Agora, temos uma pasta nomeada ‘Extensões’, com o arquivo da extensão dentro.

Muito legal, não é? Nosso código está muito mais organizado agora!

@@09
Faça como eu fiz: tela de desempenho

Agora é a sua vez! Chegou a hora de você seguir todos os passos realizados por mim durante esta aula. Portanto:
Crie a última tela da nossa aplicação, a tela de desempenho;
Aplique constraints;
Conecte os elementos do storyboard ao código;
Implemente a navegação com parâmetros utilizando de métodos como o prepare e performSegue;
Altere os textos dos elementos para que sejam dinâmicos, de acordo com a pontuação;
Crie um método para calcular a porcentagem;
Organize a estrutura de pastas do seu projeto.
Caso já tenha feito esses passos, excelente. Se ainda não, é importante que você execute o que foi visto nos vídeos para poder continuar com a próxima aula.

O ideal é que você tente replicar os passos por conta própria para validar seu aprendizado. Porém, caso tenha dificuldade, fique à vontade para dar uma olhadinha nos vídeos!
Vamos lá?

Opinião do instrutor

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/aula-05

@@10
Desafio: criando um quiz de 5 a 10 telas

Durante nosso projeto, criamos um Quiz de apenas 3 questões. Agora, é a sua vez de modificar o array de questões, implementando novas questões da sua temática favorita! Você pode adicionar quantas questões quiser, afinal nossa aplicação está bem dinâmica!
Compartilhe seu código na comunidade do discord! Vamos lá?

Se preferir, pode utilizar as sete perguntas abaixo (e criar as suas próprias):

Qual feitiço para desarmar o seu oponente, em Harry Potter?
a) Expectro Patronum
b) Avada Kedavra
c) Expelliarmus (Correta)
Quando foi lançado o filme Avatar 2?
a) 2014
b) 2022
c) 2023
Quando foi lançado o filme Vingadores Ultimato?
a) 2019
b) 2018
c) 2017
Qual é o primeiro filme da franquia Star Wars?
a) Star Wars: A Ameaça Fantasma
b) Star Wars: Uma Nova Esperança
c) Star Wars: O Império Contra-Ataca
Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?
a) Homem de Ferro
b) Capitão América: O Primeiro Vingador
c) Thor
Qual é o personagem principal de The Office, interpretado por Steve Carell?
a) Michael Scott
b) Jim Halpert
c) Dwight Schrute
Qual é o trabalho de Jay Pritchett na série Modern Family?
a) Médico
b) Empresário
c) Advogado

Opinião do instrutor

Meu quiz segue com a temática de filmes e séries, por isso adicionei essas novas questões no array de questões, que está definido dentro do arquivo ‘Questao.swift’:
let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Quando foi lançado o filme Avatar 2?", respostas: ["2014", "2022", "2023"], respostaCorreta: 1),
    Questao(titulo: "Quando foi lançado o filme Vingadores Ultimato?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),
    Questao(titulo: "Qual é o primeiro filme da franquia Star Wars?", respostas: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], respostaCorreta: 1),
    Questao(titulo: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", respostas: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], respostaCorreta: 0),
    Questao(titulo: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", respostas: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], respostaCorreta: 0),
    Questao(titulo: "Qual é o trabalho de Jay Pritchett na série Modern Family?", respostas: ["Médico", "Empresário", "Advogado"], respostaCorreta: 1),
]

@@11
Para saber mais: como rodar o aplicativo em dispositivo físico

Para executar seu aplicativo iOS em um dispositivo físico, você precisará de um dispositivo iOS e uma conta da Apple. Aqui estão os passos básicos que você precisará seguir:
1) Conecte o dispositivo físico ao seu computador através do cabo de carregamento;

2) Abra o Xcode com o projeto a ser executado;

3) Quando for executar o projeto, em vez de selecionar um simulador, selecione o seu próprio dispositivo físico;

a) Uma outra maneira de selecionar é clicando no menu “Product”, e então “Destination”.
4) Rode o seu aplicativo - é provável que ele não funcione.

O Xcode vai compilar seu aplicativo e instalá-lo no dispositivo físico. O aplicativo provavelmente não funcionará na primeira abertura no dispositivo, pois ele deve estar habilitado para executar aplicativos de desenvolvedores não confiáveis. Para habilitar essa opção, siga os demais passos abaixo.
5) Entre em Configurações do dispositivo > Geral > Perfil e configuração de gerenciamento de dispositivos.

Nesse momento, é importante que sua conta da Apple esteja conectada ao projeto. Para conectá-la, siga os últimos passos.
6) Entre no menu de arquivos e clique no projeto;

7) Vá em “Signing & Capabilities” e verifique se a sua conta está conectada e marcada em “Team”.

Observe a imagem abaixo:

Imagem que mostra o projeto selecionado e a conta ativa.(Tela-Xcode.png)

Para publicar seu aplicativo na loja da Apple, o processo é um pouco burocrático e você precisa de uma conta de desenvolvedor, que custa $99 dólares por ano! Você pode ler mais sobre a conta de desenvolvedor aqui e sobre a distribuição de aplicativos na loja oficial.

https://developer.apple.com/programs/

https://developer.apple.com/distribute/

https://caelum-online-public.s3.amazonaws.com/2823-ios/aula5/Tela-Xcode.png

@@12
Projeto final

Você pode baixar ou acessar o código-fonte do projeto final.
Aproveite para explorá-lo e revisar pontos importantes do curso.

Bons estudos!

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/archive/refs/heads/main.zip

https://github.com/alura-cursos/ios-construindo-seu-primeiro-aplicativo/tree/main

@@13
O que aprendemos?

Nessa aula, você aprendeu como:
Navegar entre telas com passagem de parâmetros;
Utilizar métodos como performSegue e prepare com o objetivo de preparar a tela para a navegação;
Alterar a propriedade de texto de um elemento label para que o texto seja dinâmico;
Calcular o percentual final do usuário.
Parabéns por chegar até aqui!

@@14
Recados finais

Parabéns, você chegou ao fim do nosso curso. Tenho certeza que esse mergulho foi de muito aprendizado.
E, então, o que você achou? Sua opinião importa e muito para nós!

Após os créditos finais do curso, você será redirecionado(a) para uma tela na qual poderá deixar seu feedback e avaliação do curso. Curtiu alguma coisa? Elogie! Percebeu um ponto de melhoria? Faça sua sugestão!

Aproveite para conhecer a nossa comunidade no Discord da Alura e se conectar com outras pessoas com quem pode conversar, aprender e aumentar seu networking.

Continue mergulhando com a gente ��.

https://discord.gg/QeBdgAjXnn

@@15
Conclusão

Parabéns por concluírem mais um curso. Agora vocês já têm construído seu primeiro aplicativo iOS e o mais interessante é que podem executá-lo no dispositivo físico.
Durante esse curso vocês construíram interfaces usando o StoryBoard e AutoLayout, com regras de posicionamento, as Constraints. Aprenderam também sobre Navegação entre telas e Modelagem de dados. Vocês estão no caminho certo para se tornarem desenvolvedores e desenvolvedoras iOS.

Caso tenham dúvidas, podem acessar o fórum do curso ou nos procurar no Discord da Alura, que estaremos à sua disposição. Vocês também podem se conectar com outras pessoas que estão fazendo, ou já fizeram, esse curso e trocar uma ideia sobre o universo do desenvolvimento iOS.

A sua avaliação também é extremamente importante para nós, então deixem sua nota ao final do curso. Também se lembrem de nos marcar nas redes sociais para mostrar o que aprenderam com "#AprendiNaAlura".

Obrigada por chegarem até aqui e até breve.

https://cursos.alura.com.br/forum/curso-construindo-o-seu-primeiro-aplicativo-ios/todos

https://discord.gg/SK9bj7hEYD