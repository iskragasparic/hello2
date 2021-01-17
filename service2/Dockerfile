FROM python:latest

RUN pip install requests

RUN curl -sL https://github.com/openfaas/faas/releases/download/0.9.14/fwatchdog > /usr/bin/fwatchdog \
    && chmod +x /usr/bin/fwatchdog
	
#curl is a command for transferring data with URLs
#-sL???

COPY entrypoint.py /


ENV fprocess="python entrypoint.py"
#fprocess = command you want to run

EXPOSE 8080
CMD [ "fwatchdog" ]