;
; IDL Widget Interface Procedures. This Code is automatically
;     generated and should not be modified.

;
; Generated on:	02/20/2009 14:26.36
;
pro WID_BASE_0_event, Event

  wTarget = (widget_info(Event.id,/NAME) eq 'TREE' ?  $
      widget_info(Event.id, /tree_root) : event.id)


  wWidget =  Event.top

  case wTarget of

    Widget_Info(wWidget, FIND_BY_UNAME='WID_BASE_0'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_CONTEXT' )then $
        openSlopefile, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_0'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        openSTfile, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_1'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        openDEMfile, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_2'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        openAspectfile, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_4'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        draw_asp_temp_graph, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_3'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        draw_alt_temp_graph, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_5'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        Alt_temp_poly_fit, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_DROPLIST_0'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_DROPLIST' )then $
        poly_1_degree, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_DROPLIST_1'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_DROPLIST' )then $
        poly_2_degree, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_6'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        Asp_temp_poly_fit, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_8'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        gen_asp_corr_image, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_7'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        gen_alt_corr_image, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_13'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        close_windows, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_14'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        imageMasking, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_15'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        openSlopefile, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_18'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        gen_slp_corr_image, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_19'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        Slp_temp_poly_fit, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_DROPLIST_2'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_DROPLIST' )then $
        poly_3_degree, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_20'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        draw_slp_temp_graph, Event
    end
    Widget_Info(wWidget, FIND_BY_UNAME='WID_BUTTON_22'): begin
      if( Tag_Names(Event, /STRUCTURE_NAME) eq 'WIDGET_BUTTON' )then $
        svmenu
    end
    else:
  endcase

end

pro WID_BASE_0, GROUP_LEADER=wGroup, _EXTRA=_VWBExtra_

common wid, wid_button_3
common wid2, wid_button_4
common wid3, wid_droplist_0
common wid4, wid_button_5
common wid5, wid_button_7
common wid8, wid_droplist_1
common wid9, wid_button_6
common wid10, wid_button_8
common wid13, wid_button_13
common wid14, wid_button_14
common wid15, wid_button_15
common wid16, wid_droplist_2
common wid17, wid_button_19
common wid18, wid_button_20
common wid19, wid_button_18
common wid_15, wid_text_0
common wid24, wid_button_22

  Resolve_Routine, 'STcorr_eventcb',/COMPILE_FULL_FILE  ; Load event callback routines

  WID_BASE_0 = Widget_Base( GROUP_LEADER=wGroup, UNAME='WID_BASE_0'  $
      ,SCR_XSIZE=368 ,SCR_YSIZE=388 ,KILL_NOTIFY='on_close'  $
      ,CONTEXT_EVENTS=1 ,TITLE='STcorr' ,SPACE=3 ,XPAD=3 ,YPAD=3  $
      ,TLB_FRAME_ATTR=1)


  WID_BUTTON_0 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_0'  $
      ,XOFFSET=11 ,YOFFSET=11 ,SCR_XSIZE=139 ,SCR_YSIZE=33  $
      ,/ALIGN_CENTER ,VALUE='Open ASTER ST image')


  WID_BUTTON_1 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_1'  $
      ,XOFFSET=11 ,YOFFSET=47 ,SCR_XSIZE=139 ,SCR_YSIZE=33  $
      ,/ALIGN_CENTER ,VALUE='Open DEM')


  WID_BUTTON_2 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_2'  $
      ,XOFFSET=11 ,YOFFSET=83 ,SCR_XSIZE=139 ,SCR_YSIZE=33  $
      ,/ALIGN_CENTER ,VALUE='Open Aspect image')


  WID_BUTTON_4 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_4'  $
      ,XOFFSET=192 ,YOFFSET=124 ,SCR_XSIZE=155 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Aspect vs. Temperature')


  WID_BUTTON_3 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_3'  $
      ,XOFFSET=192 ,YOFFSET=11 ,SCR_XSIZE=155 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Altitude vs. Temperature')


  WID_LABEL_0 = Widget_Label(WID_BASE_0, UNAME='WID_LABEL_0'  $
      ,XOFFSET=217 ,YOFFSET=57 ,/ALIGN_LEFT ,VALUE='. degree')


  WID_BUTTON_5 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_5'  $
      ,XOFFSET=263 ,YOFFSET=47 ,SCR_XSIZE=84 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='polynomial fit')


  WID_DROPLIST_0 = Widget_Droplist(WID_BASE_0, UNAME='WID_DROPLIST_0'  $
      ,XOFFSET=169 ,YOFFSET=54 ,SCR_XSIZE=45 ,SCR_YSIZE=23  $
      ,SENSITIVE=0 ,VALUE=[ '', '1', '2', '3', '4' ])


  WID_DROPLIST_1 = Widget_Droplist(WID_BASE_0, UNAME='WID_DROPLIST_1'  $
      ,XOFFSET=169 ,YOFFSET=167 ,SCR_XSIZE=45 ,SCR_YSIZE=23  $
      ,SENSITIVE=0 ,VALUE=[ '', '1', '2', '3', '4', '5', '6' ])


  WID_LABEL_1 = Widget_Label(WID_BASE_0, UNAME='WID_LABEL_1'  $
      ,XOFFSET=218 ,YOFFSET=170 ,/ALIGN_LEFT ,VALUE='. degree')


  WID_BUTTON_6 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_6'  $
      ,XOFFSET=263 ,YOFFSET=161 ,SCR_XSIZE=84 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='polynomial fit')


  WID_BUTTON_8 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_8'  $
      ,XOFFSET=192 ,YOFFSET=197 ,SCR_XSIZE=155 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Generate Asp. corrected'+ $
      ' image')


  WID_BUTTON_7 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_7'  $
      ,XOFFSET=192 ,YOFFSET=83 ,SCR_XSIZE=155 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Generate Alt. corrected'+ $
      ' image')


  WID_BUTTON_13 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_13'  $
      ,XOFFSET=66 ,YOFFSET=312 ,SCR_XSIZE=84 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Close windows')


  WID_BUTTON_14 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_14'  $
      ,XOFFSET=11 ,YOFFSET=163 ,SCR_XSIZE=139 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Mask images')


  WID_TEXT_0 = Widget_Text(WID_BASE_0, UNAME='WID_TEXT_0' ,XOFFSET=11  $
      ,YOFFSET=206 ,SCR_XSIZE=139 ,SCR_YSIZE=99, /WRAP ,VALUE=[  $
      'STcorr: An IDL code for image based normalization of lapse rate and'+ $
      ' illumination effects on nighttime TIR imagery. Ulusoy,I;Labazuy,P;Aydar,E'+ $
      'Computers & Geosciences'], XSIZE=20, YSIZE=7)


  WID_BUTTON_15 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_15'  $
      ,XOFFSET=11 ,YOFFSET=119 ,SCR_XSIZE=139 ,SCR_YSIZE=33  $
      ,/ALIGN_CENTER ,VALUE='Open Slope image')


  WID_BUTTON_18 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_18'  $
      ,XOFFSET=192 ,YOFFSET=312 ,SCR_XSIZE=155 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Generate Slp. corrected'+ $
      ' image')


  WID_BUTTON_19 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_19'  $
      ,XOFFSET=263 ,YOFFSET=276 ,SCR_XSIZE=84 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='polynomial fit')


  WID_LABEL_2 = Widget_Label(WID_BASE_0, UNAME='WID_LABEL_2'  $
      ,XOFFSET=218 ,YOFFSET=285 ,/ALIGN_LEFT ,VALUE='. degree')


  WID_DROPLIST_2 = Widget_Droplist(WID_BASE_0, UNAME='WID_DROPLIST_2'  $
      ,XOFFSET=169 ,YOFFSET=282 ,SCR_XSIZE=45 ,SCR_YSIZE=23  $
      ,SENSITIVE=0 ,VALUE=[ '', '1', '2', '3', '4' ])


  WID_BUTTON_20 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_20'  $
      ,XOFFSET=192 ,YOFFSET=239 ,SCR_XSIZE=155 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Slope vs. Temperature')


  WID_BUTTON_22 = Widget_Button(WID_BASE_0, UNAME='WID_BUTTON_22'  $
      ,XOFFSET=11 ,YOFFSET=312 ,SCR_XSIZE=52 ,SCR_YSIZE=33  $
      ,SENSITIVE=0 ,/ALIGN_CENTER ,VALUE='Save')

  Widget_Control, /REALIZE, WID_BASE_0

  XManager, 'WID_BASE_0', WID_BASE_0, /NO_BLOCK  ,CLEANUP='on_close'

