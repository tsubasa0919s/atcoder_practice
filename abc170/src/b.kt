fun main() {
    var (x, y) = readLine()!!.split(" ").map{it.toInt()}

    for(i in 0 until x + 1) {
        var j = x - i
        if(i * 2 + 4 * j == y) {
            println("Yes")
            return
        }
    }
    println("No")
}