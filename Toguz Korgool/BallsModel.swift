//
//  BallsModel.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 21.05.21.
//

import Foundation
import SwiftUI

class BallsModel: ObservableObject {
    static let instance = BallsModel()
    
    
    var side: CGFloat{
        return UIScreen.main.bounds.height/UIScreen.main.bounds.width < 1.5 ? UIScreen.main.bounds.width/43 : UIScreen.main.bounds.height/UIScreen.main.bounds.width > 1.8 ? UIScreen.main.bounds.width/33 : UIScreen.main.bounds.width/34.5
    }
    
    
    func getBalls(num: Int) -> some View{
        switch num {
        case 1: return AnyView(ball1)
        case 2: return AnyView(balls2)
        case 3: return AnyView(balls3)
        case 4: return AnyView(balls4)
        case 5: return AnyView(balls5)
        case 6: return AnyView(balls6)
        case 7: return AnyView(balls7)
        case 8: return AnyView(balls8)
        case 9: return AnyView(balls9)
        case 10: return AnyView(balls10)
        case 11: return AnyView(balls11)
        case 12: return AnyView(balls12)
        case 13: return AnyView(balls13)
        case 14: return AnyView(balls14)
        case 15: return AnyView(balls15)
        case 16: return AnyView(balls16)
        case 17: return AnyView(balls17)
        case 18: return AnyView(balls18)
        case 19: return AnyView(balls19)
        case 20: return AnyView(balls20)
        case 21: return AnyView(balls21)
        case 22: return AnyView(balls22)
        case 23: return AnyView(balls23)
        case 24: return AnyView(balls24)
        case 25: return AnyView(balls25)
        case 26: return AnyView(balls26)
        case 27: return AnyView(balls27)
        case 28: return AnyView(balls28)
        case 29: return AnyView(balls29)
        case 30: return AnyView(balls30)
        case 31: return AnyView(balls31)
        case 32: return AnyView(balls32)
        default: return AnyView(ZStack{})
        }
    }
    
    func getBallsT(num: Int) -> some View{
        
        let diff = num - 40
        if num > 40{
            return AnyView(VStack(spacing: 5){
                getBallsT(num: diff)
                getBallsT(num: 40)
            })
        }
        
        switch num {
        case 1: return AnyView(target1)
        case 2: return AnyView(target2)
        case 3: return AnyView(target3)
        case 4: return AnyView(target4)
        case 5: return AnyView(target5)
        case 6: return AnyView(target6)
        case 7: return AnyView(target7)
        case 8: return AnyView(target8)
        case 9: return AnyView(target9)
        case 10: return AnyView(target10)
        case 11: return AnyView(target11)
        case 12: return AnyView(target12)
        case 13: return AnyView(target13)
        case 14: return AnyView(target14)
        case 15: return AnyView(target15)
        case 16: return AnyView(target16)
        case 17: return AnyView(target17)
        case 18: return AnyView(target18)
        case 19: return AnyView(target19)
        case 20: return AnyView(target20)
        case 21: return AnyView(target21)
        case 22: return AnyView(target22)
        case 23: return AnyView(target23)
        case 24: return AnyView(target24)
        case 25: return AnyView(target25)
        case 26: return AnyView(target26)
        case 27: return AnyView(target27)
        case 28: return AnyView(target28)
        case 29: return AnyView(target29)
        case 30: return AnyView(target30)
        case 31: return AnyView(target31)
        case 32: return AnyView(target32)
        case 33: return AnyView(target33)
        case 34: return AnyView(target34)
        case 35: return AnyView(target35)
        case 36: return AnyView(target36)
        case 37: return AnyView(target37)
        case 38: return AnyView(target38)
        case 39: return AnyView(target39)
        case 40: return AnyView(target40)
        case 41: return AnyView(target41)
        case 42: return AnyView(target42)
        case 43: return AnyView(target43)
        case 44: return AnyView(target44)
        case 45: return AnyView(target45)
        case 46: return AnyView(target46)
        case 47: return AnyView(target47)
        case 48: return AnyView(target48)
        default: return AnyView(ZStack{})
        }
    }
    
    
}

//MARK: BALLS IN POSITIONS
extension BallsModel{
    var one: some View{
        VStack{
            ballView
        }
    }
    
    var two: some View{
        VStack{
            ballView
            ballView
        }
    }
    
    var three: some View{
        VStack(spacing: 5){
            ballView
            ballView
            ballView
        }
    }
    var four: some View{
        VStack(spacing: 5){
            ballView
            ballView
            ballView
            ballView
        }
    }
    
