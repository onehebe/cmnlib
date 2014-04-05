; Function name: createFinger
; by akirt
;
; function description: create fingers
;
; parameters description:cvID: the id of target cellview that the fingers want to be drawn on
;			mat: specified material/layer
;			iX,iY: the left-bottom point of the set of fingers
;			iL,iW: the size of set to be drawn
;			l_c: the length of each finger
;			w_c: the width of each finger
;			s_c: the space between two fingers
;
; return value: 	the id of created fingers
;
; required fucntions: createMatrixRect


procedure(createFinger(cvID mat iX iY iL iW w_c s_c)
	prog((n_X n_Y offset1 offset2)
		n_X=round((iL-s_c)/(w_c+s_c))
		n_Y=round((iW-s_c)/(w_c+s_c))
		offset1=(iL-(w_c+s_c)*n_X+s_c)/2
		offset2=(iW-(w_c+s_c)*n_Y+s_c)/2
		return(createMatrixRect(cvID mat iX iY n_X n_Y w_c w_c s_c offset1 offset2))
	);prog
);procedure
