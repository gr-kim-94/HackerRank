import Cocoa

var greeting = "Hello, playground"

func helloWorld(inputString: String) -> String {
    let hello = "Hello, World."
    return hello + "\n" + inputString
}

helloWorld(inputString: greeting)
