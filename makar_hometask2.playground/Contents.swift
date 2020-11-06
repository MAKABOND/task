    import UIKit

// MARK: - Базовые задачи

// MARK: - Task 1
// В массиве переменных n хранятся вещественные числа с ненулевой дробной частью.
// Реализуйте программу, округляющую числа до ближайшего целого и выводящую результат в консоль
    var firstArr: [Double] = [3.245, 2.723, 4.641, 5.591, 5.519]
     
    for elem in firstArr {
        print (round (elem))
    }
// MARK: - Task 2
// В массиве переменных n хранятся трёхзначные числа.
// Реализуйте программу, вычисляющую и выводящую на экран сумму цифр числа n, сумму всех чисел, среднее арифмитическое, наибольшее и наименьшее из массива число.
    var secArr: [Int] = [396, 588, 247, 516, 918, 555]
    var max = 0
    var min = 0
    if secArr.max() != nil && secArr.min() != nil{
        max += secArr.max()!
        min += secArr.min()!
    }
    print ( "maximal element -", max)
    print ( "minimal element -", min)
    var sum: Int = 0
    for sec1 in secArr {sum = sum + sec1 }
    print ("summ -  ", sum)
    var sred: Double = Double(sum) / Double(secArr.count)
    print ("srednee -  ", sred, "\n")
// MARK: - Task 3
// Cоздайте массив чисел, заполните их значениями от 1 до 100, перемешайте в случайном порядке.
// С помощью итерации проверьте входит ли каждое число в интервалы (15;25), (33;42) и (85;99).
// Выведите результат и числа в консоль
    var thirtArr: [Int] = Array(1..<100)
    thirtArr.shuffle()
    thirtArr.forEach(){
        switch $0{
        case 16...24:
            print ($0, "входит в интервал от 16 до 24")
        case 34...41:
            print ($0, "входит в интервал от 34 до 41")
        case 86...98:
            print ($0, "входит в интервал от 86 до 98")
        default:
            print ($0, "не входит ни в один отрезок")
        }
    }
// MARK: - Task 4
// Выведите на экран все члены последовательности 2an-1–1, где a1=2, которые меньше 100
    var an = 2
    var i = 0
    var ann = 0
    while ann<100 {
        ann = 2 * an - 1
            if ann > 100{
            break
            }
        print (ann)
        i += 1
        an += 1
    }
// MARK: - Task 5
// Создайте массив из 20 случайных целых чисел из отрезка [1;10].
// Выведите массив в консоль в формате: «Индекс: [n]. Значение - x».
// Затем замените каждый элемент с четным индексом на ноль, а с нечётным на 1.
// И снова выведите массив в консоль
    func makeList(_ n: Int) -> [Int] {
        return (0..<n).map{ _ in Int.random(in: 1 ... 10) }
    }
    var list = makeList(20)
    var i1=0
    while i1 < list.count {
        print ( " Индекс: [",(i1+1),"]. Значение - ", (list[i1]))
        i1 += 1
    }
    var i2 = 0
    while i2 < list.count{
        if i2%2==0{
            list[i2] = (0)
            print ( " Индекс: [",(i2+1),"]. Значение - ", (list[i2]))
        }else {
            list[i2] = (1)
            print ( " Индекс: [",(i2+1),"]. Значение - ", (list[i2]))
        }
        i2+=1
    }
    // MARK: - Task 6
// Создайте два массива из 10 целых случайных чисел из отрезка [1;9] и третий массив из 10 действительных чисел.
// Каждый элемент с i-ым индексом третьего массива должен равняться отношению элемента из первого массива с i-ым индексом к элементу из второго массива с i-ым индексом.
// Вывести все три массива на экран (каждый на отдельной строке), затем вывести количество целых элементов в третьем массиве.
    func makeList2(_ n: Int) -> [Int] {
        return (0..<n).map{ _ in Int.random(in: 1 ... 9) }
    }
    var tirtArr : [Double] = [0,0,0,0,0,0,0,0,0,0]
    var sixArr1 = makeList2(10)
    var sixArr2 = makeList2(10)
    var i3 = 0
    var chelie = 0
    print (sixArr1)
    print (sixArr2)
    while i3 < 10 {
        tirtArr [i3] = Double(sixArr1[i3]) / Double(sixArr2[i3])
        if tirtArr[i3] - Double(Int(tirtArr[i3])) == 0  {
            chelie += 1
        }
        i3 += 1
    }
    print (tirtArr)
    print ("Колличество целых в массиве: ", chelie)
