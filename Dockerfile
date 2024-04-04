ARG base=node:18-bookworm
FROM ${base}
ARG base

RUN apt update; apt install -y task-gnome-desktop
RUN yarn global add md-to-pdf

USER node
RUN npx puppeteer browsers install chrome
ENTRYPOINT ["md2pdf"]

# usage:
# docker run -it  -v ${PWD}:${PWD} -w ${PWD} -e DISPLAY=${DISPLAY} --privileged itaru2622/md2pdf:bookworm anyMarkdown.md