end
;
; Empty stub procedure used for autoloading.
;
pro STcorr, GROUP_LEADER=wGroup, _EXTRA=_VWBExtra_
  WID_BASE_0, GROUP_LEADER=wGroup, _EXTRA=_VWBExtra_
end

;
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;
;For details refer to the paper submitted to Computers and Geosciences (Elsevier) titled
;
;STcorr: An IDL code for image based normalization of lapse rate and illumination effects on nighttime TIR imagery
;
;Inan Ulusoy (1,*), Philippe Labazuy (2), Erkan Aydar (1)
;
;(1) Hacettepe Univ. Dept. of Geological Engineering, 06532, Beytepe-Ankara, Turkey
;(2) Univ. Blaise Pascal, OPGC, Lab. Magmas et Volcans - UMR-6524 CNRS, 5 rue Kessler,
;	 63038 Clermont Ferrand Cedex, France
;
;* e-mail: inan@hacettepe.edu.tr
;* second e-mail: inanulusoy@yahoo.com
;
;-----------------------------------------------------------------
;
;	STcorr is an IDL code to perform an image based polynomial regression analysis
;approach for the correction of altitude, aspect and slope effects in nighttime thermal imagery
;It uses Surface Kinetic Temperature (ST) image and Digital Elevation Model (DEM) to
;create a lapse rate model. After the retrieval of lapse rate effect, depending on
;the relationship between corrected image and the aspect image. Later on, depending on
;the relationship between aspect-corrected image and the slope image an illumination
;correction is performed.
;
;-----------------------------------------------------------------
;-----------------------------------------------------------------


;
; IDL Event Callback Procedures
; STcorr_eventcb
;
; Generated on:	14/02/2007 17:43.47
;
;
;-----------------------------------------------------------------
;Open ASTER ST file
;-----------------------------------------------------------------
pro openSTfile, Event

common paylas, asterSTimage
common derin, DEMimage
common des, aspectimage
common egim, slopeimage
common wid, wid_button_3
common siz, asterSTsize
common koor, geo
common wid14, wid_button_14
common mask0, imgmask

	;selecting and reading ST image

	filters = [['*.tiff;*.tif', '*.*'], $
           ['GeoTIFF; TIFF', 'All files']]

	asterSTfile = DIALOG_PICKFILE(/READ, TITLE = 'Please select ASTER ST file', FILTER = filters)
	asterSTquery = QUERY_TIFF(asterSTfile, asterSTinfo)

  if n_elements(asterSTinfo) gt 0 then begin $

	asterSTsize = asterSTinfo.dimensions
	asterSTimage = READ_TIFF (asterSTfile, geotiff=geo)

	;to release altitude-temperature graph button and mask button

	if n_elements(asterSTimage) gt 1 and $
		n_elements(demimage) gt 1 and $
		 n_elements(aspectimage) gt 1 and $
		  n_elements(slopeimage) gt 1 then begin $
		   widget_control, WID_BUTTON_3, SENSITIVE=1
		    widget_control, WID_BUTTON_14, SENSITIVE=1

	end

	;display ST image

		WINDOW, 0, XPOS=370, YPOS=0, $
		XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
		TITLE = 'Aster Surface Temperature Image'

		device, decompose=0, CURSOR_STANDARD = 32512
		LOADCT, 33
		TVSCL, asterSTimage, /order, /nan

  end

 ;define initial mask variable

 imgmask = 0

end



;-----------------------------------------------------------------
;Open DEM file
;-----------------------------------------------------------------
pro openDEMfile, Event

common derin, DEMimage
common paylas, asterSTimage
common des, aspectimage
common egim, slopeimage
common wid, wid_button_3
common wid2, wid_button_4
common wid14, wid_button_14


	;selecting and reading DEM
	filters = [['*.tiff;*.tif',  '*.*'], $
           ['TIFF', 'All files']]

	DEMfile = DIALOG_PICKFILE(/READ, TITLE = 'Please select the DEM file', FILTER = filters)
	DEMquery = QUERY_TIFF(DEMfile, DEMinfo)

if n_elements(DEMinfo) gt 0 then begin $

		DEMsize = DEMinfo.dimensions
	DEMimage = READ_TIFF (DEMfile)

	;to release altitude-temperature graph button and mask button

	if n_elements(asterSTimage) gt 1 and $
		n_elements(demimage) gt 1 and $
		 n_elements(aspectimage) gt 1 and $
		  n_elements(slopeimage) gt 1 then begin $
		   widget_control, WID_BUTTON_3, SENSITIVE=1
		    widget_control, WID_BUTTON_14, SENSITIVE=1

	end

	;display DEM

		WINDOW, 1, XPOS=400, YPOS=30, $
		XSIZE = DEMsize[0], YSIZE = DEMsize[1], $
		TITLE = 'Digital Elevation Model'

		device, decompose=0
		LOADCT, 0
		TVSCL, DEMimage, /order, /nan

  end

end



;-----------------------------------------------------------------
;Open Aspect file
;-----------------------------------------------------------------
pro openAspectfile, Event

common paylas, asterSTimage
common des, aspectimage
common derin, DEMimage
common egim, slopeimage
common wid2, wid_button_4
common wid, wid_button_3
common wid14, wid_button_14


	;selecting and reading Aspect image

	filters = [['*.tiff;*.tif', '*.*'], $
           ['TIFF', 'All files']]

	aspectfile = DIALOG_PICKFILE(/READ, TITLE = 'Please select the Aspect file', FILTER = filters)
	aspectquery = QUERY_TIFF(aspectfile, aspectinfo)

  if n_elements(aspectinfo) gt 0 then begin $

		aspectsize = aspectinfo.dimensions
	aspectimage = READ_TIFF (aspectfile)

	;to release altitude-temperature graph button and mask button

	if n_elements(asterSTimage) gt 1 and $
		n_elements(demimage) gt 1 and $
		 n_elements(aspectimage) gt 1 and $
		  n_elements(slopeimage) gt 1 then begin $
		   widget_control, WID_BUTTON_3, SENSITIVE=1
		    widget_control, WID_BUTTON_14, SENSITIVE=1

	end

	;display Aspect image

		WINDOW, 2, XPOS=430, YPOS=60, $
		XSIZE = aspectsize[0], YSIZE = aspectsize[1], $
		TITLE = 'Aspect image'

		device, decompose=0
		LOADCT, 1
		TVSCL, aspectimage, /order, /nan

  end

end


;-----------------------------------------------------------------
;Open Slope file
;-----------------------------------------------------------------
pro openSlopefile, Event

