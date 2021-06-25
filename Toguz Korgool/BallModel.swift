//
//  BallModel.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 21.05.21.
//

import Foundation
import SwiftUI

class BallModel: ObservableObject {
    static let instance = BallModel()
    
    
    var side: CGFloat{
        return UIScreen.main.bounds.height/UIScreen.main.bounds.width < 1.5 ? UIScreen.main.bounds.width/43 : UIScreen.main.bounds.height/UIScreen.main.bounds.width > 1.8 ? UIScreen.main.bounds.width/33 : UIScreen.main.bounds.width/34.5
    }
    func getBallsNum(num: Int) -> some View{
        let data = Array(0..<num).map { "Item:\($0)" }
        let layout = [
            GridItem(spacing: 2, alignment: .trailing),
            GridItem(spacing: 2, alignment: .trailing),
            GridItem(spacing: 2, alignment: .trailing),
            GridItem(spacing: 2, alignment: .trailing)
        ]
        var view: some View{
            LazyHGrid(rows: layout, alignment: .center, spacing: 5){
                ForEach(data, id: \.self) { [weak self] _ in
                    self?.ballView
                }
                Spacer()
            }.id(UUID())
        }
        return view
    }
    func getTargetNum(num: Int) -> some View{
        let data = Array(0..<num).map { "Item:\($0)" }
        let layout = [
            GridItem(spacing: 2),
            GridItem(spacing: 2),
            GridItem(spacing: 2),
            GridItem(spacing: 2)
        ]
        var view: some View{
            LazyVGrid(columns: layout, spacing: 5){
                ForEach(data, id: \.self) { [weak self] _ in
                    self?.ballView
                }
                Spacer()
            }.id(UUID())
        }
        return view
    }
   
    var ballView: some View{
        Image("ball3d")
            .resizable()
            .frame(width: side, height: side)
            .shadow(color: Color.black.opacity(0.6), radius: 2, x: 2, y: 3)
    }
}
