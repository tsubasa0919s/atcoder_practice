fun main() {
    var s = readLine()!!
    if(s.matches(Regex("^[A-Z]{1}$"))) println('A')
    else println('a')
}