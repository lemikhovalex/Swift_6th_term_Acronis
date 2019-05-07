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
var an = readLine()
var N = Int(String(an ?? ""))
var arr: [Int] = []
var temp = 0
for i in 0...(N!-1)
{
	an = readLine()
	temp = Int(String(an ?? ""))!
	arr.append(temp)
}
var result_Arr: [Int] = result(inp: arr)
for i in 0...result_Arr.count-1
{
	print(result_Arr[i])
}