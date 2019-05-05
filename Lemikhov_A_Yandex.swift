import Foundation



func result(precios: String, stones: String) -> Int
{
    var  pr_arr = Array(precios)
    var  st_arr = Array(stones)
    var s = 0
    for i in 0...pr_arr.count-1
    {
        for j in 0...st_arr.count-1
        {
            if(pr_arr[i] == st_arr[j])
            {
                s += 1
            }
            
        }
    }
   return s
}


print( result(precios: "ab", stones: "aabbccd") )