common paylas, asterSTimage
common des, aspectimage
common derin, DEMimage
common egim, slopeimage
common wid2, wid_button_4
common wid, wid_button_3
common wid14, wid_button_14


	;selecting and reading Slope image

	filters = [['*.tiff;*.tif', '*.*'], $
           ['TIFF', 'All files']]

	slopefile = DIALOG_PICKFILE(/READ, TITLE = 'Please select the Slope file', FILTER = filters)
	slopequery = QUERY_TIFF(slopefile, slopeinfo)

  if n_elements(slopeinfo) gt 0 then begin $

		slopesize = slopeinfo.dimensions
	slopeimage = READ_TIFF (slopefile)

	;to release altitude-temperature graph button and mask button

	if n_elements(asterSTimage) gt 1 and $
		n_elements(demimage) gt 1 and $
		 n_elements(aspectimage) gt 1 and $
		  n_elements(slopeimage) gt 1 then begin $
		   widget_control, WID_BUTTON_3, SENSITIVE=1
		    widget_control, WID_BUTTON_14, SENSITIVE=1

	end

	;display Slope image

		WINDOW, 3, XPOS=460, YPOS=90, $
		XSIZE = slopesize[0], YSIZE = slopesize[1], $
		TITLE = 'Slope image'

		device, decompose=0
		LOADCT, 4
		TVSCL, slopeimage, /order, /nan

  end

end


;-----------------------------------------------------------------
;Image masking
;-----------------------------------------------------------------
pro imageMasking, Event

common paylas, asterSTimage
common derin, DEMimage
common des, aspectimage
common egim, slopeimage
common mask1, ST_masked_data
common mask2, DEM_masked_data
common mask3, ASP_masked_data
common mask6, SLP_masked_data
common mask0, imgmask
common wid_15, wid_text_0
common mask4, revmask
common mask5, nonzero
common wid, wid_button_3
common siz, asterSTsize

	;activate ST window to select ROI

	;if the windows were closed redisplay them
	device, window_state=winwin
	if winwin(0) eq 0 then begin

		;display STimage
		WINDOW, 0, XPOS=370, YPOS=0, $
		XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
		TITLE = 'Aster Surface Temperature Image'
		device, decompose=0, CURSOR_STANDARD = 32512
		LOADCT, 33
		TVSCL, asterSTimage, /order, /nan

	end

	wshow, 0
	wset, 0

	;create a polygon region object

		oROI = OBJ_NEW('IDLanROI', TYPE=2)

	;print mini-manual

		;text_array
		t1 = 'To create a mask:                '
		t2 = '  * Left mouse button:           '
		t3 = '    Selects points for              '
		t4 = '    polygon region.                 '
		t5 = '                                             '
		t6 = '  * Right mouse button:         '
		t7 = '    Finishes region.'
		ts = t1+t2+t3+t4+t5+t6+t7

		WIDGET_CONTROL, WID_TEXT_0, SET_VALUE=ts

	;user defines roi
	;collect first vertex

		DEVICE, CURSOR_STANDARD = 32515
		CURSOR, xori, yori, /UP, /DEVICE
		oROI->AppendData, xori, yori
		PLOTS, xori, yori, PSYM=1, /DEVICE, color=1

	;continue to collect vertices until right mouse button pressed

		x1 = xori
		y1 = yori
		while !MOUSE.BUTTON ne 4 do begin
   			x0 = x1
   			y0 = y1
   			CURSOR, x1, y1, /UP, /DEVICE
   			PLOTS, [x0,x1], [y0,y1], /DEVICE, color=1
   			oROI->AppendData, x1, y1
		endwhile
			PLOTS, [x1,xori], [y1,yori], /DEVICE, color=1

	;draw region of interest

	DRAW_ROI, oROI, /LINE_FILL, SPACING=0.2, ORIENTATION=45, /DEVICE

		dims = SIZE(asterSTimage, /DIMENSIONS)

	;mask ROI

		maskResult = oROI -> ComputeMask(DIMENSIONS = dims)


		mask = (maskResult GT 0)
		revmask = REVERSE(mask, 2)
		ST_maskimg = asterSTimage * revmask
		DEM_maskimg = DEMimage * revmask
		Asp_maskimg = aspectimage * revmask
		Slp_maskimg = slopeimage * revmask

		zero = WHERE(ST_maskimg eq 0, COMPLEMENT=nonzero)

		ST_masked_data = ST_maskimg[nonzero]
		DEM_masked_data = DEM_maskimg[nonzero]
		ASP_masked_data = Asp_maskimg[nonzero]
		SLP_masked_data = Slp_maskimg[nonzero]

	;display masked images

		WINDOW, 0, XPOS=370, YPOS=0, $
				XSIZE = dims[0], YSIZE = dims[1], $
				TITLE = 'Aster Surface Temperature Image'

			device, decompose=0
			LOADCT, 33
			TVSCL, asterSTimage, /order, /nan

		WINDOW, 1, XPOS=400, YPOS=30, $
				XSIZE = dims[0], YSIZE = dims[1], $
				TITLE = 'Masked Digital Elevation Model'

			device, decompose=0
			LOADCT, 0
			TVSCL, DEM_maskimg, /order, /nan

		WINDOW, 2, XPOS=430, YPOS=60, $
				XSIZE = dims[0], YSIZE = dims[1], $
				TITLE = 'Masked Aspect image'

			device, decompose=0
			LOADCT, 1
			TVSCL, Asp_maskimg, /order, /nan

		WINDOW, 3, XPOS=460, YPOS=90, $
				XSIZE = dims[0], YSIZE = dims[1], $
				TITLE = 'Masked Slope image'

			device, decompose=0
			LOADCT, 4
			TVSCL, Slp_maskimg, /order, /nan

;delete mini-manual
WIDGET_CONTROL, WID_TEXT_0, SET_VALUE=''

;activate mask variable

imgmask = 1

OBJ_DESTROY, [oROI]

DEVICE, CURSOR_STANDARD = 32512

end



;-----------------------------------------------------------------
;Altitude (DEM) vs. Temperature (Aster ST image) graph
;-----------------------------------------------------------------
pro draw_alt_temp_graph, Event

common paylas, asterSTimage
common derin, DEMimage
common wid3, wid_droplist_0
common wid4, wid_button_5
common mask1, ST_masked_data
common mask2, DEM_masked_data
common mask0, imgmask

	;masked procedure control and asignation of proper data

	if (imgmask EQ 1) then begin

		uDEMimage = DEM_masked_data
		uSTimage = ST_masked_data

	endif else begin

		uDEMimage = DEMimage
		uSTimage = asterSTimage

	endelse

;draw graph

TVLCT, savedR, savedG, savedB, /GET
    colorTable = [[savedR],[savedG],[savedB]]

TEK_COLOR

		WINDOW, 4, XPOS=0, YPOS=388, $
			XSIZE = 400, YSIZE = 300, $
			TITLE = 'Altitude vs Temperature', color=3


	plot, uDEMimage, uSTimage, PSYM = 3, $
		XTITLE='Altitude', YTITLE='Temperature', $
		color=5, xstyle=3, ystyle=3, min_value =0.1

TVLCT, colorTable

;release polynomial-degree selection droplist and polynomial fit button

	widget_control, WID_DROPLIST_0, SENSITIVE=1
	widget_control, WID_BUTTON_5, SENSITIVE=1

end



;-----------------------------------------------------------------
;Aspect vs. Temperature anomaly graph
;-----------------------------------------------------------------
pro draw_asp_temp_graph, Event

common des, aspectimage
common act, therm_corr_img
common wid8, wid_droplist_1
common wid9, wid_button_6
common mask3, ASP_masked_data
common mask0, imgmask
common mask4, revmask
common mask5, nonzero

	;masked procedure control and asignation of proper data

	if (imgmask EQ 1) then begin

		uASPimage = ASP_masked_data
		;mask therm_corr_img
		TC_maskimg = therm_corr_img * revmask
		Utherm_corr_data = TC_maskimg[nonzero]

	endif else begin

		uASPimage = aspectimage
		Utherm_corr_data = therm_corr_img

	endelse

;draw graph
TVLCT, savedR, savedG, savedB, /GET
    colorTable = [[savedR],[savedG],[savedB]]

