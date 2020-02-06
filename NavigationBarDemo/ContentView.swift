//
//  ContentView.swift
//  NavigationBarDemo
//
//  Created by shiga on 06/02/20.
//  Copyright © 2020 shiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // NavigationBar Customization
    
    init() {
        UINavigationBar.appearance().backgroundColor = .systemPink
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont(name: "AlNile-Bold", size: 40)!
        ]
        
        UINavigationBar.appearance().barTintColor = .blue
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor.white,
                .font: UIFont(name: "AlNile-Bold", size: 20)!
        ]
        
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach (0 ..< 25) { _ in
            Text("Hello, World!")
            }
        }
            .navigationBarTitle(Text("Navigation Bar"), displayMode: .large)
            
            .navigationBarItems(leading: Button(action: {
                print("Share")
            }, label: {
                Image(systemName: "trash.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }),
            
                    trailing: Button(action: {
                            print("folder")
                                }, label: {
                                    Image(systemName: "folder")
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                        }))
//            .navigationBarItems(leading: EditButton())
//            .navigationBarItems(trailing: EditButton())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
