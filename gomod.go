package main

import "C"

//export go_main
func go_main(i int) string {
    return "abc" + string(i);
}

func main() {}