TEK_COLOR

		WINDOW, 5, XPOS=30, YPOS=418, $
			XSIZE = 400, YSIZE = 300, $
			TITLE = 'Aspect vs Alt. Corrected Temperature', color=3


	plot, uASPimage, Utherm_corr_data, PSYM = 3, $
		XTITLE='Aspect', YTITLE='Temperature anomaly', $
		color=3, xstyle=3, ystyle=3

TVLCT, colorTable

;release 2nd polynomial-degree selection droplist and 2nd polynomial fit button

	widget_control, WID_DROPLIST_1, SENSITIVE=1
	widget_control, WID_BUTTON_6, SENSITIVE=1

end

;-----------------------------------------------------------------
;Slope vs. Temperature anomaly graph
;-----------------------------------------------------------------
pro draw_slp_temp_graph, Event

common egim, slopeimage
common asct, asp_therm_corr_img
common wid16, wid_droplist_2
common wid17, wid_button_19
common mask6, SLP_masked_data
common mask0, imgmask
common mask4, revmask
common mask5, nonzero

	;masked procedure control and asignation of proper data

	if (imgmask EQ 1) then begin

		uSLPimage = SLP_masked_data
		;mask asp_therm_corr_img
		ATC_maskimg = asp_therm_corr_img * revmask
		Uasp_therm_corr_data = ATC_maskimg[nonzero]

	endif else begin

		uSLPimage = slopeimage
		Uasp_therm_corr_data = asp_therm_corr_img

	endelse

;draw graph
TVLCT, savedR, savedG, savedB, /GET
    colorTable = [[savedR],[savedG],[savedB]]

TEK_COLOR

		WINDOW, 10, XPOS=60, YPOS=448, $
			XSIZE = 400, YSIZE = 300, $
			TITLE = 'Slope vs Asp. Corrected Temperature', color=3


	plot, uSLPimage, Uasp_therm_corr_data, PSYM = 3, $
		XTITLE='Slope', YTITLE='Temperature anomaly', $
		color=6, xstyle=3, ystyle=3

TVLCT, colorTable

;release 3rd polynomial-degree selection droplist and 3rd polynomial fit button

	widget_control, WID_DROPLIST_2, SENSITIVE=1
	widget_control, WID_BUTTON_19, SENSITIVE=1
end

;-----------------------------------------------------------------
;set polynomial fit degree defined in droplist as variable
;(for altitude correction)
;-----------------------------------------------------------------
pro poly_1_degree, Event

common degree, secim

secim = 0

WIDGET_CONTROL, event.id

secim = event.index


end



;-----------------------------------------------------------------
;Regression for Altitude vs. Temperature graph
;-----------------------------------------------------------------
pro Alt_temp_poly_fit, Event

common paylas, asterSTimage
common derin, DEMimage
common degree, secim
common siz, asterSTsize
common wid5, wid_button_7
common poly1, thermgrad
common poly11, fit1
common poly111, fit_alt_temp
common poly1111, kontrol
common mask1, ST_masked_data
common mask2, DEM_masked_data
common mask0, imgmask
common wid_15, wid_text_0
common wid24, wid_button_22

	;masked procedure control and asignation of proper data

	if (imgmask EQ 1) then begin

		uDEMimage = DEM_masked_data
		uSTimage = ST_masked_data

	endif else begin

		uDEMimage = DEMimage
		uSTimage = asterSTimage

	endelse

;1st regression

 if n_elements(secim) ne 0 then begin

  	if (secim ne 0) then begin

		num = n_elements(uSTimage)

		fit_alt_temp = poly_fit (uDEMimage, uSTimage, secim, chisq = chi_tot, $
					   yfit=thermgrad, yerror=rmse_alt_temp)

		;goodness of fit statistics
		;Squareroot of Average Absolute Residuals (SAAR)
		therm_corr_img = asterSTimage - thermgrad
		absolute_residuals = ABS(therm_corr_img)
		SAAR = sqrt(total(absolute_residuals)/num)

		;reduce chisq
		DoF = (num-secim-1)
		chisq = chi_tot/DoF

		;more on X^2 if needed: probability test may fit well to small datasets
		;chisq2 = CHISQR_CVF(0.05, DoF)
		;chisq_exp = chisq2/DoF

		;indicate goodness-of-fit statistics
		str_sta = string('Chi-square:', chisq, '    ', 'RMS-error:', rmse_alt_temp, '    ', 'SAAR:', SAAR)
		widget_control, wid_text_0, set_value = str_sta

;replot Altitude vs. Temperature graph

	wshow, 4

		TVLCT, savedR, savedG, savedB, /GET
    		colorTable = [[savedR],[savedG],[savedB]]

		TEK_COLOR

	wset, 4

		plot, uDEMimage, uSTimage, PSYM = 3, $
			XTITLE='Altitude', YTITLE='Temperature', $
			color=5, xstyle=3, ystyle=3

		if secim eq 1 then begin
			fit1 = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage
			kontrol=1
		endif
		if secim eq 2 then begin
			fit1 = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage + fit_alt_temp(0,2) * uDEMimage^2
			kontrol=2
		endif
		if secim eq 3 then begin
			fit1 = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage + fit_alt_temp(0,2) * uDEMimage^2 + fit_alt_temp(0,3) * uDEMimage^3
			kontrol=3
		endif
		if secim eq 4 then begin
			fit1 = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage + fit_alt_temp(0,2) * uDEMimage^2 + fit_alt_temp(0,3) * uDEMimage^3 + fit_alt_temp(0,4) * uDEMimage^4
			kontrol=4
		endif

;display fit on Altitude vs. Temperature graph

		oplot, uDEMimage, fit1, color=2, psym=3

		TVLCT, colorTable

;display lapse rate image

		;reassign uDEMimage (variable) to full scale DEMimage (DEM)
		;if the image is masked and reproduce thermgrad (variable)

			if (imgmask EQ 1) then begin

			  uDEMimage = DEMimage

			  	if secim eq 1 then begin
						thermgrad = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage
					endif
				if secim eq 2 then begin
						thermgrad = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage + fit_alt_temp(0,2) * uDEMimage^2
					endif
				if secim eq 3 then begin
						thermgrad = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage + fit_alt_temp(0,2) * uDEMimage^2 + fit_alt_temp(0,3) * uDEMimage^3
					endif
				if secim eq 4 then begin
						thermgrad = fit_alt_temp(0,0) + fit_alt_temp(0,1) * uDEMimage + fit_alt_temp(0,2) * uDEMimage^2 + fit_alt_temp(0,3) * uDEMimage^3 + fit_alt_temp(0,4) * uDEMimage^4
					endif

			end

		;display lapse rate image

		Window, 6, XPOS=490, YPOS=120, $
			XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
			TITLE = 'Lapse rate image'

			device, decompose=0
			LOADCT, 0
			TVSCL, thermgrad, /order

;release "save" button and "generate altitude corrected image" button

		widget_control, WID_BUTTON_7, SENSITIVE=1
		widget_control, WID_BUTTON_22, SENSITIVE=1

	endif else begin

		result = dialog_message('Select the degree of the polynomial fit')

   	endelse

 endif else begin

	result = dialog_message('Select the degree of the polynomial fit')

 endelse

end



;-----------------------------------------------------------------
;Produce Altitude corrected image
;-----------------------------------------------------------------
pro gen_alt_corr_image, Event

common paylas, asterSTimage
common poly1, thermgrad
common siz, asterSTsize
common wid2, wid_button_4
common act, therm_corr_img
common wid_15, wid_text_0

	WIDGET_CONTROL, WID_TEXT_0, SET_VALUE=''

	;produce image array
	therm_corr_img = asterSTimage - thermgrad

	;display image
	Window, 7, XPOS=520, YPOS=150, $
			XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
			TITLE = 'Altitude corrected thermal anomaly image'

			device, decompose=0
			LOADCT, 33
			TVSCL, therm_corr_img, /order, /nan

