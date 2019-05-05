func result(inp: [Int]) -> [Int]
{
    var out: [Int] = []
    var current = inp[0];
    for i in 0...inp.count-1
    {
        if (inp[i] != current)
        {
            out.append(current)
            current = inp[i]
        }
    }
    out.append(current)
    return out
}

var arr: [Int] = [1, 1, 2, 3, 3, 3, 4, 6]
print( result(inp: arr) )