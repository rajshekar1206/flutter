class Laptop {
  Laptop(String? name, String? Color) {
    print("laptop constructer");
    print("name: $name");
    print("Color: $Color");
  }
}

class Macbook extends Laptop {
  Macbook({String? name, String? Color}) : super(name, Color) {
    print("macbook constructer");
  }
}

void main() {
  var macbook = Macbook(name: "MacBook", Color: "silver");
}
