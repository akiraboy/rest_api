FROM ubuntu
COPY rest_api .
EXPOSE 8080
CMD ["./rest_api"]
