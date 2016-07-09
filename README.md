# Steps to Deploy:

0. Make sure you have Docker installed and connected to a host. This means that the command `docker info` should return something sensible, indicating that it's connected to the host.

0. Clone the Wyvern repository into the current directory. Something like `git clone git@github.com:wyvernlang/wyvern.git` should do the trick.
0. Run `docker build .` Collect the image ID that is output from this command (it should be a SHA of sizeable length). Also, do note that the dot in `docker build .` **must** be present. The dot tells Docker where to find the `Dockerfile` to build the container from.
0. Run the container. You can do that by running `docker run -d 4444:4444 <SHA>`, where `<SHA>` is the image ID from your last command. Collect the container ID that is output (also a sizeable SHA).
0. Navigate to the IP address of your host. For example, if my host is my computer, I'd go to `localhost:4444/` in the browser. Don't forget to include the port mapping (4444) in the URI.
