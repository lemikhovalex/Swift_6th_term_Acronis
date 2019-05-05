func result(arr: [Int]){
    var n = arr.count
    var max = 0
    var current = 0
    for i in 0...n-1 
    {
        if arr[i] == 1
        {
            current += 1
        }
        else
        {
            if current > max
            {
                max = current
                current = 0
            }
            else
            {
                current = 0
            }
            
        }
    }
    
    if current > max
    {
        max = current
        current = 0
    }
    print(max)
    
}
let sequense: [Int] = [1, 0, 1, 1, 1, 0, 0]
result(arr: sequense)