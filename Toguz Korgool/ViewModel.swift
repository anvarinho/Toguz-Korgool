//
//  ViewModel.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 17.05.21.
//

import Foundation

//MARK: THE LOGIC OF GAME

class ViewModel: ObservableObject {
    
    @Published var position = [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]
    
    @Published var saveGame = UserDefaults.standard.array(forKey: "nestedList") as? [[Int]] ?? [[9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]]
    @Published var gates = [0,0]
    var steps: Int = 0
    var acePosition = 0
    var saveGates: [[Int]] = [[0,0]]
    var saveSteps: [Int] = []
    @Published var isFirstTurn = true
    @Published var isAceExist = [false, false]
    @Published var winning = [false, false]
    @Published var isGame = false
    @Published var showList = false
    
    func stepBack(){
        guard saveGame.count > 1 else { return }
        saveGame.removeLast()
        guard !saveGame.isEmpty else { return }
        position = saveGame.last ?? [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]
        guard saveGates.count > 1 else { return }
        saveGates.removeLast()
        guard !saveGates.isEmpty else { return }
        gates = saveGates.last ?? [0,0]
        guard saveSteps.count >= 1 else { return }
        saveSteps.removeLast()
        isFirstTurn.toggle()
    }
    
    func changeTurn() {
        guard saveGame.count <= 1 else { return }
        isFirstTurn.toggle()
    }
    
    
/*   func jumpToStep(int: Int){
        position = saveGame[int]
        saveGame.removeSubrange(int+1...saveGame.count-1)
        gates = saveGates[int]
        saveGates.removeSubrange(int+1...saveGates.count-1)
        saveSteps.removeSubrange(int+1..<saveSteps.count)
        isFirstTurn = int % 2 == 0 ? true : false
    }
 */
    
    func victory(){
        if gates[0] > 81 || gates[1] > 81{
            if gates[1] < 81{
                winning[0] = true
                isFirstTurn = false
            }else{
                winning[1] = true
                isFirstTurn = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
                self?.position = [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]
                self?.gates = [0,0]
                self?.isAceExist = [false, false]
                self?.winning = [false, false]
                
            }
        }
    }
    
    func resetGame(){
        position = [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]
        winning = [false, false]
        gates = [0,0]
        isAceExist = [false, false]
        saveGates = [[0,0]]
        saveGame = [[9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]]
        isFirstTurn = true
        saveSteps = []
    }
    
    func savingGame(){
        let array = position
        saveGame.append(array)
    }
    
    func writeGame(index: Int){
        var last = position[index]
        var start = index
        if last == 1{
            last += 1
        }
        last += start
        while last > 9 {
            last -= 9
        }
        
        if start >= 9{
            start -= 8
        }else{
            start += 1
        }
        let result = start * 10 + last
        steps = result
        saveSteps.append(steps)
    }
    
    func game(index: Int){
        writeGame(index: index)
        var count = position[index]
        var next = index
        
        //OLD VERSION:
     /*   if position[next] == 1{

            if next == 17{
                position[17] = 0
                if position[0] > 100{
                    gates[0] += 1
                }else{
                    if position[0] == 3 && !isAceExist[1]{
                        position[0] = 160
                        isAceExist[1] = true
                    }
                    if position[0] % 2 == 0 && position[0] < 100{
                        gates[0] += position[0]
                        position[0] = 0
                    }
                }
            }
            if next == 8{
                position[8] = 0
                if position[9] > 100{
                    gates[1] += 1
                }else{
                    position[9] += 1
                    if position[9] == 3 && !isAceExist[0]{
                        position[9] = 160
                        isAceExist[0] = true
                    }
                    if position[9] % 2 == 0 && position[9] < 100{
                        gates[1] += position[9]
                        position[9] = 0
                    }
                }
           
            }else{
                if next == 17{
                    position[0] += 1
                    position[17] = 0
                    if position[0] % 2 == 0{
                        gates[0] += position[0]
                        position[0] = 0
                    }
                }else{
                    if position[next + 1] > 100{
                        if next >= 7{
                            gates[1] += 1
                            position[next] = 0
                        }
                        if next <= 8{
                            gates[0] += 1
                            position[next] = 0
                        }
                    }else{
                        position[next + 1] += 1
                        position[next] = 0
                    }
                    
                }
                
            }
        }else{
            if position[next] != 0{
                position[next] = 1
            }
            
        }
 */
 
        if position[index] == 1{
            if next == 17{
                
                if position[0] == 2 && !isAceExist[1] && acePosition != 1{
                    position[0] = 160
                    isAceExist[1] = true
                    acePosition = 1
                }else if position[0] > 100{
                    gates[0] += 1
                }else{
                    position[0] += 1
                    if position[0] % 2 == 0{
                        gates[0] += position[0]
                        position[0] = 0
                        
                    }
                }
                
                if position[0] % 2 == 0 && position[0] < 100{
                    gates[0] += position[0]
                }
            }else if next == 8 {
                
                if position[9] == 2 && !isAceExist[0] && acePosition != 1{
                    position[9] = 160
                    isAceExist[0] = true
                    acePosition = 1
  
                }else if position[9] > 100{
                    gates[1] += 1

                }else{
                    position[9] += 1
                    if position[9] % 2 == 0{
                        gates[1] += position[9]
                        position[9] = 0
                    }
                }
                if position[9] % 2 == 0 && position[9] < 100 {
                    gates[1] += position[9]
                }
            }else{
                if position[index + 1] > 100{
                    if next >= 7{
                        gates[1] += 1
                        position[next] = 0
                    }
                    if next <= 8{
                        gates[0] += 1
                        position[next] = 0
                    }
                }else{
                    position[index + 1] += 1
                }
            }
            position[index] = 0
       }
        
        
        while count > 1 {
            
            next += 1
            if next == 18{
                next = 0
            }
            position[next] += 1
            
            if position[next] > 100{
                
                if isFirstTurn && next >= 0 && next <= 8{
                    gates[0] += 1
                }else if !isFirstTurn && next >= 9 && next <= 17{
                    gates[1] += 1
                }else if isFirstTurn && next >= 9 && next <= 17{
                    gates[1] += 1
                }else if !isFirstTurn && next >= 0 && next <= 8{
                    gates[0] += 1
                }
            }
        
            if count == 2 && position[next] < 100{
                if position[next] % 2 == 0{
                    if isFirstTurn && next > 8{
                        gates[1] += position[next]
                        position[next] = 0
                    }else if !isFirstTurn && next < 9{
                        gates[0] += position[next]
                        position[next] = 0
                    }
                }
                if position[next] == 3{
                    if isFirstTurn && (next >= 9 && next < 17) && !isAceExist[0] && acePosition != next - 8{
                        gates[1] += position[next]
                        position[next] = 160
                        isAceExist[0] = true
                        acePosition = next - 8
                    }
                    else if !isFirstTurn && next < 8 && !isAceExist[1] && acePosition != next + 1{
                        gates[0] += position[next]
                        position[next] = 160
                        isAceExist[1] = true
                        acePosition = next + 1
                    }
                }
            }
            
            position[index] = 1
            count -= 1
        }
        
        saveGame.append(position)
        saveGates.append(gates)
        victory()
    }
}
