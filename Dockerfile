FROM continuumio/anaconda3
ADD https://raw.githubusercontent.com/DavisTownsend/Jupyter-Widget-Interactive-Testing/master/requirements.txt /tmp/
RUN mkdir opt/notebooks

RUN apt-get install g++

#RUN conda install --yes --file /home/requirements.txt
RUN conda install bokeh
RUN conda install pip
RUN pip install pip --upgrade
#install requirements file
RUN pip install wheel
RUN pip install twisted
RUN pip install --requirement /tmp/requirements.txt
COPY . /tmp/

ADD https://raw.githubusercontent.com/DavisTownsend/Jupyter-Widget-Interactive-Testing/master/notebooks/test_render.ipynb opt/notebooks

#EXPOSE 8888
#CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='demo'"]
#CMD jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 /notebooks
