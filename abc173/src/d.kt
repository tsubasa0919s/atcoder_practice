fun main() {
    var n = readLine()!!.toInt()
    var a = readLine()!!.split(" ").map{it.toInt()}

    a = a.sortedDescending()
    var c = a[0].toLong()

    for(i in 2 until n) {
        c += a[i / 2]
    }
    println(c)
}