;release "save" button and "Aspect vs. Temperature" button

	widget_control, WID_BUTTON_4, SENSITIVE=1

end



;-----------------------------------------------------------------
;set polynomial fit degree defined in droplist as variable
;(for aspect correction)
;-----------------------------------------------------------------

pro poly_2_degree, Event

common degree2, secim2

secim2 = 0

WIDGET_CONTROL, event.id

secim2 = event.index

end



;-----------------------------------------------------------------
;Regression for Aspect vs. Temperature anomaly graph
;-----------------------------------------------------------------
pro Asp_temp_poly_fit, Event

common degree2, secim2
common siz, asterSTsize
common act, therm_corr_img
common des, aspectimage
common wid10, wid_button_8
common poly2, aspgrad
common poly21, fit2
common poly211, fit_asp_temp
common poly2111, kontrol2
common mask3, ASP_masked_data
common mask0, imgmask
common mask4, revmask
common mask5, nonzero
common wid_15, wid_text_0

	;masked procedure control and asignation of proper data

	if (imgmask EQ 1) then begin

		uASPimage = ASP_masked_data
		;mask therm_corr_img
		TC_maskimg = therm_corr_img * revmask
		Utherm_corr_data = TC_maskimg[nonzero]

	endif else begin

		uASPimage = aspectimage
		Utherm_corr_data = therm_corr_img

	endelse
;2nd regression

 if n_elements(secim2) ne 0 then begin

  	if (secim2 ne 0) then begin

		num = n_elements(uASPimage)

		fit_asp_temp = poly_fit (uASPimage, Utherm_corr_data, secim2, chisq = chi_tot, $
						yfit=ASPgrad, yerror=rmse_asp_temp)

		;goodness of fit statistics
		;Squareroot of Average Absolute Residuals (SAAR)
		asp_therm_corr_img = therm_corr_img - aspgrad
		absolute_residuals = ABS(asp_therm_corr_img)
		SAAR = sqrt(total(absolute_residuals)/num)

		;reduce chisq
		DoF = (num-secim2-1)
		chisq = chi_tot/DoF

		;more on X^2 if needed: probability test may fit well to small datasets
		;chisq2 = CHISQR_CVF(0.05, DoF)
		;chisq_exp = chisq2/DoF

		;indicate goodness-of-fit statistics
		str_sta = string('Chi-square:', chisq, '    ', 'RMS-error:', rmse_asp_temp, '    ', 'SAAR:', SAAR)
		widget_control, wid_text_0, set_value = str_sta


;replot Altitude vs. Temperature graph

	wshow, 5

		TVLCT, savedR, savedG, savedB, /GET
    		colorTable = [[savedR],[savedG],[savedB]]

		TEK_COLOR

	wset, 5

		plot, uASPimage, Utherm_corr_data, PSYM = 3, $
			XTITLE='Aspect', YTITLE='Temperature anomaly', $
			color=3, xstyle=3, ystyle=3

		if secim2 eq 1 then begin
			fit2 = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage
			kontrol2=1
		endif
		if secim2 eq 2 then begin
			fit2 = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2
			kontrol2=2
		endif
		if secim2 eq 3 then begin
			fit2 = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3
			kontrol2=3
		endif
		if secim2 eq 4 then begin
			fit2 = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3 + fit_asp_temp(0,4) * uASPimage^4
			kontrol2=4
		endif
		if secim2 eq 5 then begin
			fit2 = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3 + fit_asp_temp(0,4) * uASPimage^4 + fit_asp_temp(0,5) * uASPimage^5
			kontrol2=5
		endif
		if secim2 eq 6 then begin
			fit2 = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3 + fit_asp_temp(0,4) * uASPimage^4 + fit_asp_temp(0,5) * uASPimage^5 + fit_asp_temp(0,6) * uASPimage^6
			kontrol2=6
		endif

;display fit on Aspect vs. Temperature anomaly graph

		oplot, uASPimage, fit2, color=2, psym=3

		TVLCT, colorTable

;display Aspect gradient image

		;reassign uASPimage (variable) to full scale aspectimage (Aspect image)
		;if the image is masked and reproduce ASPgrad (variable)

		if (imgmask EQ 1) then begin

			  uASPimage = aspectimage

			if secim2 eq 1 then begin
					ASPgrad = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage
				endif
			if secim2 eq 2 then begin
					ASPgrad = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2
				endif
			if secim2 eq 3 then begin
					ASPgrad = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3
				endif
			if secim2 eq 4 then begin
					ASPgrad = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3 + fit_asp_temp(0,4) * uASPimage^4
				endif
			if secim2 eq 5 then begin
					ASPgrad = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3 + fit_asp_temp(0,4) * uASPimage^4 + fit_asp_temp(0,5) * uASPimage^5
				endif
			if secim2 eq 6 then begin
					ASPgrad = fit_asp_temp(0,0) + fit_asp_temp(0,1) * uASPimage + fit_asp_temp(0,2) * uASPimage^2 + fit_asp_temp(0,3) * uASPimage^3 + fit_asp_temp(0,4) * uASPimage^4 + fit_asp_temp(0,5) * uASPimage^5 + fit_asp_temp(0,6) * uASPimage^6
				endif

		end

		;display aspect gradient image

		Window, 8, XPOS=550, YPOS=180, $
			XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
			TITLE = 'Aspect gradient image'

			device, decompose=0
			LOADCT, 0
			TVSCL, ASPgrad, /order

;release "save" button and "generate aspect corrected image" button

		widget_control, WID_BUTTON_8, SENSITIVE=1

	endif else begin

		result = dialog_message('Select the degree of the polynomial fit')

   	endelse

 endif else begin

	result = dialog_message('Select the degree of the polynomial fit')

 endelse

end



;-----------------------------------------------------------------
;produce aspect corrected image
;-----------------------------------------------------------------
pro gen_asp_corr_image, Event

common act, therm_corr_img
common asct, asp_therm_corr_img
common poly2, aspgrad
common siz, asterSTsize
common wid13, wid_button_13
common wid18, wid_button_20
common wid_15, wid_text_0


	WIDGET_CONTROL, WID_TEXT_0, SET_VALUE=''

	;produce image array
	asp_therm_corr_img = therm_corr_img - aspgrad

	;display image
	Window, 9, XPOS=580, YPOS=210, $
			XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
			TITLE = 'Aspect corrected thermal anomaly image'

			device, decompose=0
			LOADCT, 33
			TVSCL, asp_therm_corr_img, /order, /nan

;release "save" button, "Slope vs. Temperature" button and "close windows" button

	widget_control, WID_BUTTON_13, SENSITIVE=1
	widget_control, WID_BUTTON_20, SENSITIVE=1


end

;-----------------------------------------------------------------
;set polynomial fit degree defined in droplist as variable
;(for slope correction)
;-----------------------------------------------------------------
pro poly_3_degree, Event

common degree3, secim3

secim3 = 0

WIDGET_CONTROL, event.id

secim3 = event.index

end



;-----------------------------------------------------------------
;Regression for Slope vs. Temperature anomaly graph
;-----------------------------------------------------------------
pro Slp_temp_poly_fit, Event

common asct, asp_therm_corr_img
common egim, slopeimage
common degree3, secim3
common siz, asterSTsize
common wid19, wid_button_18
common poly3, SLPgrad
common poly31, fit3
common poly311, fit_slp_temp
common poly3111, kontrol3
common mask6, SLP_masked_data
common mask0, imgmask
common mask4, revmask
common mask5, nonzero
common wid_15, wid_text_0

	;masked procedure control and asignation of proper data

	if (imgmask EQ 1) then begin

		uSLPimage = SLP_masked_data
		;mask asp_therm_corr_img
		ATC_maskimg = asp_therm_corr_img * revmask
		Uasp_therm_corr_data = ATC_maskimg[nonzero]

	endif else begin

		uSLPimage = slopeimage
		Uasp_therm_corr_data = asp_therm_corr_img

	endelse
