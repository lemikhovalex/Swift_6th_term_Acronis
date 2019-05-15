var N_s = readLine()
var N_wr = Int(String(N_s ?? ""))
var N = N_wr!
var array_sub: [String.SubSequence] = []
var array: [Int] = []
var Global_array: [Int] = []
for i in 0...N-1
{
	array_sub = readLine()!.split(separator: " ")
	for j in 0...array_sub.count-1
	{
		array.append( Int(String (array_sub[j]) )! )
	}
	
	for j in 0...array.count-1
	{
		Global_array.append(array[j])
	}
	array.removeAll()
}
Global_array.sort()
var Final_string: String
Final_string = ""

for i in 0...Global_array.count-1
{
	Final_string += String( Global_array[i] )
	Final_string += " "
}
print(Final_string)

