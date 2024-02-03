# STcorr
An IDL code for image based normalization of lapse-rate and illumination effects on nighttime TIR imagery

STcorr is an Interactive Data Language (IDL) code for the correction of altitude, aspect and slope effects in nighttime thermal imagery using image based polynomial regression analysis. Standard ASTER (Advanced Spaceborne Thermal Emission and Reflection Radiometer) Surface Kinetic Temperature (ST) image and Digital Elevation Model (DEM) are used to calculate a lapse rate model. Upon the retrieval of lapse rate, an illumination correction is performed based on the relationship between the corrected image and the aspect and slope images, interactive and “step by step” structure of the code permit user to improve the quality of the output.

# Citation
If you are using this code for academic research or publications and/or reports, please cite STcorr as:

Ulusoy İ, Labazuy P, Aydar E. 2012. STcorr: An IDL code for image based normalization of lapse rate and illumination effects on nighttime TIR imagery. Computers & Geosciences, 43: 63-72. https://doi.org/10.1016/j.cageo.2012.02.012

_______________________________________________________________________________________________________
-------------------------------------------------------------------------------------------------------

For details refer to the published paper in Computers and Geosciences titled:

STcorr: An IDL code for image based normalization of lapse rate and illumination effects on nighttime TIR imagery

Inan Ulusoy (1,*), Philippe Labazuy (2), Erkan Aydar (1)

(1) Hacettepe Univ. Dept. of Geological Engineering, 06532, Beytepe-Ankara, Turkey
(2) Univ. Blaise Pascal, Lab. Magmas et Volcans - UMR-6524 CNRS, 5 rue Kessler,
	 63038 Clermont Ferrand Cedex, France

* e-mail: inan@hacettepe.edu.tr
* second e-mail: inanulusoy@yahoo.com

_______________________________________________________________________________________________________
-------------------------------------------------------------------------------------------------------
# Repository

	STcorr is an IDL code to perform an image based polynomial regression analysis
approach for the correction of altitude and aspect effects in nighttime thermal imagery
It uses Surface Kinetic Temperature (ST) image and Digital Elevation Model (DEM) to
create a thermal gradient model. After the retrieval of thermal gradient, depending on
the relationship between corrected image and the aspect image and the slope image an
illumination correction is performed.

-------------------------------------------------------------------------------------------------------
_______________________________________________________________________________________________________


Additional data:

No Folder\file					:Explanation
-- ---------------				-------------------------------------------------------
1. code\STcorr.pro				:IDL sourcecode
2. code\STcorr.sav				:standalone IDL runtime program

3. test_data\Nemrut_01_ASTER_TIR.tif		:sample ASTER Surface Kinetic temperature image
4. test_data\Nemrut_01_ASTER_TIR.twf		:header file of ASTER Surface Kinetic temperature image
5. test_data\Nemrut_02_DEM.tif			:sample Digital Elevation Model
6. test_data\Nemrut_02_DEM.twf			:header file of Digital Elevation Model
7. test_data\Nemrut_03_aspect.tif		:sample Aspect image
8. test_data\Nemrut_03_aspect.twf		:header file of Aspect image

Note that test-data are GeoTiff files bearing georeferencing info. Ordinary image viewers may not open
these files.

9. test_output\	01_alt_temp_graph.tif		:output file generated by STcorr
10. test_output\ 02_thermal_gradient_image.tif	:output file generated by STcorr
11. test_output\ 03_equation_polynomial_01.txt	:output file generated by STcorr
12. test_output\ 04_aspect_temp_graph.tif	:output file generated by STcorr
13. test_output\ 05_aspect_gradient_image.tif	:output file generated by STcorr
14. test_output\ 06_equation_polynomial_02.txt	:output file generated by STcorr
15. test_output\ 07_slope_temp_graph.tif	:output file generated by STcorr
16. test_output\ 08_slope_gradient_image.tif	:output file generated by STcorr
17. test_output\ 09_equation_polynomial_02.txt	:output file generated by STcorr
18. test_output\ 10_Altitude_corrected_ASTER_ST_image.tif	:output file generated by STcorr
19. test_output\ 11_Aspect_corrected_ASTER_ST_image.tif		:output file generated by STcorr
20. test_output\ 12_Slope_corrected_ASTER_ST_image.tif		:output file generated by STcorr

21. root\STcorr_guide.doc			:short user guide for STcorr

22. root\ReadMe_ulusoy_STcorr			:this file