    func getBallsNum(num: Int) -> some View{
        let fours = num/4
        let remain = num % 4
        var view: some View{
            HStack(spacing: 5){
                Spacer()
                switch remain {
                case 1: one
                case 2: two
                case 3: three
                default: ZStack{}
                }
                ForEach(0..<fours){ _ in
                    self.four
                }
            }
        }
        return AnyView(view)
    }
    
    var ballView: some View{
        Image("ball3d")
            .resizable()
            .frame(width: side, height: side)
            .shadow(color: Color.black.opacity(0.6), radius: 2, x: 2, y: 3)
            .id(UUID())
    }
    /*var ballView: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8666666667, green: 0.8549019608, blue: 0.8470588235, alpha: 1)), Color(#colorLiteral(red: 0.8666666667, green: 0.8549019608, blue: 0.8470588235, alpha: 1)), Color(#colorLiteral(red: 0.5411764706, green: 0.5411764706, blue: 0.5411764706, alpha: 1)), Color(#colorLiteral(red: 0.3254901961, green: 0.3607843137, blue: 0.3725490196, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                .frame(width: side, height: side)
                .cornerRadius(side/2)
                .rotationEffect(Angle(degrees: 25))
                .shadow(color: Color.black.opacity(0.6), radius: 2, x: 2, y: 3)
        }
    }
    */
    var ball1: some View{
        HStack{
            Spacer()
            one
        }
    }
    
    var balls2: some View{
        HStack{
            Spacer()
            two
        }
    }
    
    var balls3: some View{
        HStack{
            Spacer()
            three
        }
    }
    
    var balls4: some View{
        HStack{
            Spacer()
            four
            
        }
    }
    
    var balls5: some View{
        HStack(spacing: 5){
            Spacer()
            one
            four
        }
    }
    
    var balls6: some View{
        HStack(spacing: 5){
            Spacer()
            two
            four
        }
    }
    
    var balls7: some View{
        HStack(spacing: 5){
            Spacer()
            three
            four
        }
    }
    
    var balls8: some View{
        HStack(spacing: 5){
            Spacer()
            four
            four
        }
    }
    
    var balls9: some View{
        HStack(spacing: 5){
            Spacer()
            one
            four
            four
        }
    }
    
    var balls10: some View{
        HStack(spacing: 5){
            Spacer()
            two
            four
            four
        }
    }
    
    var balls11: some View{
        HStack(spacing: 5){
            Spacer()
            three
            four
            four
        }
    }
    
    var balls12: some View{
        HStack(spacing: 5){
            Spacer()
            four
            four
            four
        }
    }
    
    var balls13: some View{
        HStack(spacing: 5){
            balls9
            four
        }
    }
    
    var balls14: some View{
        HStack(spacing: 5){
            balls10
            four
        }
    }
    
    var balls15: some View{
        HStack(spacing: 5){
            balls11
            four
        }
    }
    
    var balls16: some View{
        HStack(spacing: 5){
            balls12
            four
        }
    }
    
    var balls17: some View{
        HStack(spacing: 5){
            balls13
            four
        }
    }
    
    var balls18: some View{
        HStack(spacing: 5){
            balls14
            four
        }
    }
    
    var balls19: some View{
        HStack(spacing: 5){
            balls15
            four
        }
    }
    
    var balls20: some View{
        HStack(spacing: 5){
            balls16
            four
        }
    }
    
    var balls21: some View{
        HStack(spacing: 5){
            balls17
            four
        }
    }
    var balls22: some View{
        HStack(spacing: 5){
            balls18
            four
        }
    }
    
    var balls23: some View{
        HStack(spacing: 5){
            balls19
            four
        }
    }
    var balls24: some View{
        HStack(spacing: 5){
            balls20
            four
        }
    }
    
    var balls25: some View{
        HStack(spacing: 5){
            balls21
            four
        }
    }
    
    var balls26: some View{
        HStack(spacing: 5){
            balls22
            four
        }
    }
    
    var balls27: some View{
        HStack(spacing: 5){
            balls23
            four
        }
    }
    var balls28: some View{
        HStack(spacing: 5){
            balls24
            four
        }
    }
    
    var balls29: some View{
        HStack(spacing: 5){
            balls25
            four
        }
    }
    
    var balls30: some View{
        HStack(spacing: 5){
            balls26
            four
        }
    }
    
    var balls31: some View{
        HStack(spacing: 5){
            balls27
            four
        }
    }
    
    
    var balls32: some View{
        HStack(spacing: 5){
            balls28
            four
        }
    }
}

//MARK: BALLS IN TARGETS
extension BallsModel{
    
    var oneT: some View{
        HStack{
            ballView
        }
    }
    
    var twoT: some View{
        HStack{
            ballView
            ballView
        }
    }
    
    var threeT: some View{
        HStack(spacing: 5){
            ballView
            ballView
            ballView
        }
    }
    var fourT: some View{
        HStack(spacing: 5){
            ballView
            ballView
            ballView
            ballView
        }
    }
    
