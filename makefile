.PHONY: all clean data_prep analysis

# All target to run both data preparation and analysis
all: data_prep analysis

# Target to run the makefile in the Data Preparation folder
data_prep:
	make -C SRC/"Data Preparation"

# Target to run the makefile in the Analysis folder
analysis:
	make -C SRC/Analysis

# Clean target to clean both folders
clean:
	make -C SRC/"Data Preparation" clean
	make -C SRC/Analysis clean
