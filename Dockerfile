
FROM rapidsai/rapidsai:21.12-cuda11.5-base-ubuntu20.04-py3.8

ARG CODE_DIR
WORKDIR $CODE_DIR

ADD requirements.txt .
RUN source activate rapids && pip install -r requirements.txt --extra-index-url https://download.pytorch.org/whl/cu113
