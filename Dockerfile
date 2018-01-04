FROM continuumio/anaconda3
ADD https://github.com/DavisTownsend/Jupyter-Widget-Interactive-Testing/blob/master/requirements.txt /home
RUN conda install --yes --file /home/requirements.txt
ADD https://github.com/DavisTownsend/Jupyter-Widget-Interactive-Testing/blob/master/notebooks/test_render.ipynb /home
EXPOSE 8888
CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='demo'"]
