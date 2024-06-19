//
//  ContentView.swift
//  MultiplicationTableGame
//
//  Created by Kalle Pohjanjoki on 19.6.2024.
//

import SwiftUI



struct ContentView: View {
	@State private var multiplicationTables = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
	@State private var questionCountChoices = [5, 10, 20]
	@State private var questionsAsked = 0
	@State private var questionCount = 5
	@State private var selectedTable = 1
	@State private var multiplyBy = Int.random(in: 1...12)
	
	func buttonTapped() {
		
	}
	
    var body: some View {
		Spacer()
        VStack {
			VStack {
				Text("The multiplication table game")
					.bold()
					.font(.largeTitle)
					.multilineTextAlignment(.center)
					.padding()
				Image(systemName: "multiply.square")
					.font(.largeTitle)
			}
			Spacer()
			HStack {
				Text("Which multiplication table do you want to practice?")
					.bold()
					.multilineTextAlignment(.center)
				Spacer()
				Picker("", selection: $selectedTable) {
					ForEach(multiplicationTables, id: \.self) { num in
						Text("\(num)")
					}
				}
			}
			.padding(20)
			.frame(width: 380, height: 100)
			.background(LinearGradient(colors: [.mint, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
			.clipShape(.rect(cornerRadius: 15))
			
			HStack {
				Text("How many questions do you want to be asked?")
					.bold()
					.multilineTextAlignment(.center)
					
				Spacer()
				Picker("", selection: $questionCount) {
					ForEach(questionCountChoices, id: \.self) { num in
						Text("\(num)")
					}
				}
			}
			.padding()
			.frame(width: 380, height: 100)
			.background(LinearGradient(colors: [.mint, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
			.clipShape(.rect(cornerRadius: 15))
			Spacer()
			Spacer()
			Spacer()
			VStack {
				Text("What is \(selectedTable) times \(multiplyBy)?")
					.padding(20)
					.background(.ultraThinMaterial)
					.padding(20)
				HStack {
					ForEach(0..<3, id: \.self) { _ in
						Button("tap me", action: {})
							.padding(20)
							.background(.mint.gradient)
							.clipShape(.rect(cornerRadius: 15))
					}
				}
			}
			Spacer()
			Spacer()
			Spacer()
			Text("\(questionsAsked)/\(questionCount) Questions asked")
        }
		
		
    }
}

#Preview {
    ContentView()
}