// MARK: - Task 7
// Реализуйте программу, в которой создайте словарь и заполните его различными значениями
// А затем выведите в консоль новый словарь, где все ключи и значения поменялись местами.
    var unoSlov = ["uno": "1", "duo": "2", "tre" : "3", "quattro" : "4", "sinco" : "5"]
    var duoSlov: [String: String] = [:]
    for (item, key) in unoSlov{
        duoSlov[key] = item
    }
    print (unoSlov)
    print (duoSlov)
    // MARK: - Task 8
// Создадим коллекцию Set из продуктов на кухне с типом элементов String размеров в 10 элементов.
// Удалите из множества все элементы, в названиях которых будет больше 6ти букв.
    var kyhnia: [Int: String] = [1 :"limon", 2 : "pineapple", 3: "apple" , 4: "knife", 5 : "fridge", 6 : "table", 7 : "chair", 8: "window", 9 : "spoon", 10 : "garbage" ]
    var i4 = 1
    var str: String
    print (kyhnia)
    while i4<11 {
        if kyhnia[i4]!.count > 6 {
            kyhnia.removeValue(forKey: i4)
                }
        i4 += 1
    }
    print (kyhnia)
// MARK: - Простые задачи

// MARK: - Task 1
// Cоздайте массив из 12 элементов, где в каждой ячейке будет храниться количество дней в соответствующем месяце
// Выведите количество дней в каждом месяце (без имен месяцев)
// Используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
// Сделайте тоже самое, но используя массив кортежей (tupples) с параметрами (имя месяца, кол-во дней)
// Для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
var hardArr = [ "Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь" ]
var hardArr1 = [ "31", "29", "31", "30", "31", "30", "31", "31", "30", "31", "30", "31"]
 print (hardArr1)
    var ii=0
    while ii < 11{
        if hardArr1[ii] == "31"{
            print (hardArr[ii], hardArr1[ii], "день" )
        }else{
        print (hardArr[ii], hardArr1[ii], "дней" )
        }
        ii += 1
    }
    var hardArr11 = [ "Январь":"31", "Февраль":"29", "Март":"31", "Апрель":"30", "Май":"31", "Июнь":"30", "Июль":"31", "Август":"31", "Сентябрь":"30", "Октябрь":"31", "Ноябрь":"30", "Декабрь":"31"]
    for (month, days) in hardArr11 {
        print("\(month): \(days)")
    }
    let data = ["сЕнтябрь", "4"]
    var ii1 = 0
    var dni = 0
    while data[0].lowercased() != hardArr[ii1].lowercased(){
        dni += Int(hardArr1[ii1]) ?? 0
        ii1 += 1
    }
    dni += Int(data[1]) ?? 0
    print ("Колличество дней до заданной даты: ", dni)
// MARK: - Task 2
// Создайте словарь из массива, где название месяца - это ключ, а количество дней - значение.
// В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы,
// а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
// Выведите в консоль только те месяцы, в которых 30 дней
// Выведите в консоль только те месяцы в названии которых меньше 7 букв.
    hardArr11
    var k = 0
    print ("Месяцы в которых 30 дней: ")
    while k<11{
        if hardArr1[k] == "30"{
            print (hardArr[k])
        }
        k += 1
    }
    var k1 = 0
    print ("Названия месяцев в которых меньше 7-ми букв:")
    while k1 < 11{
        if hardArr[k1].count < 7{
            print (hardArr[k1])
        }
        k1 += 1
    }
