fun main() {
    var n = readLine()!!.toInt()
    var a = readLine()!!.split(" ").map { it.toInt() }

    var q = readLine()!!.toInt()
    var l = Array(q){0}
    var d = Array(100010){0}

    var s = 0L
    for(i in 0 until n) {
        s += a[i]
        d[a[i]]++
    }

    for(i in 0 until q) {
        var (b, c) = readLine()!!.split(" ").map{it.toInt()}

        l[i] = c - b

        s += l[i] * d[b]
        println(s)

        d[c] += d[b]
        d[b] = 0
    }
}