FROM swift:latest
WORKDIR /root
COPY . .
CMD swift ./main.swift
