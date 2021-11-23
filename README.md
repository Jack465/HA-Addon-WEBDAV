# Home Assistant Addon - WEBDAV Share (using RCLONE)

![Supports amd64 Architecture][amd64-shield]

This addon is designed to run on the Home Assistant Supervisor addon environment. It downloads RCLONE, and uses the `serve` command to provide a basic WEBDAV share. It has two configuration options for username and password, and binds to port 2476, changable in the configuration. 

## How to use

1. Set a username and password in the configuration tab 
2. Save the configuration by clicking the `SAVE` button in the bottom right corner.
3. Start the extension. 

## Example Configuration

```yaml
username: user
password: test1234
```

## TODO:

* Implement support for other architectures, should be possible to get support for all architectures supported by home assistant
* Setup configuration for type of share (e.g. sftp, http, ftp etc)

[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg