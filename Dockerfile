FROM continuumio/anaconda3

ADD Jupyter-Widget-Interactive-Testing/requirements.txt
RUN pip install -r requirements.txt

ADD Jupyter-Widget-Interactive-Testing/notebooks/test_render.ipynb
EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='demo'"]
