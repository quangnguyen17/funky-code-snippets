//
// Recursion-Practices
//
//  Created by Quang Nguyen on 11/24/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

func factorial(of value: Int) -> Int {
    return value == 0 ? 1 : value * factorial(of: value - 1)
}

func fib(of num: Int) -> Int {
    return num <= 1 ? num : fib(of: num - 1) + fib(of: num - 2)
}

print(factorial(of: 6))
print(fib(of: 6))

