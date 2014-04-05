; Function name: createRectE
; by akirt
;
; function description: create a rectangle with a offset with an extension
;
; parameters description:cvID: the id of target cellview that the rectangle want to be drawn on
;			mat: specified material/layer
;			iX,iY: the left-bottom point of the rectangle
;			iL,iW: the size of rectangle to be drawn
;			offset: the size of offset
;
; return value: 	the id of created rectangle
;
; required fucntions: none (this is a independent function)


			
procedure(createRectE(cvID mat iX iY iL iW offset)
	prog((rectID)
		rectID=dbCreateRect(cvID list(mat "drawing") list(iX-offset:iY-offset (iX+iL+offset):(iY+iW+offset)))
		return(rectID)
	);prog
);procedure
