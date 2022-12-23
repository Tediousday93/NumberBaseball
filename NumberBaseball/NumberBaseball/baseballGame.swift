//
//  baseballGame.swift
//  NumberBaseball
//
//  Created by 레옹아범 and Rowan.
//

import Foundation

enum InputError: Error {
    case incorrectInput
}

func displayMenu() {
    var isFirst = true
    var inputValue: String?
    var inputState = false
    
    while inputState == false {
        if isFirst == false {
            print("입력이 잘못되었습니다")
        }
        isFirst = false
        printMenu()
        inputValue = readLine()
        inputState = isCorrectMenu(inputValue)
    }
    
    if inputValue == "1" {
        startGame()
    }
}

func printMenu() {
    print("""
    1. 게임시작
    2. 게임종료
    원하는 기능을 선택해주세요 :
    """, terminator: "")
}

func isCorrectMenu(_ inputValue: String?) -> Bool {
    guard let value = inputValue else {
        return false
    }
    
    switch value {
    case "1", "2":
        return true
    default:
        return false
    }
}

func startGame() {
    var chance = 9
    let answerBall = createRandomNumber()
    var ball = 0
    var strike = 0
    
    while chance > 0 && strike != 3 {
        let userBall = readInput()
        (ball, strike) = compareBall(userBall: userBall, answerBall: answerBall)
        
        chance -= 1
        print("\(strike) 스트라이크, \(ball) 볼")
        print("남은 기회 : \(chance)")
        
        decideWinner(strike: strike, chance: chance)
    }
    
    displayMenu()
}

func createRandomNumber() -> Array<Int> {
    var numbers: Array<Int> = []
    
    while numbers.count < 3 {
        let number = Int.random(in: 1...9)
        
        if numbers.contains(number) == false {
            numbers.append(number)
        }
    }
    
    return numbers
}

func readInput() -> [Int] {
    var inputState = true
    var numberList: [Int] = []
    
    while inputState {
        printInputCondition()
        let result = Result { try isSuccessUserInput() }
        
        switch result {
        case .success(let resultArray):
            inputState = false
            numberList = resultArray
        case .failure:
            print("입력이 잘못되었습니다")
        }
    }
    
    return numberList
}

func printInputCondition() {
    print("""
    숫자 3개를 띄어쓰기로 구분하여 입력해주세요.
    중복 숫자는 허용하지 않습니다.
    입력 :
    """, terminator: "")
}

func compareBall(userBall: Array<Int>, answerBall: Array<Int>) -> (Int, Int) {
    var ball = 0
    var strike = 0
    
    for index in 0..<userBall.count {
        if userBall[index] == answerBall[index] {
            strike += 1
        } else if userBall[index] != answerBall[index], answerBall.contains(userBall[index]) {
            ball += 1
        }
    }
    
    return (ball, strike)
}

func isSuccessUserInput() throws -> [Int] {
    guard let value = readLine() else {
        throw InputError.incorrectInput
    }
    
    let valueList = value.components(separatedBy: " ").map{ String($0) }
    
    guard Set(valueList).count == 3 else {
        throw InputError.incorrectInput
    }
    
    guard let firstBall = Int(valueList[0]), let secondBall = Int(valueList[1]), let thirdBall = Int(valueList[2]) else {
        throw InputError.incorrectInput
    }
    
    return [firstBall, secondBall, thirdBall]
}

func decideWinner(strike: Int, chance: Int) {
    if strike == 3 {
        print("사용자 승리...!")
    } else if chance == 0 {
        print("컴퓨터 승리...!")
    }
}
