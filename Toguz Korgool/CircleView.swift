//
//  CircleView.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 12.05.21.
//

import SwiftUI

struct CircleView: View {
    var side = UIScreen.main.bounds.width/20
    var body: some View {
        ZStack{
            Color.gray
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
                        .foregroundColor(.green)
                    balls11
                }
            }
        }
    }
    
    var ballView: some View{
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
            .frame(width: side, height: side)
            .cornerRadius(side/2)
            .rotationEffect(Angle(degrees: 25))
            .shadow(color: Color.black.opacity(0.7), radius: 5, x: 2, y: 3)
        
    }
    
    var ball1: some View{
        LazyHStack{
            ballView
        }
    }
    
    var balls2: some View{
        LazyHStack{
            ballView
            ballView
        }
    }
    
    var balls3: some View{
        LazyHStack{
            ball1
            ball1
            ball1
        }
    }
    var balls4: some View{
        LazyHStack{
            ball1
            ball1
            ball1
            ball1
        }
    }
    var balls5: some View{
        LazyHStack{
            ball1
            ball1
            ball1
            ball1
            ball1
        }
    }
    var balls6: some View{
        LazyHStack{
            ball1
            ball1
            ball1
            ball1
            ball1
            ball1
        }
    }
    var balls7: some View{
        LazyVStack{
            balls6
            ball1
        }
    }
    var balls8: some View{
        LazyVStack{
            balls6
            balls2
        }
    }
    var balls9: some View{
        LazyVStack{
            balls6
            balls3
        }
    }
    var balls10: some View{
        LazyVStack{
            balls6
            balls4
        }
    }
    var balls11: some View{
        LazyVStack{
            balls6
            balls5
        }
    }
    var balls12: some View{
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                }
            }
        }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
    }
    
    var balls13: some View{
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                }
            }
        }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
    }
    
    var balls14: some View{
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }
        }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
    }
    
    var balls15: some View{
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }
        }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
    }
    
    var balls16: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls17: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls18: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls19: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls20: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls21: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls22: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls23: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls24: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls25: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls26: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls27: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls28: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls29: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    Spacer()
                    ballView
                    ballView
                    ballView
                    ballView
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width/2.5, height: UIScreen.main.bounds.width/5)
            .offset(x: -15, y: -4)
        }
    }
    
    var balls30: some View{
        ZStack {
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                    
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: 6, y: 4)
            VStack {
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
                HStack{
                    ballView
                    ballView
                    ballView
                    ballView
                    ballView
                }
            }.offset(x: -6, y: -4)
        }
    }
    
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
