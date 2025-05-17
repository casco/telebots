
<p align="center">
  <img height="200" src="readme_assets/bottlegram_logo.jpg" alt="bottlegram for pharo logo">
</p>

# Telebots

Telebots is a framework for creating telegram Bots with Pharo. This library provides an interface for the [Telegram Bot API](https://core.telegram.org/bots/api).

### Install

To install only the polling implementation (default) use:

```smalltalk
Metacello new
  baseline: #Telebots;
  repository: 'github://casco/telebots';
  load.
```

To install  the webhooked implementation use:

```smalltalk
Metacello new
  baseline: #Telebots;
  repository: 'github://casco/telebots';
  load: 'webhooked'.
```
# Examples

Class EchoBot is an example of PollingTelegramBot

To start a new EchoBot evaluate the following expression.

```smalltalk

echoBot:=EchoBot token:'paste here the API TOKEN obtained from the BotFather'.
echoBot startBotPolling:1 . "Polling updates every second."
echoBot stopBot. "To stop the bot and the polling process"

```

