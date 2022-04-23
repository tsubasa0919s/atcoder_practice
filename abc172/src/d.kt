fun main(args: Array<String>) {
    var n = readLine()!!.toLong()

    var ans = 0L
    for(i in 1..n) {
        var c = n / i
        ans += i * c * (c + 1) / 2
    }
    println(ans)
}