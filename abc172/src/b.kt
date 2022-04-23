fun main(args: Array<String>) {
    var s = readLine()!!
    var t = readLine()!!

    var c = 0
    for(i in s.indices) {
        if(s.get(i) != t.get(i)) c++
    }

    println(c)
}