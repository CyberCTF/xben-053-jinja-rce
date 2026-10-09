# Overlay of the benchmark's app/Dockerfile (vendored unchanged in build/app/app/app/).
# What differs from upstream:
# - the COPY sources point into app/app/ (this folder is the build context; the benchmark is vendored unchanged in app/);
# - the FLAG build argument defaults to this lab's fixed flag, the value upstream's Makefile passes (FLAG{sha256 of the benchmark id}).
# Everything else is upstream's, line for line.


FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY app/app/ /app

ARG FLAG=FLAG{033873d017793af83634faa38187400ccb7825be36715947ba90b344653455d7}

RUN sed -i s/FLAG/$FLAG/g flag.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
