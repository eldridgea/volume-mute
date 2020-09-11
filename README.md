A quick and dirty Bash/Applescript intended to be run via cron that pops a notficaion at the end of work hours and if there's no response afte 30 seconds (or if you respond "yes") will mute your machine.

Mainly because Slack doens't respect macOS Do Not Disturb. At least on my machine. 

## Installation

To "install" this:

```
cd
git clone https://github.com/eldridgea/volume-mute
```
Then run `crontab -e` and add the following to your crontab

`0 18 * * * $HOME/volume-mute/volume-mute.sh`

(This runs it as 6pm, you can change the cron time to whatever you prefer using [cron's syntax](https://en.wikipedia.org/wiki/Cron#Overview)) 

> The first time it runs at the scheduled time, you will get an "approval" dialog asking to allow the script to send communciae with Finder.
> You'll need to approve as this is how the script pops a visual notification when being loaded from cron.
