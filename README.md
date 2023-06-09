# Reproducible workflows workshop

Workshop at [CSEE 2023](https://www.beepeg2023.ca/): developing a reproducible workflow in R using functions, {targets} and {renv}

Developed and delivered by:

- Alec L. Robitaille (Memorial University of Newfoundland and Labrador)
- Isabella C. Richmond (Concordia University)


## Schedule

Projects

-   Directories
-   READMEs
-   RStudio Projects

*Short break*

Functions

-   Introduction
-   Recommended approach
-   Checks
-   Options

*Lunch break*

{targets}

-   Introduction
-   Writing workflows
-   Visualizing
-   Running workflows
-   Extensions

*Short break*

{renv} + {conflicted}

-   Saving package versions
-   Checking conflicts


## Learning goals

Overall

-   Approach analyses in a more holistic way (whole project vs script by script)
-   Share data across projects and software versions with minimal stress 
-   Use workflows that reduce analysis errors and mental load

Section 1: Projects

-   Construct a RStudio project that is thoroughly documented using file structure and data management best practices
-   Use RStudio projects to effectively share their own work, and use other people's

Section 2: Functions

-   Read and understand structure of functions in R
-   Refactor code into functions that do one thing
-   Add tests and checks to ensure functions work and error when expected
-   Recognize the value of functions as chunks of code that are reusable and easier to debug

Section 3: Workflows

-   (For a given project) map out relationships between inputs, outputs and analysis steps
-   Identify discrete chunks/steps and write corresponding (or use available) functions 
-   Execute a workflow in {targets} that reads in data, performs a function, and saves an output
-   Recognize the value of workflows for reducing mental load and improving efficiency

Section 4: Reproducibility/Longevity

-   Use {renv} to preserve current package versions to ensure the environment is reproducible, portable and isolated
-   Use {conflicted} to detect conflicting function names

## Data

Example data for this workshop is borrowed from the Palmer Long-Term Ecological Research (LTER). Here is the study description from the [Palmer LTER site](https://pallter.marine.rutgers.edu/):

>  The Palmer Long-Term Ecological Research (LTER) study area is located to the west of the Antarctic Peninsula extending South and North of the Palmer Basin from onshore to several hundred kilometers off shore. Palmer Station is one of the three United States research stations located in Antarctica. It is on Anvers Island midway down the Antarctic Peninsula at latitude 64.7 South, longitude 64.0 West.

> The Palmer LTER studies a polar marine biome with research focused on the Antarctic pelagic marine ecosystem, including sea ice habitats, regional oceanography and terrestrial nesting sites of seabird predators. The Palmer LTER is one of more than 26 LTER research sites located throughout the United States, Puerto Rico and Tahiti; each focused on a specific ecosystem, that together constitute the LTER Network.

We gratefully acknowledge the Palmer LTER for releasing data freely and openly for diverse uses - in our case for training analytical skills of researchers in ecology.  


### Penguins

The first dataset is already available in R through the [`palmerpenguins` R package](https://allisonhorst.github.io/palmerpenguins/). There is a raw version and a cleaned version. They contain data for 344 penguins, with the following variables (cleaned version):

- species
- island
- bill_length_mm
- bill_depth_mm
- flipper_length_mm
- body_mass_g
- sex
- year

1. Download and load the `palmerpenguins` package
1. Load the `penguins` and `penguins_raw`datasets
1. Compare and contrast the two datasets
    - variables
    - variable names
    - dimensions (number of rows and columns)
    - factor levels



### Weather timeseries

The following datasets are available directly from the [Palmer LTER Data Catalog](https://pallter.marine.rutgers.edu/catalog/edi/). To download the data to the `raw-data/` directory, run the function `download_example_data()` (`R/download_example_data.R`). 

This second dataset contains monthly averaged weather timeseries from Palmer Station, Antarctica, with the following variables: 

- Date  
- Year  
- Month  
- Average Temperature  
- Temperature Count  
- Average Pressure  
- Pressure Count  
- Average Melted Precipitation  
- Precipitation Count  

[Data package summary](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-pal.189.8)

[Data package metadata](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-pal.189.8)

Link to data (CSV): 

[https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.189.8&entityid=ab357b4c92531a07d98ff1c4f4809a1e](https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.189.8&entityid=ab357b4c92531a07d98ff1c4f4809a1e)


1. Load dataset directly using URL 
1. Use the `janitor` package to make clean column names
1. Summarize the dataset
1. Make a few exploratory plots
1. Read the data package metadata and note the specific definitions of each variable


### Monthly sea ice area

The third dataset contains monthly sea ice area from the region around the Palmer Station, Antarctica, with the following variables:

- Year
- Month
- Area

Note: this data is formatted with months as columns, years as rows, and cells filled with the corresponding area. 


[Data package summary](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-pal.34.7)

[Data package metadata](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-pal.34.7)

Link to data (TXT): 

[https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.34.7&entityid=0fccb4e99aaa0c0cc85c23284288ec81](https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.34.7&entityid=0fccb4e99aaa0c0cc85c23284288ec81)


1. Use the function `readLines` to look at the top 20 lines of the data
    - Where does the data start?
    - Is there a header row with column names?
1. Read the data as a data.frame
1. Restructure the data so each row represents a value of area for a single month in a year
1. Summarize the dataset
1. Make a few exploratory plots


### Adelie penguin adult and chick counts

The fourth dataset contains Adelie penguin adult and chick counts

- studyName  
- Date GMT  
- Time GMT  
- Island  
- Colony  
- Adults  
- Chicks

[Data package summary](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-pal.88.8)

[Data package metadata](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-pal.88.8)

Link to data (CSV): 

[https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.88.8&entityid=b4062890db09a72628786650dacfbf1f](https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.88.8&entityid=b4062890db09a72628786650dacfbf1f)


1. Load dataset directly using URL
1. Use the `janitor` package to make clean column names
1. Summarize the dataset
1. Make a few exploratory plots
1. Read the data package metadata and note the specific definitions of each variable

