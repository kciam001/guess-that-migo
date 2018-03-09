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
        
        list.append(Question(text: "Karate chop that nigga like it's martial-arts", correctAnswer: "Offset"))
        
        list.append(Question(text: "Up early in the morning trapping /n You can get 'em how you asking \n How many chickens? you can get 'em whichever way /n Nigga, trap turned Zaxby's", correctAnswer: "Takeoff"))
        
        list.append(Question(text: "Bitch lookin\' like a Kardashian \n We hopped in the coupe and we smashin'/n Sippin' on my drink, watch that ass go slow motion /n Walkin' with that bag, look at my diamonds like the ocean", correctAnswer: "Quavo"))
        
        list.append(Question(text: "Nah you don't want no drama boy \n I'll eat a nigga ass like an Almond Joy", correctAnswer: "Quavo"))
        
        list.append(Question(text: "Icy Patek, check, yeah, boogers, they sit on my neck (ice)", correctAnswer: "Offset"))
        
        list.append(Question(text: "The sauce, my hoe, I look at the niggas like shrimp Fuck these niggas, these niggas ain't come from the NAWF (NAWF)", correctAnswer: "Offset"))
        
        list.append(Question(text: "My pinky on margarine, butter (margarine)", correctAnswer: "Offset"))
        
        list.append(Question(text: "If Nicki should show me her titty Right hand on the Bible, I swear I won't tell (swear)", correctAnswer: "Takeoff"))
        
        list.append(Question(text: "Public Service Announcement Where all my rich niggas at, man?", correctAnswer: "Takeoff"))
        
        
        
    }
}
