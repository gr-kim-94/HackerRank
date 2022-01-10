import Cocoa

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    let catA = abs(z-x)
    let catB = abs(z-y)
    if catA < catB {
        return "Cat A"
    } else if catA > catB {
        return "Cat B"
    } else {
        return "Mouse C"
    }
}

catAndMouse(x: 1, y: 2, z: 3)
catAndMouse(x: 1, y: 3, z: 2)
