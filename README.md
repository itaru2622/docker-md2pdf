# docker container of md2pdf

original md2pdf is https://github.com/simonhaenisch/md-to-pdf

## usage

original md-to-pdf uses chome as converter engine, then it needs DISPLAY env with --privileged option to execute it from docker.

```bash
docker run -it  -e DISPLAY=${DISPLAY} --privileged -v ${PWD}:${PWD} -w ${PWD} itaru2622/md2pdf:bookworm anyMarkdown.md
```
