# Welcome to Cryfolio

## This is intended to be a cryptocurrency exchange portfolio analysis tool
### Currently supported exchanges:
* Binance
## Why should I use this?
The idea behind this is to create a desktop app to help manage your crypto portfolio on your own pc without having to enter your exchange API keys in an online tool that might store those keys.

Just keep in mind I would still strongly recommend against enabling trading through the exchange with your API, especially if you intend to use tools like this or others online, because they can easily get stolen with malicious scripts. With binance, default permission is that someone could see all your account details, but not be able to trade or withdraw anything from your account even if your codes got stolen. You can also regenerate your keys after using any tool to guard against this if you think your keys may have been stolen.

## Quickstart
if you know what you are doing I'd recommend to just download the jupyter notebook, setup your own environment using the requirements.txt file, enter you api key and secret at the top cell and run the rest of the cells from there.

Otherwise, follow these instructions to automatically get a docker container up and running with a non-persistent jupyter notebook in your local browser

### Pre-requisites
#### Docker
Before getting started with the automatic set-up, you'll need to download [docker](https://docs.docker.com/engine/installation/)
![Docker start page]: http://www.phpbuilder.com/imagesvr_ce/9501/DPfig6.png
#### Binance Account API Key & Secret
