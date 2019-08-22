FROM node:11-alpine AS base

FROM node:11-alpine AS dev

RUN apk add --update make