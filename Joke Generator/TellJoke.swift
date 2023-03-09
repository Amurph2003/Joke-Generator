//
//  TellJoke.swift
//  Joke Generator
//
//  Created by Alex Murphy on 10/27/22.
//

import Foundation
import SwiftUI



struct TellJoke: View{
    @FetchRequest(sortDescriptors: []) var alljokes: FetchedResults<Joke>
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var StatusUpdate = "heart"
    @State var Saved = Bool()
    @State var JokesTold = [Int]()
    @State var isShareSheetShowing = false
    @State var Jokes = Int.random(in: 1 ... 9)
    @State var SelectedJoke = "Two windmills are standing in a wind farm. One asks, 'What's your favorite type of music?' The other says, 'I'm a big metal fan.'"
    var body: some View{
        ZStack{
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Bad Jokes")
                        .foregroundColor(Color.blue)
                        .font(Font.custom("SignPainter", size: 60))
                        .padding(.top, 50)
                    Spacer()
                    Text("\(self.SelectedJoke)")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.purple)
                        .font(Font.custom("Noteworthy", size: 25))
                        .padding()
                        .minimumScaleFactor(0.75)
                    Spacer()
                    HStack{
                        Button(action: {self.isShareSheetShowing = true} ){
                            ZStack{
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .frame(width: 30, height: 35, alignment: .center)
                            }
                        }
                            .sheet(isPresented: $isShareSheetShowing, onDismiss: {
                                print("Dismiss")
                            }, content: {
                             ActivityViewController(activityItems: ["Look what I found on Joke Generator! - bit.ly/jokegen \n \n\(self.SelectedJoke)"])
                            })
                        Spacer()
                    Button(action: {} ){
                        ZStack{
                                       Image(systemName: "rectangle.fill")
                                           .resizable()
                                           .frame(width: 100, height: 40, alignment: .center)
                                        .foregroundColor(darkYellow)
                        Text("New Joke")
                        }
                        }
            Spacer()
                        Button(action: {
                           // Loved()
                           // Status()
                        }) {
                            ZStack{
                                Image(systemName: "\(StatusUpdate)")
                                    .resizable()
                                    .frame(width: 40, height: 35, alignment: .center)
                            }
                        }
                    }
                    .padding([.leading, .trailing], 50)
                    .padding(.bottom, 50)
               //     Banner()
                        }
                    }
                .edgesIgnoringSafeArea(.all)
            }
    
    
    func saveContext() {
      do {
        try managedObjectContext.save()
      } catch {
        print("Error saving managed object context: \(error)")
      }
    }

}

func getJokes(fileName: String) -> [(Int, String)]{
    let directory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    let file = URL(fileURLWithPath: fileName, relativeTo: directory).appendingPathExtension("txt")
    do {
        let saved = try Data(contentsOf: file)
        print(saved)
        return [(0, "Success")]
    } catch {
        print("Error")
        print(directory)
        return [(1, "Error")]
    }
    
    
}

struct TellJoke_Previews: PreviewProvider{
    static var previews: some View{
        TellJoke()
    }
}
