# Welcome to Cryfolio

## This is intended to be a cryptocurrency exchange portfolio analysis tool
### Currently supported exchanges:
* Binance
## Why should I use this?
The idea behind this is to create a desktop app to help manage your crypto portfolio on your own pc without having to enter your exchange API keys in an online tool that might store those keys.

### Features
* interactive pie chart of binance portfolio holdings
* detailed table summary of binance portfolio holdings
* interactive plotting of coin price and returns
* Binance deposit, withdrawal, and trade history


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

### Step by Step guide
Once Docker is downloaded you should see something like this when you start the docker app:
![alt text](http://www.phpbuilder.com/imagesvr_ce/9501/DPfig6.png)

Now run the following command in docker to build the docker image and
make sure to replace <**your image name here**> with whatever you want to call your image
  
`docker build https://raw.githubusercontent.com/DavisTownsend/Cryfolio/master/Dockerfile -t <your image name here>:latest` 

Once you have done this you can run

`docker images`

to see your newly built image.

Now we will turn this image into a running container that launches the jupyter notebook application by running this line of code:
(again make sure to replace <**your image name here**> with whatever you called your image in the previous step

`docker run -i -t -p 8888:8888 <your image name here> /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"`

After you run this command you should see a prompt pop up that gives the the url for your jupyter notebook, copy and paste the URL into your browser

(Note: if the URL given doesn't work it means you need to replace localhost with your docker machine ip address which you can find by running : `docker-machine ip` 
Once you have the address just replace localhost:8888 with <your ip here>:8888 in the URL given)
  
When you get to the jupyter notebook interface in the browser you should see one notebook already there
![alt text](https://github.com/DavisTownsend/Cryfolio/blob/master/images/jupyter_home_page.PNG)

left click on the notebook to open it

in the very top cell you need to copy paste your API Key and Secret into the correspond spots
![alt text](https://github.com/DavisTownsend/Cryfolio/blob/master/images/jupyter_API_entry.PNG)

Now everything is ready to go you can click the cell button at the top, and then click Run All to run all the cells in the notebook sequentially.
![alt text](https://github.com/DavisTownsend/Cryfolio/blob/master/images/jupyter_run_all.PNG)

Once the code is done running, you can scroll about half way to the detailed summary of holdings and from there down are the outputs listed in Features.

### Restarting the notebook
Important Note: When you close out of a session (use control + C in docker to close the notebook session) nothing is saved, so don't make changes to the jupyter notebook expecting them to persist

If you want to re-run the notebook later, as long as you still have to image you just need to re-run the docker run command:

`docker run -i -t -p 8888:8888 <your image name here> /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"`

and do the same steps as before where you copy/paste the url into the browser to run the notebook

### Other useful Docker commands
list all running containers:
`docker ps`

list all containers:
`docker ps -a`

stop all running containers:
`docker stop $(docker ps -aq)`

remove all containers:
`docker rm $(docker ps -aq)`

go into command prompt inside docker image to see e.g. file directory structure
`docker run -it <image_name> sh`
you can do all the normal ls and cd commands inside the image (now a container) after running this command










