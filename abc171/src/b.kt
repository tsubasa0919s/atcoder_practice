fun main() {
    var (n, k) = readLine()!!.split(" ").map{it.toInt()}
    var a = readLine()!!.split(" ").map{it.toInt()}

    a = a.sorted()
    var c = 0
    for(i in 0 until k) {
        c += a[i]
    }
    println(c)
}