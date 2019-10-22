import SwiftEval

public final class Cat {
    public init() {}
    
    public func nya() {
        print("🐈")
    }
}

public func app() throws {
    try Evals.eval(source: """
    print("hello eval")
    """)
    
    try Evals.eval(source: """
    Cat().nya()
    """,
                   imports: ["SwiftEvalExampleApp"])
    //
    //let fn1 = try Evals.compileFunction0(returnType: Int.self,
    //                                     source: """
    //return 1 + 2
    //""")
    //
    //print(fn1())
    
}
