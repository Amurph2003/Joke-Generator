//
//  Joke.swift
//  Joke Generator
//
//  Created by Alex Murphy on 10/3/22.
//

import Foundation

class Joke{
    private var AnimalJokes: [String] = [
        "Why’d the duck cross the road? To prove it wasn’t chicken!",
        "What animal has the best sense of time? A watchdog!",
        "Where do dogs go to get new tails? A re-tail shop!",
        "My dog likes to chase people on a bike. They kept complaining, and it got so bad I had to take his bike away.",
        "Why does a chicken coop only have 2 doors? Because else if it had 4, it would be a chicken sedan!",
        "How do you count cows? With a cow-culator", "What kind of dogs have the best comebacks? A Burn-ese!",
        "I went to the zoo the other day and it only had one animal. It was a shitzu!",
        "Why did the man name his dogs Rolex and Timex? Because they were watchdogs!",
        "Why can’t you play hide and seek in the jungle? There are too many Cheetahs!",
        "Can a kangaroo jump higher than the Empire State Building? Of course, the Empire State Building can’t jump!",
        "What did the fish say after swimming into a wall? Dam!",
        "My email was hacked again yesterday. That’s the third time I’ve had to rename the dog.",
        "What do you call a toothless bear? A gummy bear!",
        "Why are fish so smart? They’re always in schools!",
        "What animal has more lives than a cat? Frogs, they croak every night!",
        "What can horses never get anything done at meetings? All they say is neigh!",
        "Why are mice afraid of swimming? Catfish",
        "Why does Mozart hate chickens? All they ever say is ‘Bach’",
        "Why are teddy bears never hungry? They’re always stuffed!",
        "What do you call a sleeping bull? A Bull-Dozer!",
        "Why couldn’t the pony sing? It was a little horse!",
        "What do you call a penguin in the desert? Lost",
        "Where do sheep go to get a haircut? The Baa-baa shop",
        "Who tells the best jokes on the farm? The comedi-hen"
    ];
    private var AnimalCount = 0;
    
    func getAnimal() -> String {
        if (AnimalCount == AnimalJokes.count){
            AnimalCount = 0;
            AnimalJokes.shuffle();
        } else if (AnimalCount == 0){
            //AnimalJokes.shuffle();
        }
        let joke = AnimalJokes[AnimalCount];
        AnimalCount += 1;
        return joke
    }
    
}

