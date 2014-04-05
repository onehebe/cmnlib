; Function name: createSimpleMatrix
; by akirt
;
; function description: create rectangules in a simple way
;
; parameters description:cvID: the id of target cellview that the rectangles want to be drawn on
;			mat: specified material/layer
;			iX,iY: the left-bottom point of the rectangle
;			iL,iW: the size of rectangle to be drawn
;			l_c: the length of each rectangle
;			w_c: the width of each rectangle
;			s_c: the space between two rectangles
;
; return value: 	the id of created rectangules
;
; required fucntions: createMatrixRect


procedure(createSimpleMatrix(cvID mat iX iY iL iW l_c w_c s_c)
	prog((n_X n_Y offset1 offset2)
		n_X=round((iL-s_c)/(l_c+s_c))
		n_Y=round((iW-s_c)/(w_c+s_c))
		offset1=(iL-(l_c+s_c)*n_X+s_c)/2
		offset2=(iW-(w_c+s_c)*n_Y+s_c)/2
		return(createMatrixRect(cvID mat iX iY n_X n_Y l_c w_c s_c offset1 offset2))
	);prog
);procedure
