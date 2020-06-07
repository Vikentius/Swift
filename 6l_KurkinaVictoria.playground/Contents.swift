/*1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.*/

struct doctorqueue<Element: Comparable> {
    var items = [Element]()
    
    mutating func add (_ item: Element) {
        items.append(item)
    }
    
    mutating func next() ->Element {
        print("Следующий в очереди \(items.first!)")
        return items.removeFirst()
    }
    
    func filter(item:Element){
        print("Найти \(items.filter{$0 == item})")
    }
    
    mutating func propertysort() ->[Element] {
        return items.sorted(by: >)
    }
    
    subscript (Index: Int) -> String? {
        return (Index < items.count ? items[Index] : nil) as? String
    }
    
    func printcount() {
        print(items.count)
    }
    
}

var oculist = doctorqueue<String>(items:["Max"])
oculist.add("Pavel")
oculist.add("Maria")
oculist.add("Vladislav")

print(oculist.items)
print("Очередь по алфавиту \(oculist.propertysort())")

oculist.next()
oculist.add("Daria")
print(oculist.items)
oculist.filter(item: "Maria")
oculist.printcount()

print(oculist.items)
print(oculist.items[1])
oculist[3]