;3rd regression

 if n_elements(secim3) ne 0 then begin

  	if (secim3 ne 0) then begin

		num = n_elements(uSLPimage)

		fit_slp_temp = poly_fit (uSLPimage, Uasp_therm_corr_data, secim3, chisq = chi_tot, $
						yfit=SLPgrad, yerror=rmse_slp_temp)

		;goodness of fit statistics
		;Squareroot of Average Absolute Residuals (SAAR)
		slp_therm_corr_img = asp_therm_corr_img - SLPgrad
		absolute_residuals = ABS(slp_therm_corr_img)
		SAAR = sqrt(total(absolute_residuals)/num)

		;reduce chisq
		DoF = (num-secim3-1)
		chisq = chi_tot/DoF

		;more on X^2 if needed: probability test may fit well to small datasets
		;chisq2 = CHISQR_CVF(0.05, DoF)
		;chisq_exp = chisq2/DoF

		;indicate goodness-of-fit statistics
		str_sta = string('Chi-square:', chisq, '    ', 'RMS-error:', rmse_slp_temp, '    ', 'SAAR:', SAAR)
		widget_control, wid_text_0, set_value = str_sta

;replot Slope vs. Temperature graph

	wshow, 10

		TVLCT, savedR, savedG, savedB, /GET
    		colorTable = [[savedR],[savedG],[savedB]]

		TEK_COLOR

	wset, 10

		plot, uSLPimage, Uasp_therm_corr_data, PSYM = 3, $
			XTITLE='Slope', YTITLE='Temperature anomaly', $
			color=6, xstyle=3, ystyle=3

		if secim3 eq 1 then begin
			fit3 = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage
			kontrol3=1
		endif
		if secim3 eq 2 then begin
			fit3 = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage + fit_slp_temp(0,2) * uSLPimage^2
			kontrol3=2
		endif
		if secim3 eq 3 then begin
			fit3 = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage + fit_slp_temp(0,2) * uSLPimage^2 + fit_slp_temp(0,3) * uSLPimage^3
			kontrol3=3
		endif
		if secim3 eq 4 then begin
			fit3 = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage + fit_slp_temp(0,2) * uSLPimage^2 + fit_slp_temp(0,3) * uSLPimage^3 + fit_slp_temp(0,4) * uSLPimage^4
			kontrol3=4
		endif

 ;display fit on Aspect vs. Temperature anomaly graph

		oplot, uSLPimage, fit3, color=2, psym=3

		TVLCT, colorTable

;display Slope gradient image

		;reassign uSLPimage (variable) to full scale slopeimage (Slope image)
		;if the image is masked and reproduce SLPgrad (variable)

		if (imgmask EQ 1) then begin

			  uSLPimage = slopeimage

			if secim3 eq 1 then begin
					SLPgrad = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage
				endif
			if secim3 eq 2 then begin
					SLPgrad = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage + fit_slp_temp(0,2) * uSLPimage^2
				endif
			if secim3 eq 3 then begin
					SLPgrad = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage + fit_slp_temp(0,2) * uSLPimage^2 + fit_slp_temp(0,3) * uSLPimage^3
				endif
			if secim3 eq 4 then begin
					SLPgrad = fit_slp_temp(0,0) + fit_slp_temp(0,1) * uSLPimage + fit_slp_temp(0,2) * uSLPimage^2 + fit_slp_temp(0,3) * uSLPimage^3 + fit_slp_temp(0,4) * uSLPimage^4
				endif

		end

		;display slope gradient image

		Window, 11, XPOS=610, YPOS=240, $
			XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
			TITLE = 'Slope gradient image'

			device, decompose=0
			LOADCT, 0
			TVSCL, SLPgrad, /order

;release "save" button and "generate slope corrected image" button

		widget_control, WID_BUTTON_18, SENSITIVE=1

	endif else begin

		result = dialog_message('Select the degree of the polynomial fit')

   	endelse

 endif else begin

	result = dialog_message('Select the degree of the polynomial fit')

 endelse

end


;-----------------------------------------------------------------
;produce slope corrected image
;-----------------------------------------------------------------
pro gen_slp_corr_image, Event

common slct, slp_therm_corr_img
common asct, asp_therm_corr_img
common poly3, SLPgrad
common siz, asterSTsize
common wid13, wid_button_13
common wid_15, wid_text_0

	WIDGET_CONTROL, WID_TEXT_0, SET_VALUE=''

	;produce image array
	slp_therm_corr_img = asp_therm_corr_img - SLPgrad

	;display image
	Window, 12, XPOS=640, YPOS=270, $
			XSIZE = asterSTsize[0], YSIZE = asterSTsize[1], $
			TITLE = 'Slope corrected thermal anomaly image'

			device, decompose=0
			LOADCT, 33
			TVSCL, slp_therm_corr_img, /order, /nan

;release "save" button and "close windows" button

	widget_control, WID_BUTTON_13, SENSITIVE=1


end



;-----------------------------------------------------------------
;Close windows
;-----------------------------------------------------------------
pro close_windows, Event

common wid2, wid_button_4
common wid4, wid_button_5
common wid9, wid_button_6
common wid5, wid_button_7
common wid10, wid_button_8
common wid13, wid_button_13
common wid17, wid_button_19
common wid18, wid_button_20
common wid19, wid_button_18
common wid3, wid_droplist_0
common wid8, wid_droplist_1
common wid16, wid_droplist_2

	;close open windows
	device, window_state=winwin
	for i=0,13 do begin
		if winwin[i] eq 1 then begin
	  		wdelete, i
		end
	endfor

;relock necessary buttons and droplists

	widget_control, WID_BUTTON_4, SENSITIVE=0
	widget_control, WID_BUTTON_5, SENSITIVE=0
	widget_control, WID_BUTTON_6, SENSITIVE=0
	widget_control, WID_BUTTON_7, SENSITIVE=0
	widget_control, WID_BUTTON_8, SENSITIVE=0
	widget_control, WID_BUTTON_13, SENSITIVE=0
	widget_control, WID_BUTTON_18, SENSITIVE=0
	widget_control, WID_BUTTON_19, SENSITIVE=0
	widget_control, WID_BUTTON_20, SENSITIVE=0
	widget_control, WID_DROPLIST_0, SENSITIVE=0
	widget_control, WID_DROPLIST_1, SENSITIVE=0
	widget_control, WID_DROPLIST_2, SENSITIVE=0


end



;-----------------------------------------------------------------
;Close windows, destroy widget on close
;-----------------------------------------------------------------
pro on_close, Event

device, window_state=winwin
for i=0,13 do begin
	if winwin[i] eq 1 then begin
	  wdelete, i
	end
endfor

end


;-----------------------------------------------------------------
;event callback procedure
;-----------------------------------------------------------------
pro STcorr_eventcb
end


;-----------------------------------------------------------------
;save menu
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;select files to save
;-----------------------------------------------------------------
pro svmenu_event, event

common save_1, sav1
common save_2, sav2
common save_3, sav3
common save_4, sav4
common save_5, sav5
common save_6, sav6
common save_7, sav7
common save_8, sav8
common save_9, sav9
common save_10, sav10
common save_11, sav11
common save_12, sav12

	case event.value of
	'Save Altitude-Temperature Graph': sav1=event.select
	'Save Aspect-Temperature Graph': sav2=event.select
	'Save Slope-Temperature Graph': sav3=event.select
	'Save Altitude-Temperature Poly. Equation': sav4=event.select
	'Save Aspect-Temperature Poly. Equation': sav5=event.select
	'Save Slope-Temperature Poly. Equation': sav6=event.select
	'Save Lapse Rate Image': sav7=event.select
	'Save Aspect Gradient Image': sav8=event.select
	'Save Slope Gradient Image': sav9=event.select
	'Save Altitude Corrected Image': sav10=event.select
	'Save Aspect Corrected Image': sav11=event.select
	'Save Slope Corrected Image': sav12=event.select
	endcase

