//
//  ContentView.swift
//  TrafficLightsUI
//
//  Created by Alexander Shevtsov on 14.03.2025.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START" // !State всегда приват!
    @State private var currentLight: CurrentLight = .off // начальное сост кейса
    
    var body: some View {
        ZStack { // сначала накладываем фон
            Color(.black) // цвет фона
                .ignoresSafeArea() // игнорируя SafeAr
            // вкл и выкл сигналы
            VStack(spacing: 20) { // накладываем окружности на фон
                ColorCircleView( // иниц
                    color: .red, // с параметром
                    opacity: currentLight == .red ? 1 : 0.3 // передаем прозрачность
                ) // если сurrent равно red то передаем вкл иначе выкл
                ColorCircleView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer().frame(height: 110) // раздвигаем круги и кнопку на 110
                
                StartButtonView(title: buttonTitle) { // размещаем кнопку
                    if buttonTitle == "START" { // прописываем логику
                        buttonTitle = "NEXT"
                    }
                    nextColor() // и вызываем функцию смены цветов
                }
            }
            .padding() // добавляем отступы для всех объектов
        }
    }
    // логика смены сигналов
    private func nextColor() {
        switch currentLight {
        case .off: currentLight = .red // если текущий офф то след red и т.д.
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}

