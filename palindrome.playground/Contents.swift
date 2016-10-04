//: Playground - noun: a place where people can play

import UIKit

// Variables for testing a palindrome
var normal = "test"
var palindrome = "a Toyota"

func isPalindrome(word: String) -> Bool {
    let trimmedWord = word.replacingOccurrences(of: " ", with: "")

    var isPalindrome = true
    var leftIndex = 0
    var rightIndex = trimmedWord.characters.count - 1
    
    while (leftIndex < rightIndex) {
        
        // 1. Get left character
        let left_start = trimmedWord.index(trimmedWord.startIndex, offsetBy: leftIndex)
        let left_end = trimmedWord.index(trimmedWord.startIndex, offsetBy: leftIndex + 1)
        let left_range = left_start..<left_end
        
        let leftSubstring = trimmedWord.substring(with: left_range).lowercased()
        
        // 2. Get right character
        let right_start = trimmedWord.index(trimmedWord.startIndex, offsetBy: rightIndex)
        let right_end = trimmedWord.index(trimmedWord.endIndex, offsetBy: -leftIndex)
        let right_range = right_start..<right_end
        
        let rightSubstring = trimmedWord.substring(with: right_range).lowercased()
        
        // 3. Check to see if characters match
        if(leftSubstring != rightSubstring) {
            isPalindrome = false
        }
        
        // 4. Move the pointer
        leftIndex = leftIndex + 1
        rightIndex = rightIndex - 1
    }
    
    return isPalindrome
}

print(isPalindrome(word: palindrome))



