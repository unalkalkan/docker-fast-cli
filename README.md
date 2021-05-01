# Docker fast-cli

Docker image for the **fast-cli** tool. https://github.com/sindresorhus/fast-cli

## Run the container

Run without any options. This will run the command specified in `CMD` in the `Dockerfile`.

    docker run -it --rm --name fast-cli fast-cli:latest

If you want to run with some specific options, provide the full command.

    docker run -it --rm --name fast-cli fast-cli:latest fast --upload

## Build image

In case you want to build your own image based on another base image, you might have to install some more dependencies for **Chrome**. If there is an error for missing libraries, you can run the following command to see what is all missing.

    # ldd node_modules/puppeteer/.local-chromium/linux-686378/chrome-linux/chrome | grep not
