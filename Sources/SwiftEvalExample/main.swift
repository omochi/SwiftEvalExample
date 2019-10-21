import SwiftEval

try Evals.eval(source: """
print("hello eval")
""")

let fn1 = try Evals.compileFunction0(returnType: Int.self,
                                     source: """
return 1 + 2
""")

print(fn1())
