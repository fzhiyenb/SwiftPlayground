import UIKit

//task1: Решить квадратное уравнение ax^2 + bx + c = 0. Даны переменные a, b,c - нужно получить x1,x2
func findRootsOfQuadraticEquation(a: Double, b: Double, c: Double) {
    let d = pow(b, 2) - (4*a*c)
    
    if d > 0 {
        let x1 = ((-b) + Double(d.squareRoot())) / (2*a)
        let x2 = (b + Double((d.squareRoot()))) / (2*a)
        print("The equation has 2 roots. x1 = \(x1) and x2 = \(x2).")
    }
    else if d == 0
    {
        let x = (-b)/(2*a)
        print("The equation has only 1 root: \(x).")
    }
    else {
        print("The equation has no roots.")
    }
    
}

findRootsOfQuadraticEquation(a: 2, b: 4, c: 2)

//task2: Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
func findHypotenuse (leg1: Double, leg2: Double) -> Double {
    let hypotenuse = (pow((leg1), 2) + pow((leg2), 2)).squareRoot()
    print("The hypotenuse is \(hypotenuse).")
    return hypotenuse.rounded()
}

func findPerimeter (leg1: Double, leg2: Double) {
    let perimeter = leg1 + leg2 + findHypotenuse(leg1: leg1, leg2: leg2)//hypotenuse
    print("The perimeter is equal to \(perimeter)")
}

func findAreaOfTriangle (leg1: Double, leg2: Double) {
    let area = leg1 * leg2 / 2
    print("The area of triangle is equal to \(area)")
}

print(findHypotenuse(leg1: 3,leg2: 4), findPerimeter(leg1: 3,leg2: 4), findAreaOfTriangle(leg1: 3,leg2: 4))

/*task3: Пользователь вводит сумму вклада в банк и годовой процент.
 Найти сумму вклада через 5 лет.
 Написать через функцию, количество лет вклада может меняться.
 Учитывайте сложный процент*/
func countMyMoney(initalSum: Float, percent: Float, years: Float){
    let totalSum = initalSum * pow((1 + 0.01 * percent), years)
    print("If you save your sum of \(initalSum) for the next \(years) years then you'll have \(totalSum)")
}

countMyMoney(initalSum: 50000, percent: 10, years: 5)

//task4: Написать функцию, которая определяет четное число или нет.
func checkIfNumberIsEven(number: Int) {
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
    else {
        print("\(number) is an odd number.")
    }
}

checkIfNumberIsEven(number: 2)

//task5: Написать функцию, которая определяет, делится ли число без остатка на 3.
func checkIfNumberHasReminder(dividend: Int) {
    let divisor = 3
    if dividend % divisor == 0 {
        print("The number \(dividend) has not reminder.")
    }
    else {
        print("Oops. The number \(dividend) has reminder.")
    }
}

checkIfNumberHasReminder(dividend: 10)

//task6: Создать возрастающий массив из 100 чисел.
var numbers = Array<Int> = []

//task7: Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var filteredNumbers = numbers.filter{$0 % 2 != 0 && $0 % 3 != 0}
print(filteredNumbers)

