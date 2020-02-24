# Grelier - A Vala i3 IPC Library

This is a partial implementation of a i3 IPC library written in Vala, intended for usages with other Vala programs that integrate with i3.

## Maturity

Grelier is only a partial implementation but is used in [Remontoire](https://github.com/regolith-linux/remontoire).  It should not be considered for inclusion in other projects unless there is the ability to update the client to add whatever features you may need.

## Usage

Create a client instance:

```vala
var client = new Grelier.Client(socket_address);
```

Get the i3 version:

```vala
string version = client.getVersion().human_readable;
```

Get the i3 config file:

```vala
string config = client.getConfig().config;
```