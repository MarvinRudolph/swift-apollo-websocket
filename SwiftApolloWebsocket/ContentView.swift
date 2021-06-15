//
//  ContentView.swift
//  SwiftApolloWebsocket
//
//  Created by Marvin Rudolph on 15.06.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            Network.shared.apollo.fetch(query: FakeUsersQuery()) { _ in
                print("fetched users")
            }
        } label: {
            Text("Fetch users")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
