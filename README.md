# iOS 커리어 스타터 캠프
## 목차
1. [제목](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#1-%EC%A0%9C%EB%AA%A9)
2. [소개](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#2-%EC%86%8C%EA%B0%9C)
3. [팀원](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#3-%ED%8C%80%EC%9B%90)
4. [타임라인](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#4-%ED%83%80%EC%9E%84%EB%9D%BC%EC%9D%B8)
5. [프로젝트 구조](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#5-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EA%B5%AC%EC%A1%B0)
6. [실행 화면(기능 설명)](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#6-%EC%8B%A4%ED%96%89-%ED%99%94%EB%A9%B4%EA%B8%B0%EB%8A%A5-%EC%84%A4%EB%AA%85)
    - 6-1. [올바르지 않은 메뉴 입력 상황](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#1-%EC%98%AC%EB%B0%94%EB%A5%B4%EC%A7%80-%EC%95%8A%EC%9D%80-%EB%A9%94%EB%89%B4-%EC%9E%85%EB%A0%A5-%EC%83%81%ED%99%A9)
    - 6-2. [올바른 메뉴 입력](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#2-%EC%98%AC%EB%B0%94%EB%A5%B8-%EB%A9%94%EB%89%B4-%EC%9E%85%EB%A0%A5)
    - 6-3. [올바르지 않은 유저 입력](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#3-올바르지-않은-유저-입력)
    - 6-4. [올바른 유저 입력 및 사용자 승리](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#4-올바른-유저-입력-및-사용자-승리)
    - 6-5. [올바른 유저 입력 및 컴퓨터 승리](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#5-올바른-유저-입력-및-컴퓨터-승리)
7. [트러블 슈팅](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#7-트러블-슈팅)
   - 7-1. [잘못된 입력의 오류처리](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#1-잘못된-입력의-오류처리)
   - 7-2. [잘못된 입력을 받았을 때, loop하여 다시 입력 받기](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#2-잘못된-입력을-받았을-때-loop하여-다시-입력-받기)
   - 7-3. [winner 결정](ttps://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#3-winner-결정)
8. [참고 링크](https://github.com/Kyeongjun2/ios-number-baseball/blob/STEP2/README.md#8-참고-링크)
9. [아쉬운 점](https://github.com/Kyeongjun2/ios-number-baseball/tree/STEP2#9-아쉬운-점)

## 1. 제목
**숫자 야구 게임**

## 2. 소개
컴퓨터가 중복되지 않은 임의의 정수(0~9) 3개를 생성하고 사용자는 주어진 9번의 기회동안 동일한 조건의 정수를 입력하여 정수의 종류, 위치를 맞춰야 합니다.

입력한 각 자리 숫자의 종류만 맞을 경우 ball, 숫자의 종류와 위치가 모두 맞을 경우 strike로 판별하여 3strike를 얻어내면 사용자의 승리입니다.

9번의 기회 동안 3strike를 얻지 못하고 기회를 모두 소진하면 컴퓨터의 승리입니다.
<br/>

## 3. 팀원


| ⭐️ 레옹아범(fatherLeon) | ⭐️ Rowan |
| :--------: | :--------: |
| <img height="140px" src="https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/leonFather.jpeg">    |<img width="160px" src="https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/Rowan.png">    |

◾️역할 - 짝프로그래밍을 통해 드라이버, 네비게이터를 교대로 수행하였습니다.

## 4. 타임라인
- 22.12.19 (월): 순서도 + STEP1 <야구게임 기본기능 구현>
- 22.12.20 (화): STEP1 PR feedback 적용, STEP2 <야구게임 주요 기능 구현중>
- 22.12.21 (수): STEP2 주요 기능 구현 완료
- 22.12.22 (목): STEP2 PR feedback 적용 <refactoring & convention 정리>

## 5. 프로젝트 구조
![순서도](https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/순서도.png)

## 6. 실행 화면(기능 설명)

### 1. 올바르지 않은 메뉴 입력 상황

![올바르지 않은 메뉴 입력](https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/inCorrectMenuInput.png)  
  1. 게임에 지정되어 있는 `1. 게임시작`, `2.게임종료` 이외의 값이 들어올 경우 입력이 잘못되었습니다라고 알려주고 지정값이 들어오기까지 반복됨.  
  2. `2`를 선택시, 프로그램 종료  

### 2. 올바른 메뉴 입력

![올바른 메뉴 입력](https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/correctMenuInput.png)
  1. `1` 선택할 시 바로 게임이 시작하며, 유저입력을 기다리는 상황이 됨.  

### 3. 올바르지 않은 유저 입력
![올바르지 않은 유저 입력](https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/inCorrectUserInput.png)
  1. 띄어쓰기로 구분되는 1~9까지의 세개의 숫자가 아닌, 다른 문자 입력시 `입력이 잘못되었습니다`를 출력 후 다시 유저 입력을 기다림.
  2. 띄어쓰기로 구분되어 있지 않는 상황도 `입력이 잘못되었습니다`를 출력 후 유저입력을 기다림.  
  
### 4. 올바른 유저 입력 및 사용자 승리 
![올바른 유저 입력 및 사용자 승리](https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/correctUserInput.png)
  1. 올바른 유저 입력일 경우 입력받은 정답의 숫자와 위치가 동일한 개수만큼 스트라이크를 출력
  2. 위치는 동일하지 않지만 숫자가 정답안에 포함되어 있는 개수만큼 볼을 출력
  3. 만약 정답과 일치한다면 3스트라이크를 출력 후 `사용자 승리...!`출력 후 다시 메뉴 출력  
  
### 5. 올바른 유저 입력 및 컴퓨터 승리
![올바른 유저 입력 및 컴퓨터 승리](https://raw.githubusercontent.com/Kyeongjun2/ios-number-baseball/STEP2/image/computerWin.png)
  1. 올바른 유저 입력을 받았으나, 정답과 틀릴 경우 chance를 하나씩 소진하며 `남은 기회 : \(chance)`를 출력
  2. 만약 남은 기회가 0이 된다면 그 즉시 `컴퓨터 승리...!`를 출력하고 게임을 끝냄.
  3. 게임이 끝나면 다시 메뉴 출력


## 7. 트러블 슈팅
### 1. 잘못된 입력의 오류처리
  - 사용자의 입력을 받을 때, ```isSuccessUserInput```함수에서 오류를 던져 잘못된 입력을 받을 경우 오류처리로 재입력받을 수 있도록 하고싶었습니다.
  
  - 잘못된 입력의 종류
    1. 입력값이 없는 경우
    3. 입력된 숫자가 3개 미만인 경우
    4. 중복된 숫자를 입력한 경우
    5. 입력값이 숫자 이외의 String인 경우

  - ```do-catch```문을 이용하여 오류처리를 했을 때, 세 가지 정도의 문제가 있었습니다.
    1. 가독성이 떨어짐
    2. throws 키워드가 여러 함수에 있음
    3. 오류 처리 이후 재입력받는 기능을 구현하는 것에 어려움이 있음 

  - 이를 해결하기 위해 PR feedback을 통해 학습한 ```Result type```을 사용해 보았습니다.
```swift
// before
func readInput() throws -> [Int] {
    guard let input = readLine(), input != "" else {
        throw InputError.wrongUserInput
    }
    
    let inputArray = input.components(separatedBy: " ")
    
    guard inputArray.count == 3 else {
        throw InputError.wrongUserInput
    }
    
    guard let firstBall = Int(inputArray[0]),
          let secondBall = Int(inputArray[1]),
          let thirdBall = Int(inputArray[2]) else {
        throw InputError.wrongUserInput
    }
    
    return [firstBall, secondBall, thirdBall]
}

func loopRound(_ round: Int, _ answerBall: [Int]) throws {
    var chance = round

    while chance > 0 {
        let userBall = try readInput()
        let (ball, strike) = compareBall(userBall: userBall, answerBall: answerBall)
        
        chance -= 1
        print("\(strike) 스트라이크, \(ball) 볼")
        
        if let winner = decideWinner(strike: strike, chance: chance) {
            print("\(winner) 승리...!")
            break
        }
        
        print("남은 기회 : \(chance)")
    }
}

func startGame() throws {
    answerBall = createRandomNumber()

    do {
        print("""
            숫자 세 개를 띄어쓰기로 구분하여 입력해주세요.
            중복 숫자는 허용하지 않습니다.
            입력 :
            """, terminator: "")

        try loopRound(chance, answerBall)
    } catch InputError.wrongUserInput {
        print("입력이 잘못되었습니다")

    }
}
```
```swift
// after
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
```

### 2. 잘못된 입력을 받았을 때, loop하여 다시 입력 받기
 - 사용자의 숫자를 입력받는 부분의 loop는 ```Result type```의 사용을 통해 해결할 수 있었습니다만 ```displayMenu```함수의 loop는 ```do-catch문```을 통한 오류처리 보다 ```while문```을 통해 반복시키는 것이 더 좋을 것 같다는 feedback을 적용해 보았습니다.
 
 - ```while문```을 사용하였을 때 훨씬 가독성이 좋아졌습니다.

 - 가독성을 위한 추가 refactoring으로 ```print```함수를 분리하였습니다.

```swift
//before
func readMenu() throws -> Bool {
    let inputValue = readLine()
    
    guard let menu = inputValue, menu != "" else {
        throw InputError.wrongMenuInput
    }
    
    if menu == "1" {
        return true
    } else if menu == "2" {
        return false
    }
    
    throw InputError.wrongMenuInput
}

func displayMenu() {
    print("""
            1. 게임시작
            2. 게임종료
            원하는 기능을 선택해주세요 :
            """, terminator: "")
    
    do {
        if try readMenu() == true {
            try startGame()
        }
    } catch InputError.wrongMenuInput {
        print(InputError.wrongMenuInput.rawValue)
        displayMenu()
    } catch InputError.wrongUserInput {
        print("입력이 잘못되었습니다")
        //            try self.startGame()
    } catch {
        print(error)
    }
}
```
```swift
//after
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
```

### 3. winner 결정
 - ```decideWinner```함수에서 반환값을 ```String?```으로 설정하여 함수의 반환값에 ```nil```이 포함되어 오류가 발생할 가능성이 있었습니다.

 - PR feedback을 통해 반환값을 삭제하여 오류 가능성을 없애고 함수명에 맞는 기능을 추가하는 refactoring을 진행하였습니다.
```swift
//before
func startGame() {
    answerBall = createRandomNumber()
    var chance = 9
    
    while chance > 0 {
        let userBall = readInput()
        let (ball, strike) = compareBall(userBall: userBall, answerBall: answerBall)
        
        chance -= 1
        print("\(strike) 스트라이크, \(ball) 볼")
        
        if let winner = decideWinner(strike: strike, chance: chance) {
            print("\(winner) 승리...!")
            break
        }
        
        print("남은 기회 : \(chance)")
    }
    displayMenu()
}

func decideWinner(strike: Int, chance: Int) -> String? {
    if strike == 3 {
        return "사용자"
    } else if chance == 0 {
        return "컴퓨터"
    }

    return nil
}
```

```swift
func decideWinner(strike: Int, chance: Int) {
    if strike == 3 {
        print("사용자 승리...!")
    } else if chance == 0 {
        print("컴퓨터 승리...!")
    }
}
```

## 8. 참고 링크
* [Result](https://developer.apple.com/documentation/swift/result)
* [Tuple](https://docs.swift.org/swift-book/ReferenceManual/Types.html)
* [Optional](https://developer.apple.com/documentation/swift/optional)

## 9. 아쉬운 점
 1. isSuccessUserInput()의 반환값이 [Int] 배열 값이지만 함수명은 is~로 시작한 부분 변경 필요
 2. 1~9이외의 정수를 입력받았을 때 잘못된 입력값으로 처리 필요
