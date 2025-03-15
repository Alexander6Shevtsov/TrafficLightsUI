//
//  ColorCircleView.swift
//  TrafficLightsUI
//
//  Created by Alexander Shevtsov on 14.03.2025.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 125) // размер
            .foregroundColor(color) // передаем цвет
            .opacity(opacity) // передаем прозрачность
            .overlay(Circle().stroke(Color.white, lineWidth: 1)) // ореол
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
