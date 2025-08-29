# 📱 Calculadora Flutter

Um aplicativo de calculadora desenvolvido em Flutter como projeto de aprendizado, apresentando uma interface moderna com tema dark e funcionalidades básicas de cálculo.

## ✨ Características

- **Interface Dark**: Design moderno com tema escuro
- **Botões Arredondados**: Interface elegante com bordas arredondadas
- **Cálculos Básicos**: Suporte para operações matemáticas fundamentais
- **Arquitetura MVC**: Implementação usando padrão Model-View-Controller
- **Pattern Matching**: Uso de sealed classes para gerenciar tipos de cliques
- **State Management**: Gerenciamento de estado com ChangeNotifier

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework principal para desenvolvimento
- **Dart**: Linguagem de programação
- **function_tree**: Biblioteca para interpretação de expressões matemáticas
- **Material Design 3**: Sistema de design do Google

## 📁 Estrutura do Projeto

```
lib/
├── main.dart                    # Ponto de entrada da aplicação
├── controllers/
│   └── calc_controller.dart     # Lógica de negócio da calculadora
├── screens/
│   └── home_screen.dart         # Tela principal
└── widgets/
    ├── custom_button.dart       # Componente de botões customizados
    └── display_screen.dart      # Componente do display
```

## 🎯 Funcionalidades

### Operações Disponíveis
- ✅ Soma (+)
- ✅ Subtração (-)
- ✅ Multiplicação (*)
- ✅ Divisão (/)
- ✅ Porcentagem (%)
- ✅ Inversão de sinal (+/-)
- ✅ Limpeza (AC)
- ✅ Números decimais (.)

### Tipos de Botões
- **CommonButton**: Números e operadores básicos
- **ClearButton**: Botão de limpeza (AC)
- **EqualsButton**: Botão de resultado (=)

## 🚀 Como Executar

### Pré-requisitos
- Flutter SDK (versão 3.0 ou superior)
- Dart SDK
- Android Studio ou VS Code
- Dispositivo Android/iOS ou emulador

### Instalação

1. Clone o repositório:
```bash
git clone [URL_DO_REPOSITORIO]
cd calculadora
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Execute o aplicativo:
```bash
flutter run
```

## 📦 Dependências

```yaml
dependencies:
  flutter:
    sdk: flutter
  function_tree: ^0.8.15
  
dev_dependencies:
  flutter_test:
    sdk: flutter
```

## 🏗️ Arquitetura

### Padrão Sealed Classes
O projeto utiliza sealed classes para definir tipos específicos de cliques de botões:

```dart
sealed class ButtonClick {
  final String value;
  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick { ... }
class EqualsButtonClick extends ButtonClick { ... }
class ClearButtonClick extends ButtonClick { ... }
```

### Controller Pattern
A lógica de cálculo é gerenciada pelo `CalcController` que estende `ChangeNotifier`:

```dart
class CalcController extends ChangeNotifier {
  var display = '';
  
  void onButtonClick(ButtonClick click) {
    // Lógica de processamento dos cliques
    notifyListeners();
  }
}
```

## 🎨 Interface

- **Display**: Área superior que mostra os números e resultados
- **Botões**: Grid 4x5 com diferentes tipos de botões coloridos
- **Tema**: Design dark com bordas arredondadas
- **Cores**:
  - Números: Texto branco em fundo preto
  - Operadores: Texto vermelho em fundo preto
  - Funções: Texto verde em fundo preto

## 📱 Screenshots

*[Adicione aqui screenshots da aplicação]*

## 🔧 Possíveis Melhorias

- [ ] Histórico de cálculos
- [ ] Mais operações matemáticas (raiz, potência, etc.)
- [ ] Tema claro/escuro alternável
- [ ] Animações de transição
- [ ] Suporte a expressões mais complexas
- [ ] Testes unitários

## 📚 Aprendizados

Este projeto foi desenvolvido como exercício de aprendizado, focando em:

- Estruturação de projetos Flutter
- Gerenciamento de estado com ChangeNotifier
- Uso de sealed classes (pattern matching)
- Componentização de widgets
- Aplicação de temas e estilos
- Integração de bibliotecas externas

## 📄 Licença

Este é um projeto de estudo e aprendizado. Sinta-se livre para usar como referência.

---

**Desenvolvido com ❤️ usando Flutter**