    var target1: some View{
        VStack{
            oneT
        }
    }
    
    var target2: some View{
        VStack{
            twoT
        }
    }
    
    var target3: some View{
       VStack{
            threeT
        }
    }
    
    var target4: some View{
        VStack{
            fourT
            
        }
    }
    
    var target5: some View{
        VStack(spacing: 5){
            oneT
            fourT
        }
    }
    
    var target6: some View{
        VStack(spacing: 5){
            twoT
            fourT
        }
    }
    
    var target7: some View{
        VStack(spacing: 5){
            threeT
            fourT
        }
    }
    
    var target8: some View{
        VStack(spacing: 5){
            fourT
            fourT
        }
    }
    
    var target9: some View{
        VStack(spacing: 5){
            oneT
            fourT
            fourT
        }
    }
    
    var target10: some View{
        VStack(spacing: 5){
            twoT
            fourT
            fourT
        }
    }
    
    var target11: some View{
        VStack(spacing: 5){
            threeT
            fourT
            fourT
        }
    }
    
    var target12: some View{
        VStack(spacing: 5){
            fourT
            fourT
            fourT
        }
    }
    
    var target13: some View{
        VStack(spacing: 5){
            target9
            fourT
        }
    }
    
    var target14: some View{
        VStack(spacing: 5){
            target10
            fourT
        }
    }
    
    var target15: some View{
        VStack(spacing: 5){
            target11
            fourT
        }
    }
    
    var target16: some View{
        VStack(spacing: 5){
            target12
            fourT
        }
    }
    
    var target17: some View{
        VStack(spacing: 5){
            target13
            fourT
        }
    }
    
    var target18: some View{
        VStack(spacing: 5){
            target14
            fourT
        }
    }
    
    var target19: some View{
        VStack(spacing: 5){
            target15
            fourT
        }
    }
    
    var target20: some View{
        VStack(spacing: 5){
            target16
            fourT
        }
    }
    
    var target21: some View{
        VStack(spacing: 5){
            target17
            fourT
        }
    }
    var target22: some View{
        VStack(spacing: 5){
            target18
            fourT
        }
    }
    
    var target23: some View{
        VStack(spacing: 5){
            target19
            fourT
        }
    }
    var target24: some View{
        VStack(spacing: 5){
            target20
            fourT
        }
    }
    
    var target25: some View{
        VStack(spacing: 5){
            target21
            fourT
        }
    }
    
    var target26: some View{
        VStack(spacing: 5){
            target22
            fourT
        }
    }
    
    var target27: some View{
        VStack(spacing: 5){
            target23
            fourT
        }
    }
    var target28: some View{
        VStack(spacing: 5){
            target24
            fourT
        }
    }
    
    var target29: some View{
        VStack(spacing: 5){
            target25
            fourT
        }
    }
    
    var target30: some View{
        VStack(spacing: 5){
            target26
            fourT
        }
    }
    
    var target31: some View{
        VStack(spacing: 5){
            target27
            fourT
        }
    }
    
    
    var target32: some View{
        VStack(spacing: 5){
            target28
            fourT
        }
    }
    var target33: some View{
        VStack(spacing: 5){
            target29
            fourT
        }
    }
    var target34: some View{
        VStack(spacing: 5){
            target30
            fourT
        }
    }
    
    var target35: some View{
        VStack(spacing: 5){
            target31
            fourT
        }
    }
    
    var target36: some View{
        VStack(spacing: 5){
            target32
            fourT
        }
    }
    
    var target37: some View{
        VStack(spacing: 5){
            target33
            fourT
            
        }
    }
    
    var target38: some View{
        VStack(spacing: 5){
            target34
            fourT
            
        }
    }
    
    var target39: some View{
        VStack(spacing: 5){
            target35
            fourT
            
        }
    }
    
    var target40: some View{
        VStack(spacing: 5){
            target36
            fourT
        }
    }
    
    var target41: some View{
        VStack(spacing: 5){
            target37
            fourT
        }
    }
    
    var target42: some View{
        VStack(spacing: 5){
            target38
            fourT
        }
    }
    
    var target43: some View{
        VStack(spacing: 5){
            target39
            fourT
        }
    }
    
    var target44: some View{
        VStack(spacing: 5){
            target40
            fourT
        }
    }
    
    var target45: some View{
        VStack(spacing: 5){
            target41
            fourT
        }
    }
    
    var target46: some View{
        VStack(spacing: 5){
            target42
            fourT
        }
    }
    
    var target47: some View{
        VStack(spacing: 5){
            target43
            fourT
        }
    }
    
    var target48: some View{
        VStack(spacing: 5){
            target44
            fourT
        }
    }
    
    
}