end


;-----------------------------------------------------------------
;save files
;-----------------------------------------------------------------
pro saveout, event

common save_1, sav1
common save_2, sav2
common save_3, sav3
common save_4, sav4
common save_5, sav5
common save_6, sav6
common save_7, sav7
common save_8, sav8
common save_9, sav9
common save_10, sav10
common save_11, sav11
common save_12, sav12
common wid_base, savbase
common koor, geo
common poly1, thermgrad
common poly111, fit_alt_temp
common poly1111, kontrol
common degree, secim
common poly2, aspgrad
common poly211, fit_asp_temp
common poly2111, kontrol2
common degree2, secim2
common poly3, SLPgrad
common poly311, fit_slp_temp
common poly3111, kontrol3
common degree3, secim3
common act, therm_corr_img
common asct, asp_therm_corr_img
common slct, slp_therm_corr_img

;-----------------------------------------------------------------
;Save Altitude vs. Temperature graph, Lapse rate image
;	and 1st Polynomial fit equation
;-----------------------------------------------------------------


	;-----------
	;write graph
	;-----------

	IF sav1 EQ 1 then begin $

		filters = [['*.tiff; *.tif'], $
        	   ['TIFF; TIF']]

		alt_temp_grf_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Altitude - Temperature graph as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

		if alt_temp_grf_filen ne '' then begin $

			wset, 4

			penc = tvrd(true = 1)
			revpenc = REVERSE(penc, 3)
			write_tiff, alt_temp_grf_filen, revpenc, orientation = 1

		end

	end


	;-----------
	;write image
	;-----------

	IF sav7 EQ 1 then begin $

		filters = [['*.tiff;*.tif', '*.*'], $
        	   ['GeoTIFF; TIFF', 'All files']]

		altcorr_img_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Lapse rate image as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

			if altcorr_img_filen ne '' then begin $

				WRITE_tiff, altcorr_img_filen, thermgrad, geotiff=geo, /float

			end

	end


	;--------------
	;write equation
	;--------------


	IF sav4 EQ 1 then begin $

		filters = [['*.txt', '*.dat'], $
	           ['txt', 'dat']]

		alt_temp_equ_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Altitude - Temperature polynomial fit equation as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='txt')

		if alt_temp_equ_filen ne '' then begin $

			if kontrol eq 1 then begin
				Y = string('y=(',fit_alt_temp(0,0),') + (',fit_alt_temp(0,1),') * X')
			endif
			if kontrol eq 2 then begin
				Y = string('y=(',fit_alt_temp(0,0),') + (',fit_alt_temp(0,1),') * X + (',fit_alt_temp(0,2),') * X^2')
			endif
			if kontrol eq 3 then begin
				Y = string('y=(',fit_alt_temp(0,0),') + (',fit_alt_temp(0,1),') * X + (',fit_alt_temp(0,2),') * X^2 + (',fit_alt_temp(0,3),') * X^3')
			endif
			if kontrol eq 4 then begin
				Y = string('y=(',fit_alt_temp(0,0),') + (',fit_alt_temp(0,1),') * X + (',fit_alt_temp(0,2),') * X^2 + (',fit_alt_temp(0,3),') * X^3 + (',fit_alt_temp(0,4),') * X^4')
			endif
			if kontrol eq 0 or secim eq 0 then begin
				result = dialog_message('Select the degree of the polynomial fit')
			endif else begin

				Yson=strcompress(y, /remove_all)
				Yjoin=strjoin(Yson)
				wid=strlen(Yjoin)
				openW, equ, alt_temp_equ_filen, width=wid+5, /GET_LUN
				printf, equ, Yson
				free_lun, equ

			endelse

		end

	end


;-----------------------------------------------------------------
;Save Aspect vs. Temperature anomaly graph, Aspect gradient image
;	and 2nd Polynomial fit equation
;-----------------------------------------------------------------

	;-----------
	;write graph
	;-----------

	IF sav2 EQ 1 then begin $

		filters = [['*.tiff; *.tif'], $
	           ['TIFF; TIF']]

		asp_temp_grf_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Aspect - Temperature anomaly graph as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

		if asp_temp_grf_filen ne '' then begin $

			wset, 5

			penc2 = tvrd(true = 1)
			revpenc2 = REVERSE(penc2, 3)
			write_tiff, asp_temp_grf_filen, revpenc2, orientation = 1

		end

	end


	;-----------
	;write image
	;-----------

	IF sav8 EQ 1 then begin $

		filters = [['*.tiff;*.tif', '*.*'], $
	           ['GeoTIFF; TIFF', 'All files']]

		aspcorr_img_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Aspect gradient image as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

			if aspcorr_img_filen ne '' then begin $

				WRITE_tiff, aspcorr_img_filen, aspgrad, geotiff=geo, /float

			end
	end

	;--------------
	;write equation
	;--------------

	IF sav5 EQ 1 then begin $

		filters = [['*.txt', '*.dat'], $
	           ['txt', 'dat']]

		asp_temp_equ_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Aspect - Temperature anomaly polynomial fit equation as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='txt')

			if asp_temp_equ_filen ne '' then begin $

				if kontrol2 eq 1 then begin
					Y = string('y=(',fit_asp_temp(0,0),') + (',fit_asp_temp(0,1),') * X')
				endif
				if kontrol2 eq 2 then begin
					Y = string('y=(',fit_asp_temp(0,0),') + (',fit_asp_temp(0,1),') * X + (',fit_asp_temp(0,2),') * X^2')
				endif
				if kontrol2 eq 3 then begin
					Y = string('y=(',fit_asp_temp(0,0),') + (',fit_asp_temp(0,1),') * X + (',fit_asp_temp(0,2),') * X^2 + (',fit_asp_temp(0,3),') * X^3')
				endif
				if kontrol2 eq 4 then begin
					Y = string('y=(',fit_asp_temp(0,0),') + (',fit_asp_temp(0,1),') * X + (',fit_asp_temp(0,2),') * X^2 + (',fit_asp_temp(0,3),') * X^3 + (',fit_asp_temp(0,4),') * X^4')
				endif
				if kontrol2 eq 5 then begin
					Y = string('y=(',fit_asp_temp(0,0),') + (',fit_asp_temp(0,1),') * X + (',fit_asp_temp(0,2),') * X^2 + (',fit_asp_temp(0,3),') * X^3 + (',fit_asp_temp(0,4),') * X^4 + (', fit_asp_temp(0,5), ') * X^5')
				endif
				if kontrol2 eq 6 then begin
					Y = string('y=(',fit_asp_temp(0,0),') + (',fit_asp_temp(0,1),') * X + (',fit_asp_temp(0,2),') * X^2 + (',fit_asp_temp(0,3),') * X^3 + (',fit_asp_temp(0,4),') * X^4 + (', fit_asp_temp(0,5), ') * X^5 + (', fit_asp_temp(0,6), ') * X^6')
				endif
				if kontrol2 eq 0 or secim2 eq 0 then begin
					result = dialog_message('Select the degree of the polynomial fit')
				endif else begin

					Yson=strcompress(y, /remove_all)
					Yjoin=strjoin(Yson)
					wid=strlen(Yjoin)
					openW, equ, asp_temp_equ_filen, width=wid+5, /GET_LUN
					printf, equ, Yjoin
					free_lun, equ

				endelse

			end

	end

