; Function name: createContact2
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
; required fucntions: createMatrixRect


procedure(createContact2(cvID mat iX iY iL iW w_c s_c)
	prog((n_X n_Y offset1 offset2)
		n_X=floor((iL+s_c)/(w_c+s_c))
		n_Y=floor((iW+s_c)/(w_c+s_c))

		if(n_X==0
			then 	n_X=1
				offset1=(iL-w_c)/2
			else
				offset1=(iL+s_c-(w_c+s_c)*n_X)/2
		);if

		if(n_Y==0
			then 	n_Y=1
				offset2=(iW-w_c)/2
			else
				offset2=(iW+s_c-(w_c+s_c)*n_Y)/2
		);if

		return(createMatrixRect(cvID mat iX iY n_X n_Y w_c w_c s_c offset1 offset2))
	);prog
);procedure
