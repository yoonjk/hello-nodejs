# Using Containerfile as default
podman stop hello
podman rm hello
podman build -t hello . 

