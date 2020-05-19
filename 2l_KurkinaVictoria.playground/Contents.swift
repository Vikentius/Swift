//1. Написать функцию, которая определяет, четное число или нет.
func num (_ num1: Int) {
    if (num1 % 2 == 0) {
        print("Число чётное")
    } else {
        print("Число нечётное")
    }
}

num(3)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func number (_ number1: Int) {
    if (number1 % 3 == 0) {
        print("Число делится без остатка на 3")
    } else {
        print("Число не делится без остатка на 3")
    }
}

number(3)

//3. Создать возрастающий массив из 100 чисел.
var numArray: [Int] = []

for i in 1...100 {
    numArray.append(i)
}

numArray

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for (_, value) in numArray.enumerated() {
    if (value % 2) == 0 && (value % 3) > 0{
        numArray.remove(at: numArray.firstIndex(of: value)!)
    }
}
numArray
