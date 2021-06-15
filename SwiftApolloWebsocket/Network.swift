//
//  Network.swift
//  SwiftApolloWebsocket
//
//  Created by Marvin Rudolph on 15.06.21.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphqlzero.almansi.me/api")!)
}
