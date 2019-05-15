func result(arr: [Int])
{
    let n = arr.count
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
var an = readLine()
if(an != "0")
{
	var N = Int(String(an ?? ""))
	var sequense: [Int] = []
	var temp = 0
	for i in 0...(N!-1)
	{
		an = readLine()
		temp = Int(String(an ?? ""))!
		sequense.append(temp)
	}
	result(arr: sequense)
}
else
{
	print(0)
}
	
