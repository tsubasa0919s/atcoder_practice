import java.lang.Long.max

fun main(args: Array<String>) {
    var (n, m, k) = readLine()!!.split(" ").map{it.toInt()}
    var a = readLine()!!.split(" ").map{it.toInt()}
    var b = readLine()!!.split(" ").map{it.toInt()}

    var a2 = mutableListOf(0L)
    var b2 = mutableListOf(0L)

    for(i in 0 until n) {
        a2.add(a[i] + a2[i])
    }
    for(i in 0 until m) {
        b2.add(b[i] + b2[i])
    }

    var ans = 0L
    var j = m
    for(i in 0..n) {
        if(a2[i] > k) break
        while(b2[j] > k - a2[i]) {
            j--
        }
        ans = max(ans, (i + j).toLong())
    }
    println(ans)
}