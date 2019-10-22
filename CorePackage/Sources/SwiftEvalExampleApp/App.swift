import SwiftEval

public final class Cat {
    public init() {}
    
    public var num: Int = 1
    
    public func nya() -> String {
        String(repeating: "🐈", count: num)
    }
    
    public func sayNya() {
        print(nya())
    }
}

public func app() throws {
    try Evals.eval(source: """
    print("hello eval")
    """)
    
    try Evals.eval(imports: ["SwiftEvalExampleApp"],
                   source: """
    Cat().sayNya()
    """)
    
    let fn1 = try Evals.compileFunction1(
        imports: ["SwiftEvalExampleApp"],
        parameter1Type: Int.self,
        returnType: Cat.self,
        source: """
    let cat = Cat()
    cat.num = parameter1
    return cat
    """)
    
    let cat: Cat = fn1(3)
    cat.sayNya()
}
