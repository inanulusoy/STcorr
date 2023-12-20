# STcorr
An IDL code for image based normalization of lapse-rate and illumination effects on nighttime TIR imagery

STcorr is an Interactive Data Language (IDL) code for the correction of altitude, aspect and slope effects in nighttime thermal imagery using image based polynomial regression analysis. Standard ASTER (Advanced Spaceborne Thermal Emission and Reflection Radiometer) Surface Kinetic Temperature (ST) image and Digital Elevation Model (DEM) are used to calculate a lapse rate model. Upon the retrieval of lapse rate, an illumination correction is performed based on the relationship between the corrected image and the aspect and slope images, interactive and “step by step” structure of the code permit user to improve the quality of the output.
