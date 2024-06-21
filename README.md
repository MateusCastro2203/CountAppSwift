# SwiftUICounterApp

SwiftUICounterApp é um aplicativo simples criado com SwiftUI que demonstra como criar uma interface de usuário básica e reativa. O aplicativo possui dois botões: um para incrementar um contador e outro para decrementá-lo. O botão de decremento é desativado quando o valor do contador é zero.

## Funcionalidades

- Incrementar o contador ao pressionar o botão "Incrementar".
- Decrementar o contador ao pressionar o botão "Decrementar".
- O botão "Decrementar" é desativado quando o contador é igual a zero.

## Pré-requisitos

- macOS com Xcode instalado.
- Conhecimento básico de Swift e SwiftUI.

## Como Configurar e Executar

1. **Clone o Repositório**:
    ```sh
    git clone https://github.com/<your-github-username>/SwiftUICounterApp.git
    cd SwiftUICounterApp
    ```

2. **Abra o Projeto no Xcode**:
    - Abra o Xcode.
    - Selecione `File` > `Open...` e navegue até o diretório do projeto.
    - Selecione o arquivo `SwiftUICounterApp.xcodeproj` para abrir o projeto.

3. **Execute o Projeto**:
    - Selecione o dispositivo de simulação (por exemplo, iPhone 14) na barra de ferramentas do Xcode.
    - Clique no botão de play (triângulo) para compilar e executar o aplicativo.

## Código Principal

### ContentView.swift

```swift
import SwiftUI

struct ContentView: View {
    @State private var contador = 0
    
    var body: some View {
        VStack {
            Text("Contagem: \(contador)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button(action: {
                    self.contador += 1
                }) {
                    Text("Incrementar")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    self.contador -= 1
                }) {
                    Text("Decrementar")
                        .font(.title)
                        .padding()
                        .background(contador > 0 ? Color.red : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(contador == 0)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
