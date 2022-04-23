fun main() {
    var n = readLine()!!.toInt()
    var a = readLine()!!.split(" ").map{it.toInt()}

    a = a.sorted().distinct()

    var d = Array(1000001){0}

    for(i in a.indices) {
        for(j in 2 * a[i] until 1000001 step a[i]) {
            d[j]++
        }
    }
    println(d.count{it == 1})
}