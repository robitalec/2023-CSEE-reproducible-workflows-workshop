# 2023-CSEE-reproducible-workflows-workshop
Developing a reproducible workflow in R using functions, targets and renv


## Data

Example data for this workshop is borrowed from the Palmer Long-Term Ecological Research (LTER). Here is the study description from the [Palmer LTER site](https://pallter.marine.rutgers.edu/):

>  The Palmer Long-Term Ecological Research (LTER) study area is located to the west of the Antarctic Peninsula extending South and North of the Palmer Basin from onshore to several hundred kilometers off shore. Palmer Station is one of the three United States research stations located in Antarctica. It is on Anvers Island midway down the Antarctic Peninsula at latitude 64.7 South, longitude 64.0 West.

> The Palmer LTER studies a polar marine biome with research focused on the Antarctic pelagic marine ecosystem, including sea ice habitats, regional oceanography and terrestrial nesting sites of seabird predators. The Palmer LTER is one of more than 26 LTER research sites located throughout the United States, Puerto Rico and Tahiti; each focused on a specific ecosystem, that together constitute the LTER Network.

We gratefully acknowledge the Palmer LTER for releasing data freely and openly for diverse uses - in our case for training analytical skills of researchers in ecology.  

### Penguins

The first dataset is already available in a cleaned format in R, through the [`palmerpenguins` R package](https://allisonhorst.github.io/palmerpenguins/). It contains data for 344 penguins, with the following variables:

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

The following datasets are available directly from the [Palmer LTER Data Catalog](https://pallter.marine.rutgers.edu/catalog/edi/). The second dataset contains monthly averaged weather timeseries from Palmer Station, Antarctica, with the following variables: 

- Date  
- Year  
- Month  
- Average Temperature  
- Temperature Count  
- Average Pressure  
- Pressure Count  
- Average Melted Precipitation  
- Precipitation Count  

Link to data package summary: https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-pal.189.8

Link to data package metadata: https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-pal.189.8

Link to data (CSV): https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.189.8&entityid=ab357b4c92531a07d98ff1c4f4809a1e
