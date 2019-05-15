import Foundation

func result(precios: String, stones: String) -> Int
{
    var s: Int
    s = 0
    var heap: [String] = []
    
    
    for letter in stones
    {
        heap.append(String(letter))
    }
    
    
    for letter in heap
    {
        if precios.contains(letter){
            s += 1
        }
    }
   return s
}
var jew = readLine()

var heap = readLine()

if jew != nil{
    if heap != nil{
        print( result(precios: jew!, stones: heap! ) )
    }
}
