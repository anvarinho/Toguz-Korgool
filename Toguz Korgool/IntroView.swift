//
//  IntroView.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 10.05.21.
//

import SwiftUI

struct IntroView: View {
    @State var showSteps = false
    @State var showSheet = false
    @StateObject var vm = ViewModel()
    //@State var viewState = CGSize.zero
    var body: some View {
            ZStack{
                introView
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                if vm.isGame{
                    ContentView()
                        .transition(.asymmetric(insertion: .opacity, removal: .scale))
                        .onLongPressGesture {
                            withAnimation{
                                vm.isGame = false
                            }
                        }
                }
                if vm.showList{
                    PreviousStepsView()
                        .transition(.asymmetric(insertion: .opacity, removal: .scale))
                        .onTapGesture {
                            withAnimation{
                                vm.showList = false
                            }
                            
                        }
                }
                // DRAGGESTURE:
                  /*  .offset(y: viewState.height)
                    .animation(.spring())
                    .gesture(
                        DragGesture()
                            .onChanged{ value in
                                self.viewState = value.translation
                            }
                            .onEnded{ value in
                                if self.viewState.height > 200 {
                                    self.viewState = CGSize(width: 0, height: 1000)
                                }else{
                                    self.viewState = .zero
                                }
                            }
                    
                    )
                */
            }.environmentObject(vm)
    }

    var introView: some View{
        ZStack{
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Toguz Korgool")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(.orange)
                Spacer()
                Button(action: {
                    withAnimation {
                        vm.isGame = true
                    }
                }, label: {
                    ButtonStyleView(text: vm.saveGame.count > 1 ? "Resume" : "Play")
                })

                    
                if vm.saveGame.count > 1{
                    Button(action: {
                        withAnimation{
                            vm.resetGame()
                            vm.isGame = true
                        }
                    }, label: {
                        ButtonStyleView(text: "Restart")
                    })
                }
                  
                    
                Button(action: {
                    withAnimation{
                        vm.showList = true
                    }
                }, label: {
                    ButtonStyleView(text: "List")
                })
                
                Button(action: {
                    withAnimation{
                        showSheet = true
                    }
                }, label: {
                    ButtonStyleView(text: "About Game")
                })
                
                    
                Spacer()
                Spacer()
                        
            }.padding(20)
        }.sheet(isPresented: $showSheet, content: {
            AboutGameView()
        })
       // .fullScreenCover(isPresented: $showSteps, content: {
         //   PreviousStepsView()
        //})
    }
    
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
