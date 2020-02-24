/** 
 * Client and integration test harness for Grelier.
 */

int main (string[] args) {
  if (args.length < 3) {
    print("Usage: grelier <socket address> <command>\n");
    return 1;
  }

  stdout.printf (args[1] + " " + args[2] + "\n");
  string socketPath = args[1];
  string command = args[2];

  try {
    var client = new Grelier.Client(socketPath);

    switch (command) {
      case "version": 
        var response = client.getVersion();
        print(response.human_readable);
        print("\n");
        print(response.loaded_config_file_name);
        break;
      case "config":
        var response = client.getConfig();
        print(response.config);
        break;
      default:
        print ("Unrecognized command: " + command);
        break;
    }
  } catch (Grelier.I3_ERROR ex) {
    print("failed: " + ex.message);
    return 1;
  } catch (GLib.Error ex) {
    print("failed: " + ex.message);
    return 1;
  }

  print("\n");
  return 0;
}