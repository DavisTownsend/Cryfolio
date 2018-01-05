FROM continuumio/anaconda3
ADD https://raw.githubusercontent.com/DavisTownsend/Jupyter-Widget-Interactive-Testing/master/requirements.txt /home
#RUN conda install --yes --file /home/requirements.txt
RUN conda install bokeh
RUN conda install pip
RUN RUN pip install -r /home/requirements.txt
ADD https://raw.githubusercontent.com/DavisTownsend/Jupyter-Widget-Interactive-Testing/master/notebooks/test_render.ipynb /home
EXPOSE 8888
CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='demo'"]
