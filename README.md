# Welcome to Cryfolio

## This is intended to be a cryptocurrency exchange portfolio analysis tool
### Currently supported exchanges:
* Binance
## Why should I use this?
The idea behind this is to create a desktop app to help manage your crypto portfolio on your own pc without having to enter your exchange API keys in an online tool that might store those keys.

## Quickstart
if you know what you are doing I'd recommend to just download the jupyter notebook, setup your own environment using the requirements.txt file, enter you api key and secret at the top cell and run the rest of the cells from there.

Otherwise, follow these instructions to automatically get a docker container up and running with a non-persistent jupyter notebook in your local browser

### Pre-requisites

#### Binance Account API Key & Secret
You'll also need to create an API key on binance's website under you account page, you can set whatever permissions you feel comfortable with
![alt text](https://www.medvedtrader.com/Binance/Binance_apimenu.png)
##### API permission recommendations for maximum security:
* restrict access to trusted ip only(in this case you'll just need the ip of your docker container which should be the same as your local ip address.
* only allow read info permission (can see your account balance and historical trades, deposits, and withdrawals
* after using any external tool, delete your used API key and create a new key (this won't help if there's a malicious script out there that acts on runtime, so just be wary that this won't help if a tool executes harmful code at runtime)

#### Docker
Before getting started with the automatic set-up, you'll need to download [docker](https://docs.docker.com/engine/installation/)

Once Docker is downloaded you should see something like this when you start the docker app:
![alt text](http://www.phpbuilder.com/imagesvr_ce/9501/DPfig6.png)