// MARK: - Task 3

// Создайте словарь как журнал студентов, где имя и фамилия студента - это ключ, а оценка - это значение.
// Некоторым студентам измените текущие оценки.
// Затем добавьте 3х новых студентов в группу и оцените их.
// А потом удалите 5х ребят, потому что они отчислились.
// В конце посчитайте общий бал и средний бал ребят, которые остались в группе.
    var classBook = ["alexey" : 2, "makar": 3, "kseniya": 4, "don": 5, "artur": 3, "olga": 5]
    classBook["ron"] = 3
    classBook["gosha"] = 4
    classBook["petya"] = 5
    classBook.updateValue(5, forKey: "alexey")
    classBook.updateValue(5, forKey: "makar")
    classBook.removeValue(forKey: "alexey")
    classBook.removeValue(forKey: "makar")
    classBook.removeValue(forKey: "ksenia")
    classBook.removeValue(forKey: "don")
    classBook.removeValue(forKey: "artur")
    var valueSum = 0
    for value in classBook.values{
        valueSum += value
    }
    print ("сумма баллов: \(valueSum) \nсреднее арифметическое: \(Double(valueSum)/(Double(classBook.count)))")
// MARK: - Task 4

// Создайте словарь типа [String: (Int, Int)?],
// Где ключ - это String и хранит в себе название шахмотной фигуры
// А значение - это tuple и хранит в себе координаты фигуры X и Y на шахматной доске.
// Обратите внимание, что значение tuple - опционал и говорит о том, что фигуру "убили".
// Добавьте 5 разных фигур на шахматную доску и выведите в консоль информацию о положении каждой фигуры или ее отсутствии на поле.
    var shaxmati = ["король": (3,1)]
    shaxmati.updateValue ( (4,2), forKey: "конь")
    shaxmati.updateValue ( (5,7), forKey: "пешка")
    shaxmati.updateValue ( (2,2), forKey: "ферзь")
    shaxmati.updateValue ( (5,3), forKey: "ладья" )
    shaxmati.updateValue ( (4,7), forKey: "слон" )
    print (shaxmati)
// MARK: - Task 5.
// Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо.
//  Все элементы кортежа должны быть именованы.
// Одним выражением запишите каждый элемент кортежа в три константы.
// Теперь создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека.
// Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
// Решение оформите ниже
var kortezh = ("mr.neo", 12, "pizza")
let uno=kortezh.0, duo=kortezh.1, tre=kortezh.2
var kortezh2 = ("stuk", 333, "midii")
var kortezh3 = (duo, kortezh2.1, duo-kortezh2.1)
// MARK: - Сложные задачи
// MARK: - Task 1

// Набирается группа студентов на курс по iOS разработке.
// Стоимость обучения для каждого студента зависит от общего количества слушателей.
// Если в группе менее 5 человек - стоимость обучения равна 1000 $ для каждого студента.
// Если количество слушателей от 5 до 8 человек - стоимость обучения равна 800 $ для каждого студента.
// Если количество слушателей от 9 до 12 человек - стоимость обучения равна 650 $ для каждого студента.
// Если количество слушателей более 12ти человек - стоимость обучения равна 500 $ для каждого студента.
// Реализуйте программу, которая подсчитает полную стоимость обучения всей группы с помощью конструкции if-else.
// Программа должна получать на вход количество студентов, которые собираются обучаться.

let students = 15
    func priceKurs(){
        if students < 5 {
        print ("Колличество студентов: \(students)\nСтоимость обучения за человека: 1000$\nОбщая стоимость группы: \(students*1000)$")
    } else {
        if students > 4 && students < 8{
            print ("Колличество студентов: \(students)\nСтоимость обучения за человека: 800$\nОбщая стоимость группы: \(students*800)$")
        } else {
            if students > 8 && students < 13{
                print ("Колличество студентов: \(students)\nСтоимость обучения за человека: 650$\nОбщая стоимость группы: \(students*650)$")
            } else{
                if students > 12 {
                    print ("Колличество студентов: \(students)\nСтоимость обучения за человека: 500$\nОбщая стоимость группы: \(students*500)$")
                }}}}}
    priceKurs()
