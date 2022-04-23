fun main() {
    var n = readLine()!!.toLong()

    var ans = ""
    while(n != 0L) {
        var c: Char = 'a'
        var a = if(n.rem(26L) == 0L) { 25L } else {n.rem(26L) - 1}
        ans = (c.toLong() +  a).toChar() + ans
        n -= a
        n /= 26L
    }
    println(ans)
}