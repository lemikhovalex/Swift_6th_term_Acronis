func recursive(can_open: Int, can_close: Int, done: String)
{
	if (can_open > 0)
	{
		recursive(can_open: can_open-1, can_close: can_close, done: done+"(")
	}
	if (can_close > 0 && can_open < can_close)
	{
		recursive(can_open: can_open, can_close: can_close-1, done: done+")")
	}
	
	if (can_open == 0 && can_close == 0)
	{
		print(done)
	}
}

var N_s = readLine()
var N = Int(String(N_s ?? ""))
recursive(can_open: N!, can_close: N!, done: "")
