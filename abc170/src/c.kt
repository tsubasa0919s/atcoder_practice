fun main() {
    var (x, n) = readLine()!!.split(" ").map{it.toInt()}
    var s = readLine()!!
    var p:List<Int>;
    if(s.isNotEmpty()) {
        p = s.split(" ").map { it.toInt() }


        var a = Array(101) { 0 }
        for (i in 0 until 101) {
            if (!p.contains(x - i)) {
                println(x - i)
                return
            }
            if (!p.contains(x + i)) {
                println(x + i)
                return
            }
        }
    } else {
        println(x)
    }
}