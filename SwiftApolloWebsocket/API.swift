// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FakeUsersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FakeUsers {
      users {
        __typename
        data {
          __typename
          name
        }
      }
    }
    """

  public let operationName: String = "FakeUsers"

  public let operationIdentifier: String? = "491301ecc2355f5e34bcf788c6c9a65f72e3d436353db31a5ca417869ff11ed4"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", type: .object(User.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: User? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.flatMap { (value: User) -> ResultMap in value.resultMap }])
    }

    public var users: User? {
      get {
        return (resultMap["users"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UsersPage"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("data", type: .list(.object(Datum.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(data: [Datum?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "UsersPage", "data": data.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var data: [Datum?]? {
        get {
          return (resultMap["data"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Datum?] in value.map { (value: ResultMap?) -> Datum? in value.flatMap { (value: ResultMap) -> Datum in Datum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }, forKey: "data")
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
