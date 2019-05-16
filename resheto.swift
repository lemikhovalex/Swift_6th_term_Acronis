import Foundation


func  inv_ln(z: Double) -> Double
{
    return 1/log(z)
}


var N_s = readLine()
var N = Double(String(N_s ?? ""))!// want to find 10th prime number
var delta = pow(Double(10), -4 )
var li=Double(0)
var t=Double(2)
while li<2*N
{
    li +=  delta*( inv_ln(z: t)+inv_ln(z: t+delta) )/2
    t += delta
}	
var primes: [Int] = []

for i in 2...Int(t)+1
{
    primes.append( 1 )
}

for i in 2...( Int( sqrt(t) )+1 )
{
    if(primes[i] == 1) 
    {
        var j=i*i
        while (j < Int( t ) ) 
        {
            primes[j]=0
            j += i
        }
    }
}
var final_count=0
for i in 2...Int(t)-2
{
    if(primes[i]==1)
    {

        final_count += 1
        if(final_count == Int(N) )
        {
            print(i)
        }
        
    }
}
