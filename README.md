# Saltstack + Docker

## Why do this? What's this for?

I have found that using [salt-ssh](https://docs.saltstack.com/en/latest/topics/ssh/) or "agentless management" to configure machines to be effective, powerful, and useful.

I use a Mac as my main coding machine, and my servers run Ubuntu. Managing versions of saltstack and it's dependencies can be tricky and installing staltstack globally on my Mac just adds more clutter (maybe if I could install saltstack via homebrew I'd feel differently).

Docker is great at packaging up an application and all its dependences. With Docker's native [MacOS app](https://docs.docker.com/docker-for-mac/install/) getting going with Docker is very easy.

