//
//  ButtonStyle.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 17.05.21.
//

import SwiftUI

struct ButtonStyleView: View {
    var text: String = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)), lineWidth: 3)
                        .shadow(color: Color(#colorLiteral(red: 0.1431658209, green: 0.1522311586, blue: 0.06070293204, alpha: 1)), radius: 3, x: -3, y: -3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: Color(#colorLiteral(red: 0.476646683, green: 0.5, blue: 0.201785075, alpha: 1)), radius: 3, x: 3, y: 3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
            Text(text)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.orange)
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
    }
}

struct ButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleView()
    }
}