;-----------------------------------------------------------------
;Save Slope vs. Temperature anomaly graph, Slope gradient image
;	and 2nd Polynomial fit equation
;-----------------------------------------------------------------

	;-----------
	;write graph
	;-----------

	IF sav3 EQ 1 then begin $

		filters = [['*.tiff; *.tif'], $
	           ['TIFF; TIF']]

		slp_temp_grf_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Slope - Temperature anomaly graph as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

		if slp_temp_grf_filen ne '' then begin $

			wset, 10

			penc3 = tvrd(true = 1)
			revpenc3 = REVERSE(penc3, 3)
			write_tiff, slp_temp_grf_filen, revpenc3, orientation = 1

		end

	end


	;-----------
	;write image
	;-----------

	IF sav9 EQ 1 then begin $

		filters = [['*.tiff;*.tif', '*.*'], $
	           ['GeoTIFF; TIFF', 'All files']]

		slpcorr_img_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Slope gradient image as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

			if slpcorr_img_filen ne '' then begin $

				WRITE_tiff, slpcorr_img_filen, SLPgrad, geotiff=geo, /float

			end

	end

	;--------------
	;write equation
	;--------------

	IF sav6 EQ 1 then begin $

		filters = [['*.txt', '*.dat'], $
	           ['txt', 'dat']]

		slp_temp_equ_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save Slope - Temperature anomaly polynomial fit equation as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='txt')

			if slp_temp_equ_filen ne '' then begin $

				if kontrol3 eq 1 then begin
					Y = string('y=(',fit_slp_temp(0,0),') + (',fit_slp_temp(0,1),') * X')
				endif
				if kontrol3 eq 2 then begin
					Y = string('y=(',fit_slp_temp(0,0),') + (',fit_slp_temp(0,1),') * X + (',fit_slp_temp(0,2),') * X^2')
				endif
				if kontrol3 eq 3 then begin
					Y = string('y=(',fit_slp_temp(0,0),') + (',fit_slp_temp(0,1),') * X + (',fit_slp_temp(0,2),') * X^2 + (',fit_slp_temp(0,3),') * X^3')
				endif
				if kontrol3 eq 4 then begin
					Y = string('y=(',fit_slp_temp(0,0),') + (',fit_slp_temp(0,1),') * X + (',fit_slp_temp(0,2),') * X^2 + (',fit_slp_temp(0,3),') * X^3 + (',fit_slp_temp(0,4),') * X^4')
				endif
				if kontrol3 eq 0 or secim3 eq 0 then begin
					result = dialog_message('Select the degree of the polynomial fit')
				endif else begin

					Yson=strcompress(y, /remove_all)
					Yjoin=strjoin(Yson)
					wid=strlen(Yjoin)
					openW, equ, slp_temp_equ_filen, width=wid+5, /GET_LUN
					printf, equ, Yjoin
					free_lun, equ

				endelse

			end

	end

;-----------------------------------------------------------------
;Save Corrected Images
;-----------------------------------------------------------------

;-----------------------------
;Save Altitude corrected image
;-----------------------------

	IF sav10 EQ 1 then begin $

		filters = [['*.tiff;*.tif', '*.*'], $
	           ['GeoTIFF; TIFF', 'All files']]

		asterSTalt_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save altitude corrected ASTER ST image as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

		if asterSTalt_filen ne '' then begin $

			WRITE_tiff, asterSTalt_filen, therm_corr_img, geotiff=geo, /float

		end

	end

;---------------------------
;Save Aspect corrected image
;---------------------------

	IF sav11 EQ 1 then begin $

		filters = [['*.tiff;*.tif', '*.*'], $
	           ['GeoTIFF; TIFF', 'All files']]

		asterSTasp_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save altitude and aspect corrected ASTER ST image as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

		if asterSTasp_filen ne '' then begin $

			WRITE_tiff, asterSTasp_filen, asp_therm_corr_img, geotiff=geo, /float

		end

	end

;--------------------------
;Save Slope corrected image
;--------------------------

	IF sav12 EQ 1 then begin $

		filters = [['*.tiff;*.tif', '*.*'], $
	           ['GeoTIFF; TIFF', 'All files']]

		asterSTslp_filen = DIALOG_PICKFILE(/WRITE, $
			TITLE = 'Save altitude, aspect and slope corrected ASTER ST image as...', $
			FILTER = filters, /OVERWRITE_PROMPT, default_extension='tif')

		if asterSTslp_filen ne '' then begin $

			WRITE_tiff, asterSTslp_filen, slp_therm_corr_img, geotiff=geo, /float

		end

	end


	;----------------------------------------
	; End of save event, Destroy the widget
	;----------------------------------------
	WIDGET_CONTROL, savbase, /DESTROY

end


;-----------------------------------------------------------------
;close save window
;-----------------------------------------------------------------
pro cancelsave, event

common wid_base, savbase

	; Destroy the widget
	WIDGET_CONTROL, savbase, /DESTROY

end


;-----------------------------------------------------------------
;save pro, create save window - main save pro
;-----------------------------------------------------------------
pro svmenu, group=sgroup

common save_1, sav1
common save_2, sav2
common save_3, sav3
common save_4, sav4
common save_5, sav5
common save_6, sav6
common save_7, sav7
common save_8, sav8
common save_9, sav9
common save_10, sav10
common save_11, sav11
common save_12, sav12
common wid_base, savbase

	; create base widget
	savbase = WIDGET_BASE(TITLE = 'Save Output', /COLUMN, XSIZE = 270)

	; assign not selected value (0) to the save alternatives
 	sav1=0
 	sav2=0
 	sav3=0
 	sav4=0
 	sav5=0
 	sav6=0
 	sav7=0
 	sav8=0
 	sav9=0
 	sav10=0
 	sav11=0
 	sav12=0

	; create 1-dimensional text arrays for menu items
	chcbox_1 = ['Save Altitude-Temperature Graph','Save Aspect-Temperature Graph','Save Slope-Temperature Graph']
	chcbox_2 = ['Save Altitude-Temperature Poly. Equation','Save Aspect-Temperature Poly. Equation','Save Slope-Temperature Poly. Equation']
	chcbox_3 = ['Save Lapse Rate Image','Save Aspect Gradient Image','Save Slope Gradient Image']
	chcbox_4 = ['Save Altitude Corrected Image','Save Aspect Corrected Image','Save Slope Corrected Image']

; Create the menu items using the CW_BGROUP procedure

label1= WIDGET_LABEL(savbase, /AlIGN_LEFT, value='Save Graphs')
menu1 = CW_BGROUP(savbase, chcbox_1, /NONEXCLUSIVE, IDS = chcbut0, /RETURN_NAME)
label2= WIDGET_LABEL(savbase, /AlIGN_LEFT, value='Save Polynomial Equations')
menu2 = CW_BGROUP(savbase, chcbox_2, /NONEXCLUSIVE, IDS = chcbut1, /RETURN_NAME)
label3= WIDGET_LABEL(savbase, /AlIGN_LEFT, value='Save Gradient Images')
menu3 = CW_BGROUP(savbase, chcbox_3, /NONEXCLUSIVE, IDS = chcbut2, /RETURN_NAME)
label4= WIDGET_LABEL(savbase, /AlIGN_LEFT, value='Save Corrected Images')
menu4 = CW_BGROUP(savbase, chcbox_4, /NONEXCLUSIVE, IDS = chcbut3, /RETURN_NAME)
save_button = WIDGET_BUTTON(savbase, UNAME='WID_SAVE_BUTTON_0', VALUE='Save', EVENT_PRO='saveout')
cancel_button = WIDGET_BUTTON(savbase, UNAME='WID_SAVE_BUTTON_0', VALUE='Cancel', EVENT_PRO='cancelsave')


; Realize the widget
WIDGET_CONTROL, savbase, /REALIZE

; XMANAGER to build the widget pro
XMANAGER, 'svmenu', savbase, GROUP_LEADER = sqroup, /NO_BLOCK

END
