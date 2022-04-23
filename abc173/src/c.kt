fun main() {
    val (h, w, k) = readLine()!!.split(" ").map { it.toInt() }
    val c = Array(h){""}
    for (i in 0 until h) {
        c[i]= readLine()!!
    }

    var count = 0
    for(a in 0 until 1.shl(h)) {
        for(b in 0 until 1.shl(w)) {
            var black = 0
            for(i in 0 until h) {
                for(j in 0 until w) {
                    if(a.and(1.shl(i)) != 0 && b.and(1.shl(j)) != 0 && c[i][j] == '#') {
                        black++
                    }
                }
            }
            if(black == k) count++
        }
    }

    println(count)

//    var n = 5
//    for(bit in 0 until 1.shl(n)) {
//        print("$bit: ")
//        for(i in 0 until n) {
//            if(bit.and(1.shl(i)) != 0) {
//                print("$i ")
//            }
//        }
//        println()
//    }
}