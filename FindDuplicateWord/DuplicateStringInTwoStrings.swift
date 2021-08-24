//
//  DuplicateStringInTwoStrings.swift
//  
//
//  Created by Padmnabh Umapati Vyas on 24/08/21.
//

import Foundation


//A sentence is a string of single-space separated words where each word consists only of lowercase letters.
//
//A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
//
//Given two sentences s1 and s2, return a list of all the uncommon words. You may return the answer in any order.
//
//Example:
//Input: s1 = "this apple is sweet", s2 = "this apple is sour"
//Output: ["sweet","sour"]


func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        let s1Array = s1.split(separator: " ") + s2.split(separator: " ")

        var uniqueItems: [String] = []
        var duplicateArray: [String] = []

        for word in s1Array {
            let wordStr = String(word)
            if duplicateArray.contains(wordStr) {

            } else if let item = uniqueItems.firstIndex(of: wordStr) {
                duplicateArray.append(wordStr)
                uniqueItems.remove(at: item)
            } else {
                uniqueItems.append(wordStr)
            }
        }

        return uniqueItems
    }

var s1 = "this apple is sweet", s2 = "this apple is sour"

var result = uncommonFromSentences(s1, s2)

print(result)
