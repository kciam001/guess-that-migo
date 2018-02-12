//
//  QuestionBank.swift
//  guessthatmigo
//
//  Created by Kevin Ciampaglia on 1/23/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init(){
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Hop in the Lamb, have a drag race (skrt) \n I let them birds take a bath, bae brr )", correctAnswer: "Offset")
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Young nigga poppin' with a pocket full of cottage (ayy)\n Woah kemosabe, chopper aimin' at your noggin ayy", correctAnswer: "Takeoff"))
        
        list.append(Question(text: "Mama asked me, \"Son, when the trappin\' gon\' quit?\" \n I been ridin' round through the city in my new bitch", correctAnswer: "Offset"))
        
        list.append(Question(text: "Uh, ooh, fresh out the bed \n Uh, ooh, count up the deads \n Uh, ooh, fresh out the bed \n Uh, ooh, Uh, ooh, count up the deads", correctAnswer: "Quavo"))
        
        list.append(Question(text: "I gave her her first Philippe (Philippe) \n We goin' full throttle, she swallowed the bottle \n I'm all in her ovaries (eghhh)", correctAnswer: "Offset"))
        
        list.append(Question(text: "She swallowed the bottle while I sit back and smoke gelato \n Walk in my mansion, twenty \n thousand painting, Picasso \n Bitches be dippin', dabbin' with niggas like a nacho", correctAnswer: "Offset"))
        
        list.append(Question(text: "Hot boy, hot boy, hot boy, hot boy, hot boy \n Hot boy, hot boy, hot boy, hot boy, hot boy", correctAnswer: "Quavo"))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: "Quavo"))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: "Quavo"))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: "Quavo"))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: "Quavo"))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: "Quavo"))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: "Quavo"))
    }
}
