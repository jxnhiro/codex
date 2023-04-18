import SwiftUI

struct ContentView: View {
    @State var viewIndex: Int = 1
    
    @State var printedText: String = ""
    @State var myName: String = ""
    @State var myChangedName: String = ""
    @State var mySuperhero: String = ""
    @State var radiusWrongValue: String = ""
    var body: some View {
        if viewIndex == 1{
            IntroView(viewIndex: $viewIndex, printText: $printedText)
        } else if viewIndex == 2{
            FirstProgramView(viewIndex: $viewIndex, printedText: $printedText)
        }else if viewIndex == 3{
            VariableView(viewIndex: $viewIndex, myName: $myName)
        }else if viewIndex == 4{
            VariablePrintView(viewIndex: $viewIndex, printedName: $myName, myChangedName: $myChangedName)
        }else if viewIndex == 5{
            VariableChangePrintView(viewIndex: $viewIndex, printedName: $myName, myChangedName: $myChangedName)
        }else if viewIndex == 6{
            ImmutableVariableView(viewIndex: $viewIndex, mySuperhero: $mySuperhero)
        }else if viewIndex == 7{
            ImmutableVariableErrorView(viewIndex: $viewIndex, mySuperhero: $mySuperhero)
        }else if viewIndex == 8{
            CircleVariableView(viewIndex: $viewIndex)
        }else if viewIndex == 9{
            CircleFixView(viewIndex: $viewIndex)
        }else if viewIndex == 10{
            CircleOMeterView(viewIndex: $viewIndex)
        }else if viewIndex == 11{
            TypesView(viewIndex: $viewIndex)
        }else if viewIndex == 12{
            TypesPracticeView(viewIndex: $viewIndex, myName: $myName)
        }else if viewIndex == 13{
            TypesErrorView(viewIndex: $viewIndex, myName: $myName, radiusWrongValue: $radiusWrongValue)
        }else if viewIndex == 14{
            TypesErrorPrintView(viewIndex: $viewIndex, myName: $myName, radiusWrongValue: $radiusWrongValue)
        }else if viewIndex == 15{
            FunctionsView(viewIndex: $viewIndex)
        }else if viewIndex == 16{
            FunctionsPrintView(viewIndex: $viewIndex)
        }else if viewIndex == 17{
            DarkModeLightModeView(viewIndex: $viewIndex)
        }else if viewIndex == 18{
            IfGradeView(viewIndex: $viewIndex)
        }else if viewIndex == 19{
            ElseIfView(viewIndex: $viewIndex)
        }else if viewIndex == 20{
            ElseIfPrintView(viewIndex: $viewIndex)
        }else if viewIndex == 21{
            KeyboardBrokenView(viewIndex: $viewIndex)
        }else if viewIndex == 22{
            KeyboardVariableView(viewIndex: $viewIndex)
        }else if viewIndex == 23{
            KeyboardView(viewIndex: $viewIndex)
        }
    }
}
