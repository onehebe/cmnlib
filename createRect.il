; Function name: createRect
; by akirt
;
; function description: create a rectangle
;
; parameters description:cvID: the id of target cellview that the rectangle want to be drawn on
;			mat: specified material/layer
;			iX,iY: the left-bottom point of the rectangle
;			iL,iW: the size of rectangle to be drawn
;
; return value: 	the id of created rectangle
;
; required fucntions: none (this is a independent function)


			
procedure(createRect(cvID mat iX iY iL iW)
	prog((rectID)
		if((mat==nil) then
			return(nil);
		);if
		rectID=dbCreateRect(cvID list(mat "drawing") list(iX:iY (iX+iL):(iY+iW)))
		return(rectID)
	);prog
);procedure
