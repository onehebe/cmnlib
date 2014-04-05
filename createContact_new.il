; Function name: createContact
; by akirt
;
; function description: create contacts in a specified rectangule
;
; parameters description:cvID: the id of target cellview that the rectangle want to be drawn on
;			mat: specified material/layer
;			iX,iY: the left-bottom point of the rectangle
;			iL,iW: the size of rectangle to be drawn
;			w_c: the width of each contact
;			s_c: the space between two contacts
;
; return value: 	the id of created contacts
;
; required fucntions: createRect


procedure(createContact(cvID mat iX iY iL iW w_c s_c)
	prog((n_X n_Y offset1 offset2 vn_temp inst_el_id)
		n_X=round((iL-s_c)/(w_c+s_c))
		n_Y=round((iW-s_c)/(w_c+s_c))

		if(n_X==0
			then 	n_X=1
				offset1=(iL-w_c)/2
			else
				offset1=(iL-(w_c+s_c)*n_X+s_c)/2
		);if

		if(n_Y==0
			then 	n_Y=1
				offset2=(iW-w_c)/2
			else
				offset2=(iW-(w_c+s_c)*n_Y+s_c)/2
		);if

		vn_temp=strcat("c_" mat "_" pcExprToString(w_c) "*" pcExprToString(w_c))
		inst_el=dbOpenCellViewByType(cvID->libName vn_temp "layout" "maskLayout" "r")
		if(inst_el_id
			then
				println("instance created")	
			else
				inst_el_id=dbOpenCellViewByType(cvID->libName vn_temp "layout" "maskLayout" "a")
				createRect(inst_el_id mat 0 0 w_c w_c)
				dbSave(inst_el_id)
		);if

		return(dbCreateSimpleMosaic(cvID inst_el_id nil list(iX iY) "R0" n_X n_Y w_c+s_c w_c+s_c))

	);prog
);procedure
