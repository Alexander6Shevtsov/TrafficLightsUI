//
//  StartButtonView.swift
//  TrafficLightsUI
//
//  Created by Alexander Shevtsov on 14.03.2025.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) { // передаем действие без ()
            Text(title)
                .font(.title) // размер шрифта
                .fontWeight(.bold) // жирный шрифт
                .foregroundColor(.white) // текст белый
        } // настройка самой кнопки
        .frame(width: 200, height: 60) // размер
        .background(Color(.blue)) // цвет
        .clipShape(.rect(cornerRadius: 20)) // скругление вместо corner
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 1) // ореол
        )
    }
}

#Preview {
    StartButtonView(title: "START", action: {})
}
