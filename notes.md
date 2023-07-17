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
