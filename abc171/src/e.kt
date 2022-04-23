fun main() {
    var n = readLine()!!.toInt()
    var a = readLine()!!.split(" ").map { it.toInt() }

    var b = 0
    for(i in 0 until n) {
        b = b.xor(a[i])
    }
    for(i in 0 until n) {
        if(i == n - 1) println(b.xor(a[i]))
        else print("${b.xor(a[i])} ")
    }
}