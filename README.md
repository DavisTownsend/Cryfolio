# Welcome to Cryfolio

## This is intended to be a cryptocurrency exchange portfolio analysis tool
### Currently supported exchanges:
* Binance
## Why should I use this?
The idea behind this is to create a desktop app to help manage your crypto portfolio on your own pc without having to enter your exchange API keys in an online tool that might store those keys.

## Quickstart
if you know what you are doing I'd recommend to just download the jupyter notebook, setup your own environment using the requirements.txt file, enter you api key and secret at the top cell and run the rest of the cells from there.

Otherwise, follow the instructions below to automatically get a docker container up and running with a non-persistent jupyter notebook in your local browser

### Pre-requisites

#### Binance Account API Key & Secret
Before getting started with the automatic set-up, You'll need to create an API key on binance's website under you account page, you can set whatever permissions you feel comfortable with
![alt text](https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/1058347065/original/KrqQo363K-EdEyRDUhtxllwFalvPSAgANg.png?1508949029)
##### API permission recommendations for maximum security:
* restrict access to trusted ip only(in this case you'll just need the ip of your docker container which should be the same as your local ip address.
* only allow read info permission (can see your account balance and historical trades, deposits, and withdrawals
* after using any external tool, delete your used API key and create a new key (this won't help if there's a malicious script out there that acts on runtime, so just be wary that this won't help if a tool executes harmful code at runtime)

#### Docker
You'll also need to download [docker](https://docs.docker.com/engine/installation/)

Once Docker is downloaded you should see something like this when you start the docker app:
![alt text](http://www.phpbuilder.com/imagesvr_ce/9501/DPfig6.png)

Now run the following command to pull the pre-built image from docker hub 
`docker pull dtownsend/cryfolio`
(you can also do `docker build https://raw.githubusercontent.com/DavisTownsend/Cryfolio/master/Dockerfile -t <your image name here>:latest` to build directly from the repo but this will be slower since the image is not pre-built. The benefit from building is you can add a custom image name using the -t flag)

`docker pull dtownsend/cryfolio`





