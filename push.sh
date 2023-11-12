#!/bin/bash
docker login
docker compose build
docker compose push
docker logout