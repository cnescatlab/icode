# Docker image for i-Code CNES

This project aims to provide a simple Docker image to encapsulate and run an [i-Code CNES](https://github.com/cnescatlab/i-CodeCNES) analysis through Docker.

### Run i-Code CNES

#### Get latest image
Images are now hosted directly on GitHub:
```Dockerfile
docker pull ghcr.io/cnescatlab/icode:latest
```

#### Run core checks
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/src cnescatlab/icode:latest icode -f xml -o report.xml .
```

### Versions matrix
Here is the versions matrix of the image:

|                                     TAG                                    |                       I-CODE VERSION                         |                        BASE IMAGE                      |
|:--------------------------------------------------------------------------:|:------------------------------------------------------------:|:------------------------------------------------------:|
| [latest](https://github.com/cnescatlab/icode/pkgs/container/icode/4.1.0)   | [4.1.0](https://github.com/cnescatlab/i-CodeCNES/releases/tag/v4.0.0) | [openjdk:8u322-slim-buster](https://hub.docker.com/_/openjdk) |
|  [4.1.0](https://github.com/cnescatlab/icode/pkgs/container/icode/4.1.0)   | [4.1.0](https://github.com/cnescatlab/i-CodeCNES/releases/tag/v4.1.0) | [openjdk:8u322-slim-buster](https://hub.docker.com/_/openjdk) |

### How to contribute
If you experienced a problem with the plugin please open an issue. Inside this issue please explain us how to reproduce this issue and paste the log.

If you want to do a PR, please put inside of it the reason of this pull request. If this pull request fix an issue please insert the number of the issue or explain inside of the PR how to reproduce this issue.

### License
Copyright 2022 CNES CatLab.

Licensed under the [GNU General Public License, Version 3.0](https://www.gnu.org/licenses/gpl.txt)
