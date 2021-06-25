//
//  PreviousStepsView.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 17.05.21.
//

import SwiftUI

struct PreviousStepsView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.3019607843, green: 0.3176470588, blue: 0.1215686275, alpha: 1)).ignoresSafeArea()
            if vm.saveSteps.count < 1{
                Text("The list is empty")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            }
            ScrollView(.vertical){
                HStack(alignment: .top) {
                    Spacer()
                    VStack{
                        ForEach(0..<vm.saveSteps.count/3*2, id: \.self) {
                            index in
                            if index != 0{
                                Text("\(index)")
                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                                    .foregroundColor(.gray)
                                    .frame(height: 45)
                            }
                        }
                    }
                    Spacer()
                    VStack{
                        ForEach(vm.saveSteps.indices) { index in
                            if index % 2 == 0{
                                Text("\(vm.saveSteps[index])")
                                    .font(.system(size: 30, weight: .bold, design: .rounded))
                                    .foregroundColor(.white)
                                    .frame(height: 45)
                                
                            }
                        }
                    }
                    Spacer()
                    VStack{
                        ForEach(vm.saveSteps.indices) { index in
                            if index % 2 == 1{
                                Text("\(vm.saveSteps[index])")
                                    .font(.system(size: 30, weight: .bold, design: .rounded))
                                    .foregroundColor(.black)
                                    .frame(height: 45)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct PreviousStepsView_Previews: PreviewProvider {
    static var previews: some View {
        PreviousStepsView()
    }
}
