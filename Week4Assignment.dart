// Interface for electronic devices
abstract class ElectronicDevice {
  void turnOn();
  void turnOff();

  // Optional method (not all devices may have volume control)
  void adjustVolume(double volume) {}
}

// Class representing a television, inheriting from ElectronicDevice
class Television implements ElectronicDevice {
  bool isOn = false;
  int volume = 10;

  @override
  void turnOn() {
    isOn = true;
    print("Television is turned on.");
  }

  @override
  void turnOff() {
    isOn = false;
    print("Television is turned off.");
  }

  @override
  void adjustVolume(double volume) {
    if (isOn) {
      this.volume =
          volume.clamp(0, 100).toInt(); // Clamp volume between 0 and 100
      print("Television volume set to $volume.");
    } else {
      print("Television is off, cannot adjust volume.");
    }
  }
}

// Function to read channel data from a file (replace with your actual logic)
List<String> readChannelData(String filePath) {
  // Simulate reading data from a file
  return [
    "Channel 1",
    "Channel 2",
    "Channel 3"
  ]; // Replace with actual channels
}

void main() {
  // Read channel data from a file
  var channels = readChannelData("channels.txt");

  // Create a television instance
  var tv = Television();

  // Turn on the television
  tv.turnOn();

  // Loop to display available channels
  print("Available Channels:");
  for (var channel in channels) {
    print(channel);
  }

  // Adjust volume (demonstrates optional method)
  tv.adjustVolume(50);
}
