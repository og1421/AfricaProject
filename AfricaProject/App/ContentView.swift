//
//  ContentView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let hapitcs = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive = false
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    // MARK: Functions
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid number: \(gridColumn)")
        
        //TOOLBAR IMAGE
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        // MARK: - Body
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }//: NavigationLink
                        }//:Loop
                    }//: LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { animal in
                                NavigationLink (destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                        .padding(10)
                                        .animation(.easeIn(duration: 0.2))
                                }
                            }//: LOOP
                        }//: Grid
                    }//: SCROLL
                }//: Condition
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 16) {
                        //List
                        Button(action: {
                            print("List View is Activated")
                            isGridViewActive = false
                            hapitcs.impactOccurred()
                        }, label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        })
                        
                        //Grid
                        Button(action: {
                            print("Grid is activated")
                            isGridViewActive = true
                            hapitcs.impactOccurred()
                            gridSwitch()
                        }, label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        })
                    }//: Hstack
                }//: Buttons
            }//: Toobar
        }//: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
