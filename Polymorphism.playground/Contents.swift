struct GuitarString {}

class Guitar {
    func pluckString(string: GuitarString) {
        // Pluck the note (typically the right hand).
        print("twang 🎶")
    }
}

class ElectricGuitar:Guitar {
    // The electric guitar has adjustable knobs.
    var volumeLevel:Float = 1.0
    
    // Notice the override keyword.
    override func pluckString(string: GuitarString) {
        if volumeLevel > 0.7 {
            print("🎸🎸🎸 DRAOWWW")
        } else if volumeLevel > 0 {
            print("🎸 twang")
        } else { // volumeLevel is 0
            super.pluckString(string)
        }
    }
}

class FlyingV:ElectricGuitar {
    func shred() {
        let string = GuitarString()
        pluckString(string)
        pluckString(string)
        pluckString(string)
        pluckString(string)
    }
}

var guitar:Guitar = Guitar()
guitar.pluckString(GuitarString())

// Time to shred!!
guitar = FlyingV()
guitar.pluckString(GuitarString())


class Foo1 {
    func someMethod() {
        otherMethod()
    }
    
    func otherMethod() {
        print("foo hello")
    }
}

class Bar1:Foo1 {
    override func otherMethod() {
        print("bar hello")
    }
}

class Baz1:Bar1 {
    override func otherMethod() {
        print("baz hello")
    }
}

//let foo1 = Foo1()
//let bar1 = Bar1()
//let baz1 = Baz1()
//
//foo1.someMethod()
//bar1.someMethod()
//baz1.someMethod()

//////////

class Foo2 {
    func someMethod() {
        otherMethod()
    }
    
    func otherMethod() {
        print("foo hello")
    }
}

class Bar2:Foo2 {
    override func otherMethod() {
        super.otherMethod()
        print("bar hello")
    }
}

class Baz2:Bar2 {
    override func otherMethod() {
        super.otherMethod()
        print("baz hello")
    }
}

let foo2 = Foo2()
let bar2 = Bar2()
let baz2 = Baz2()

//foo2.someMethod()
//bar2.someMethod()
//baz2.someMethod()

//////////

class Foo3 {
    func someMethod() {
        otherMethod()
    }
    
    func otherMethod() {
        print("foo hello")
    }
}

class Bar3:Foo3 {
    override func someMethod() {
        super.someMethod()
        super.someMethod()
    }
    
    override func otherMethod() {
        print("bar hello")
    }
}

class Baz3:Bar3 {
    override func someMethod() {
        print("baz other method")
        otherMethod()
    }
    
    override func otherMethod() {
        super.otherMethod()
        print("baz hello")
    }
}

let foo3 = Foo3()
let bar3 = Bar3()
let baz3 = Baz3()

//foo3.someMethod()
//bar3.someMethod()
//baz3.someMethod()
