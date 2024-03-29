# Usage:

## Mount points

You have to map a folder on your local drive to '/home/MetaTrader'

## Environment variables
| Variable | Value | Default | Explanation |
| -------- | ------- | -------- | ------- |
| DisplayResolution | *height* **x** *width* | 1280x1024 | The display resolution of the VNC server |
| MTVers | '4', '5' or 'both' | *none* | The version of MT you want to use |

On first container start, the contianer will download and launch the setup for the MT according to your MTVers value. If the specified MT version is already installed, it will launch it automatically.
