// Here you find ALL about SwiftUI

// Properties
// 1. VStack
// VStack is a view that arranges its children in a vertical line.
struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
            Text("VStack")
        }
    }
}

// 2. HStack
// HStack is a view that arranges its children in a horizontal line.
struct ContentView: View {
    var body: some View {
        HStack {
            Text("SwiftUI")
            Text("HStack")
        }
    }
}

// 3. ZStack
// ZStack is a view that overlays its children, aligning them in both axes.
struct ContentView: View {
    var body: some View {
        ZStack {
            Text("SwiftUI")
            Text("ZStack")
        }
    }
}

// 4. Spacer
// Spacer is a flexible space that expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.
struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
            Spacer()
            Text("Spacer")
        }
    }
}

// 5. Divider
// Divider is a visual element that can be used to separate other content.
struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI")
            Divider()
            Text("Divider")
        }
    }
}

// 6. NavigationView
// NavigationView is a view for presenting a stack of views representing a visible path in a navigation hierarchy.
struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("SwiftUI")
        }
    }
}

// 7. List
// List is a container that presents rows of data arranged in a single column.
struct ContentView: View {
    var body: some View {
        List {
            Text("SwiftUI")
            Text("List")
        }
    }
}

let array = ["SwiftUI", "List", "Awesome", "String"]
struct ContentView: View {
    var body: some View {
        List(array, id: \.self) { item in
            Text(item)
        }
    }
}

let dictionary = ["SwiftUI": "Awesome", "List": "Awesome", "Awesome": "Awesome", "String": "Awesome"]
struct ContentView: View {
    var body: some View {
        List(dictionary.sorted(by: <), id: \.key) { key, value in
            Text(key)
        }
    }
}

struct ContentView2: View {
    var body: some View {
        List {
            ForEach(array, id: \.self) { item in
                Text(item)
            }
        }
    }
}

// 8. ScrollView
// ScrollView is a container that presents rows of data arranged in a single column.
struct ContentView: View {
    var body: some View {
        ScrollView {
            Text("SwiftUI")
            Text("ScrollView")
        }
    }
}

// 9. ForEach
// ForEach is a view struct that lets us loop over a collection of data and display it in our SwiftUI views.
struct ContentView: View {
    var body: some View {
        ForEach(0..<5) { index in
            Text("SwiftUI")
        }
    }
}

// Properties and enums of views
// 1. Text
// Text is a view that displays one or more lines of read-only text.
struct ContentView: View {
    var body: some View {
        Text("SwiftUI")
            .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
            .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
            .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
            .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
            .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
            .lineSpacing(10) // .lineSpacing(10)
            .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
            .cornerRadius(10) // .cornerRadius(10, antialiased: true)
            .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
    }
}

// 2. Image
// Image is a view that displays an environment-dependent image.
struct ContentView: View {
    var body: some View {
        Image(systemName: "star.fill")
            .resizable() // .resizable(capInsets: EdgeInsets(), resizingMode: Image.ResizingMode.stretch)
            .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
            .aspectRatio(contentMode: .fit) // .aspectRatio(contentMode: .fit, contentMode: .fill)
            .clipped() // .clipped(antialiased: true)
            .cornerRadius(10) // .cornerRadius(10, antialiased: true)
            .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
    }
}

// 3. Button
// Button is a control that performs an action when triggered.
struct ContentView: View {
    var body: some View {
        Button(action: {
            print("SwiftUI")
        }) {
            Text("SwiftUI")
        }
    }
}

struct ContentView2: View {
    var body: some View {
        Button(action: {
            print("SwiftUI")
        }) {
            Image(systemName: "star.fill")
        }
        .buttonStyle(PlainButtonStyle()) // .buttonStyle(BorderlessButtonStyle(), DefaultButtonStyle())
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 4. TextField
// TextField is a control that displays an editable text interface.
struct ContentView: View {
    @State private var text = ""
    var body: some View {
        TextField("Placeholder", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle()) // .textFieldStyle(DefaultTextFieldStyle(), PlainTextFieldStyle())
            .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
            .cornerRadius(10) // .cornerRadius(10, antialiased: true)
            .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
            .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
            .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
            .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
            .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
            .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
            .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
            .lineSpacing(10) // .lineSpacing(10)
            .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 5. Toggle
// Toggle is a control that toggles between on and off states.
struct ContentView: View {
    @State private var isOn = false
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("SwiftUI")
        }
    }
}

struct ContentView2: View {
    @State private var isOn = false
    var body: some View {
        Toggle(isOn: $isOn) {
            Image(systemName: "star.fill")
        }
        .toggleStyle(SwitchToggleStyle()) // .toggleStyle(DefaultToggleStyle(), SwitchToggleStyle())
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 6. Slider
// Slider is a control for selecting a value from a bounded linear range of values.
struct ContentView: View {
    @State private var value = 0.0
    var body: some View {
        Slider(value: $value, in: 0...100, step: 1)
    }
}

struct ContentView2: View {
    @State private var value = 0.0
    var body: some View {
        Slider(value: $value, in: 0...100, step: 1) {
            Text("SwiftUI")
        }
        .accentColor(.blue) // .accentColor(Color.blue, Color.red, Color.green)
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 7. Stepper
// Stepper is a control used to perform semantic increment and decrement actions.
struct ContentView: View {
    @State private var value = 0
    var body: some View {
        Stepper(value: $value, in: 0...100, step: 1) {
            Text("SwiftUI")
        }
    }
}

struct ContentView2: View {
    @State private var value = 0
    var body: some View {
        Stepper(value: $value, in: 0...100, step: 1) {
            Image(systemName: "star.fill")
        }
        .accentColor(.blue) // .accentColor(Color.blue, Color.red, Color.green)
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 8. DatePicker
// DatePicker is a control used to select a single date, time, or both.
struct ContentView: View {
    @State private var date = Date()
    var body: some View {
        DatePicker(selection: $date, displayedComponents: .date) {
            Text("SwiftUI")
        }
    }
}

struct ContentView2: View {
    @State private var date = Date()
    var body: some View {
        DatePicker(selection: $date, displayedComponents: .date) {
            Image(systemName: "star.fill")
        }
        .accentColor(.blue) // .accentColor(Color.blue, Color.red, Color.green)
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 9. Picker
// Picker is a control used to select from a set of mutually exclusive values.
struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        Picker(selection: $selection, label: Text("SwiftUI")) {
            Text("SwiftUI")
            Text("Picker")
        }
    }
}

struct ContentView2: View {
    @State private var selection = 0
    var body: some View {
        Picker(selection: $selection, label: Text("SwiftUI")) {
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
        }
        .pickerStyle(SegmentedPickerStyle()) // .pickerStyle(DefaultPickerStyle(), SegmentedPickerStyle())
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// 10. NavigationLink
// NavigationLink is a button that triggers a navigation presentation when pressed.
struct ContentView: View {
    var body: some View {
        NavigationLink(destination: Text("SwiftUI")) {
            Text("SwiftUI")
        }
    }
}

struct ContentView2: View {
    var body: some View {
        NavigationLink(destination: Text("SwiftUI")) {
            Image(systemName: "star.fill")
        }
        .accentColor(.blue) // .accentColor(Color.blue, Color.red, Color.green)
        .disabled(true) // .disabled(true)
        .padding() // .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.yellow) // .background(Color.yellow, Color.red, Color.green)
        .cornerRadius(10) // .cornerRadius(10, antialiased: true)
        .shadow(radius: 10) // .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .overlay(Text("SwiftUI")) // .overlay(Text("SwiftUI"), alignment: Alignment.center)
        .foregroundColor(.blue) // .foregroundColor(Color.blue, Color.red, Color.green)
        .font(.title) // .font(.system(size: 34, weight: .bold, design: .default))
        .multilineTextAlignment(.center) // .multilineTextAlignment(.center, .leading, .trailing)
        .lineLimit(1) // .lineLimit(nil, 1, 2, 3, 4, 5)
        .truncationMode(.middle) // .truncationMode(.head, .middle, .tail)
        .lineSpacing(10) // .lineSpacing(10)
        .frame(width: 100, height: 100) // .frame(width: 100, height: 100, alignment: Alignment.center)
    }
}

// Now we'll learn about @State, @Binding, @ObservedObject, @EnvironmentObject, @Environment, @GestureState
// 1. @State
// @State is a property wrapper type that can contain a single, mutable value.
struct ContentView: View {
    @State private var text = ""
    var body: some View {
        TextField("Placeholder", text: $text)
    }
}

// We can use @State for change and manipulate the state of a view.
struct ContentView: View {
    @State private var text = ""
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
            Button(action: {
                self.text = ""
            }) {
                Text("Clear")
            }
        }
    }
}

// 2. @Binding
// @Binding is a property wrapper type that can read and write a value owned by a source of truth.
struct ContentView: View {
    @State private var text = ""
    var body: some View {
        ChildView(text: $text)
    }
}

struct ChildView: View {
    @Binding var text: String
    var body: some View {
        TextField("Placeholder", text: $text)
    }
}

// 3. @ObservedObject
// @ObservedObject is a property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.
class User: ObservableObject {
    @Published var name = ""
}

struct ContentView: View {
    @ObservedObject var user = User()
    var body: some View {
        TextField("Placeholder", text: $user.name)
    }
}

// 4. @EnvironmentObject
// @EnvironmentObject is a property wrapper type that reads an observable object supplied by a parent or ancestor view.
class User: ObservableObject {
    @Published var name = ""
}

struct ContentView: View {
    @EnvironmentObject var user: User
    var body: some View {
        TextField("Placeholder", text: $user.name)
    }
}

// 5. @Environment
// @Environment is a property wrapper type that reads a value from the current environment.
struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Text("SwiftUI")
            .foregroundColor(colorScheme == .dark ? .white : .black)
    }
}

// 6. @GestureState
// @GestureState is a property wrapper type that updates a view when a gesture changes.
struct ContentView: View {
    @GestureState private var isDetectingLongPress = false
    var body: some View {
        Text("SwiftUI")
            .foregroundColor(isDetectingLongPress ? .red : .black)
            .gesture(
                LongPressGesture(minimumDuration: 1)
                    .updating($isDetectingLongPress) { currentState, gestureState, transaction in
                        gestureState = currentState
                    }
            )
    }
}

// Now we'll learn about struct inheritance types
// 1. Identifiable
struct PersonModel: Identifiable {
    var id = UUID()
    var name: String
    var age: Int {
        get {
            return self.age
        }
        set {
            self.age = newValue
        }
    }
}

let person1 = PersonModel(name: "SwiftUI", age: 1)
let person2 = PersonModel(name: "SwiftUI", age: 2)
// Identifiable protocol is used when working with collections of data to identify unique elements. 
// It provides a way for SwiftUI to differentiate one element from another, especially in contexts like List, ForEach, and ForEach-based views. 
// You typically use Identifiable when you have a collection of identifiable items and you want to render them in a view.

struct PersonView: View {
    var person: [PersonModel]

    var body: some View {
        List(person) { person in
            Text(person.name)
        }
    }
}

// 2. Equatable
struct PersonModel: Equatable {
    var name: String
    var age: Int
}
// The Equatable protocol is not specific to SwiftUI but is essential for making custom data types or structs equatable. 
// This helps in comparing and updating data effectively, especially in conjunction with @State or @Binding.

struct PersonView: View {
    @State private var person = PersonModel(name: "SwiftUI", age: 1)

    var body: some View {
        VStack {
            Text(person.name)
            Button(action: {
                self.person.name = "SwiftUI"
            }) {
                Text("SwiftUI")
            }
        }
    }
}

// 3. Hashable
struct PersonModel: Hashable {
    var name: String
    var age: Int
}

struct PersonView: View {
    @State private var person = PersonModel(name: "SwiftUI", age: 1)

    var body: some View {
        VStack {
            Text(person.name)
            Button(action: {
                self.person.name = "SwiftUI"
            }) {
                Text("SwiftUI")
            }
        }
    }
}

// Observable
struct CoffeeShop {
    var name: String
    var coffee: String {
        didSet {
            print("Coffee was changed to \(coffee)")
        }
        willSet {
            print("Coffee will be changed to \(coffee)")
        }
    }
}

var coffeeShop = CoffeeShop(name: "Starbucks", coffee: "Cappuccino")
coffeeShop.coffee = "Latte"

// More about closures
let addiction: (Int, Int) -> Int = { (number: Int, number2: Int) -> Int in
    return number + number2
}

let processClosure: (Int, (Int, Int) -> Int) = { (number: Int, closure: (Int, Int) -> Int) -> Int in
    return closure(number, number)
}

let result = processClosure(10, addiction)
print(result)