func is_anagram(inp1: String, inp2: String) -> Int
{
    var  input1 = Array(inp1)
    var  input2 = Array(inp2)
    if(input1.count != input2.count)
    {
        return 0
    }
    input1.sort()
    input2.sort()
    for i in 0...input2.count-1
    {
        if(input1[i] != input2[i])
        {
            return 0
        }
    }
    return 1
}

print(is_anagram(inp1: "lok", inp2: "kol"))