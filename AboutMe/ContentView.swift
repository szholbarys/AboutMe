//
//  ContentView.swift
//  AboutMe
//
//  Created by Zholbarys on 11.09.2024.
//

import SwiftUI

struct ContentView: View {
//    personal data
    var firstName: String = "Zholbarys"
    var lastName: String = "Saken"
    var age: Int = 21
    var birthYear: Int = 2003
    var isStudent: Bool = true
    var height: Double = 1.80
    let currentYear: Int = 2024
//    about hobby
    var hobby: String = "play basketball🏀"
    var numberOfHobbies: Int = 5
    var favoriteNumber: Int = 7
    var isHobbyCreative: Bool = true
//    about future
    var futureGoals: String = "In the future, I want to become a professional Software Engineer and a successful businessman.👨🏻‍💻💸"
    
    var body: some View {
        VStack {
            Image("profilePhoto")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding()
                
            Text("👋🏻My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear).")
                .font(.headline)
                .padding(.bottom, 2)
                   
            Text("🎓I am currently a student: \(isStudent ? "Yes" : "No").")
                .padding(.bottom, 2)
                   
            Text("I enjoy \(hobby), which is a creative hobby: \(isHobbyCreative ? "Yes" : "No").🧠")
                .padding(.bottom, 2)
                   
            Text("I have \(numberOfHobbies) hobbies in total⚽️🏀🏂🚴‍♂️🏔️, and my favorite number is \(favoriteNumber).")
                .padding(.bottom, 2)
                   
            Text(futureGoals)
                .italic()
                .padding(.top, 10)
               }
        .padding()
        .onAppear {
            let lifeStory = """
            My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear).
            I am currently a student: \(isStudent).
            I enjoy \(hobby), which is a creative hobby: \(isHobbyCreative).
            I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber).
            \(futureGoals)
            """
            print(lifeStory)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