// MARK: - Task 2

// Используя массивы, сформируйте группу студентов, готовую посещать курсы.
// Для каждого студента добавьте Фамилию, возраст и флаг, который будет хранить информацию, есть ли у него/нее в наличии техника Apple.
// Отсортируйте группу: а) по возрасту, б) по Фамилиям
    var listOfStudents: [(name: String, apple: Bool, age: Int)]
    let firstStudent = (name:"oleg", apple: true, age: 22)
    let secondStudent = (name:"misha", apple: true, age: 31)
    let thirtStudenr = (name:"angelina", apple: false, age: 19)
    let fourthStudent = (name:"oleg", apple: true, age: 44)
    let fifsStudent = (name:"inga", apple:false, age: 26)
    let sixStudent = (name:"oleg", apple:true, age: 33)
    
    listOfStudents = [firstStudent]
    listOfStudents += [secondStudent]
    listOfStudents += [thirtStudenr]
    listOfStudents += [fourthStudent]
    listOfStudents += [fifsStudent]
    listOfStudents += [sixStudent]
    listOfStudents.sort { $0.2 < $1.2 }
    print ("sort by age:\n\(listOfStudents)")
    listOfStudents.sort { $0.0 < $1.0 }
    print ("sort by name:\n\(listOfStudents)")
// MARK: - Task 3
// Добавьте возможность случайным образом решить, какой студент пойдет у доске отвечать на вопросы преподавателя
    var spisok = ["roman", "igor", "olgA", "inga", "petya", "masha", "oleg"]
    var  nomer = Int.random(in: 0...spisok.count)
    print ("Answer will: \(spisok[nomer])")
// MARK: - Task 4
// Реализуйте программу, которая подсчитает полную стоимость обучения всей группы,
// с учетом того, что обучаться могут только те студенты, у которых есть в наличии техника Apple.
// Используете решения из предыдущих задаx
    var readyStudy: [(name: String, apple: Bool, age: Int)] = []
    var h = 0
    while h < listOfStudents.count{
        if listOfStudents[h].apple == true {
            readyStudy += [listOfStudents[h]]
        }
        h += 1
    }
    var   priceForStuding = 0
    switch readyStudy.count {
    case 0...5:
        priceForStuding = 1000
    case 5...8:
        priceForStuding = 800
    case 8...12:
        priceForStuding = 600
    default:
        priceForStuding = 500
    }
    print ("Общая сумма за обучение группы равна - ",   priceForStuding*readyStudy.count)
// MARK: - Task 5с
// Используя словари, оставьте журнал студентов, которые будут обучаться на курсах.
// Все студенты в журнале должны храниться под своим уникальным номером (id)
// В журнал можно добавить только тех студентов, которые удовлетворяют условиям предыдущих задач.
    var journalOfStudents: [String:String] = [:]
    readyStudy
    for stud in listOfStudents.enumerated() {
        journalOfStudents.updateValue (stud.element.name, forKey: "id \(stud.offset+1)")
    }
    print (journalOfStudents)
// MARK: - Task 6
// Распределите студентов по группам так, чтобы в каждой группе были студенты с УНИКАЛЬНЫМИ фамилиями
// Каждый студент с повторяющейся фамилией попадает в новую группу.
// Выведите списки групп в консоль
// (Обратите внимание, какую коллекцию нужно использовать в решении)
   
    var group1: Set<String> = []
    var group2: Set<String> = []
    var group3: Set<String> = []
    
    for(_,value) in journalOfStudents{
        if group1.insert(value).inserted == false{
            group2.insert(value)
            if group2.insert(value).inserted == false{
                group3.insert(value)
            }
        }
    }
    print ("первая группа  - \(group1)")
    print ("вторая группа  - \(group2)")
    print ("вторая группа  - \(group3)")
