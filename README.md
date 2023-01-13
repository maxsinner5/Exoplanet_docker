# Exoplanet graph - A Docker project

This Rmarkdown file is a guide to producing a graph highlighting a very intersting aspect of exoplanet discoveries, which I willnot share in advance, but at hich one you might marvel at when you see it. Maybe you won't find it interesting, then maybe you are not really into it. At least, the graph will be generated using the beautiful r-package called **ggplot2**.

As prerequisites to run this exoplanet-graph producing docker container are the following:

1) Having *git* installed;

2) And having *Docker* installed.

For now, these are the only needed software tools that I am aware of. Maybe it won't run on M1-based Macs, but this could be addressed later on.

In order to produce the plot, you will net to do the following: open a terminal session and run:

1) git clone .........

This step downloads the needed resources to build the Docker image.
The next step will be to maneuver into the **docker** folder:

2) cd docker

and then you will run the following command:

3) docker build -t whateveryouwanttocalltheimage .

After some time, it (hopefully) will say something like: whateveryouwanttocalltheimage:latest sucessfully build.

Now finally, a last command will be needed to generate the graph in the Docker container and copy it to you local machine to marvel at it. This will be done using the following command:

4) docker run --rm --name whateveryouwanttocalltheimage_container -v /your/path/to/a/folder/to/store/graph:/output/ whateveryouwanttocalltheimage

This command runs the desired commands inside the Dockerfile. It first it uses the rocker/r-ver:4.1.2 as baseline image, then installs devtools and ggplot2 as inital packages into the r-session.
Next, devtools is used to download the package which I build to generate a simpler version of an exoplanet dataset. This package thus allows for bit-by-bit digestion of information on exoplanets, and is used to generate a neat plot. After that, two directories are created:

1) /code, which will contain the script for the plot

2) /output, which will contain the generated graph, which will then be copied (see docker run ... command) to the local machine on which the Docker container has been running. 

After the directories are set up, the r-script "exo_planet_graph.R" will be copied to the /code directory in the container, and is finally run by the last command in the **Dockerfile** which tells it to run the r-script.

If any issues come up, let me know via email on the adresse: max.sinner.001@student.uni.lu.
