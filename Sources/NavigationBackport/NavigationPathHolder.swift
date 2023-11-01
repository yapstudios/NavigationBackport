import Foundation
import SwiftUI

/// An object that publishes changes to the path Array it holds.
class NavigationPathHolder: ObservableObject {
    var path: [AnyHashable] {
        didSet {
            DispatchQueue.main.async {
                self.objectWillChange.send()
            }
        }
    }

  init(path: [AnyHashable] = []) {
    self.path = path
  }
}
