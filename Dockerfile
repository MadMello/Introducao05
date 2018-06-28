FROM python:3
RUN useradd sistemas
RUN mkhomedir_helper sistemas
WORKDIR "/home/sistemas/"
COPY ["bomdia.py", "."]
USER sistemas
ENV NOME="mateusmello_lucasveloso"
ENTRYPOINT ["python"]
CMD ["bomdia.py"]
