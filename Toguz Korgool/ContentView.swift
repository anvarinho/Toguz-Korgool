//
//  ContentView.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 28.12.20.
//

import SwiftUI

//MARK: THE VIEW OF GAME
struct ContentView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var side: CGFloat{
        return UIScreen.main.bounds.height/UIScreen.main.bounds.width < 1.5 ? UIScreen.main.bounds.width/43 : UIScreen.main.bounds.height/UIScreen.main.bounds.width > 1.8 ? UIScreen.main.bounds.width/33 : UIScreen.main.bounds.width/34.5
    }
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)).ignoresSafeArea()
            
            VStack {
                HStack{
                    Button(action: {
                        withAnimation{
                            vm.stepBack()
                        }
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(vm.saveGame.count > 1 ? Color.orange : Color.gray, lineWidth: 3)
                                .frame(width: 80, height: 30)
                            Text("Back")
                                .font(.system(size: 25, weight: .bold, design: .rounded))
                                .foregroundColor(vm.saveGame.count > 1 ? .orange : .gray)
                        }
                        
                    })
                    
                    Spacer()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 3)
                            .frame(width: 120, height: 35)
                        Text("\(vm.gates[1]) : \(vm.gates[0])")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                    }.onTapGesture {
                        withAnimation{
                            vm.showList = true
                        }
                        
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                            vm.isGame = false
                        }
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.orange, lineWidth: 3)
                                .frame(width: 80, height: 30)
                            Text("Menu")
                                .font(.system(size: 25, weight: .bold, design: .rounded))
                                .foregroundColor(.orange)
                        }
                        
                    })
                }.padding(.horizontal, 15)
                HStack{
                    VStack{
                        ForEach(vm.position[0..<vm.position.count/2].indices, id: \.self){ index in
                            ZStack(alignment: .trailing){
                                if vm.position[index] > 100{
                                    aceForm
                                        .onTapGesture{
                                            HapticManager.instance.notification(type: .error)
                                        }
                                }else{
                                    backForm2
                                        .onTapGesture {
                                            firstPlayer(index)
                                        }
                                    HStack {
                                        Text("\(index + 1)")
                                            .bold()
                                            .rotationEffect(Angle(degrees: 90))
                                            .foregroundColor(vm.isFirstTurn ? .orange : .gray)
                                        Spacer()
                                    }.padding(5)
                                    BallModel.instance.getBallsNum(num: vm.position[index])
                                        .padding(4)
                                        .rotationEffect(Angle(degrees: 180))
                                    
                                }
                            }
                        }
                    }
                        
                    VStack{
                        ForEach(vm.gates.indices){ index in
                            ZStack(alignment: index == 1 ? .top : .bottom){
                                if index == 1{
                                    backForm2
                                }else{
                                    backForm
                                }
                                
                                BallModel.instance.getTargetNum(num: vm.gates[index])
                                    .padding(6)
                                    .rotationEffect(Angle(degrees: index == 1 ? 0 : 180))
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width/5)
                    .onTapGesture {
                        vm.changeTurn()
                    }
                        
                    VStack{
                        ForEach(vm.position[vm.position.count/2..<vm.position.count].indices.reversed(), id: \.self){ index in
                            ZStack(alignment: .leading){
                                if vm.position[index] > 100{
                                    aceForm
                                        .onTapGesture {
                                            HapticManager.instance.notification(type: .error)
                                        }
                                }else{
                                    backForm
                                        .onTapGesture {
                                            secondPlayer(index)
                                        }
                                    HStack {
                                        Spacer()
                                        Text("\(index - 8)")
                                            .bold()
                                            .rotationEffect(Angle(degrees: -90))
                                            .foregroundColor(vm.isFirstTurn ? .gray : .orange)
                                    }.padding(5)
                                    
                                    BallModel.instance.getBallsNum(num: vm.position[index])
                                        .padding(4)
                                            
                                }
                            }
                        }
                    }
                }.padding(5)
            }
            
        }
    }
    func firstPlayer(_ index: Int){
        DispatchQueue.main.async {
            withAnimation{
                if vm.isFirstTurn && vm.position[index] != 0{
                    vm.game(index: index)
                    vm.isFirstTurn = false
                }
            }
        }
    }
    
    func secondPlayer(_ index: Int){
        DispatchQueue.main.async {
            withAnimation{
                if !vm.isFirstTurn && vm.position[index] != 0{
                    vm.game(index: index)
                    vm.isFirstTurn = true
                }
            }
        }
    }
    
    
    var backForm: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(#colorLiteral(red: 0.2741151229, green: 0.2889690125, blue: 0.1140538137, alpha: 1)))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)), lineWidth: 3)
                    .shadow(color: Color(#colorLiteral(red: 0.1431658209, green: 0.1522311586, blue: 0.06070293204, alpha: 1)), radius: 3, x: 3, y: 3)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color(#colorLiteral(red: 0.476646683, green: 0.5, blue: 0.201785075, alpha: 1)), radius: 3, x: -3, y: -3)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            )
    }
    
    var backForm2: some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(#colorLiteral(red: 0.3289733263, green: 0.3467999001, blue: 0.1368792136, alpha: 1)))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)), lineWidth: 3)
                    .shadow(color: Color(#colorLiteral(red: 0.1431658209, green: 0.1522311586, blue: 0.06070293204, alpha: 1)), radius: 3, x: 3, y: 3)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color(#colorLiteral(red: 0.476646683, green: 0.5, blue: 0.201785075, alpha: 1)), radius: 3, x: -3, y: -3)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            )
    }
  
    var aceForm: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)), lineWidth: 3)
                        .shadow(color: Color(#colorLiteral(red: 0.1431658209, green: 0.1522311586, blue: 0.06070293204, alpha: 1)), radius: 3, x: -3, y: -3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: Color(#colorLiteral(red: 0.476646683, green: 0.5, blue: 0.201785075, alpha: 1)), radius: 3, x: 3, y: 3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
            )
            Image(systemName: "heart")
                .foregroundColor(.orange)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


