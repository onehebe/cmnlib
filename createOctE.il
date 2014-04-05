; Function name: createOctE
; by akirt
;
; function description: create a octagon with a offset
;
; parameters description:cvID: the id of target cellview that the shape want to be drawn on
;			mat: specified material/layer
;			iX,iY: the center point of the rectangle
;			len1,cor1: length of edge
;			offset: 
;
;
; return value: 	the id of created octagon
;
; required fucntions: none (this is a independent function)

procedure(createOctE(cvID mat iX iY len1 cor1 offset)
	prog((ratio octagon)
		ratio=len1*1.0/(len1+cor1*2)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-len1/2-ratio*offset:iY+(len1/2+cor1)+offset iX+len1/2+ratio*offset:iY+(len1/2+cor1)+offset iX+(len1/2+cor1)+offset:iY+len1/2+ratio*offset iX+(len1/2+cor1)+offset:iY-len1/2-ratio*offset iX+len1/2+ratio*offset:iY-(len1/2+cor1)-offset iX-len1/2-ratio*offset:iY-(len1/2+cor1)-offset iX-(len1/2+cor1)-offset:iY-len1/2-ratio*offset iX-(len1/2+cor1)-offset:iY+len1/2+ratio*offset ))

		octagon->len=len1+2*ratio*offset
		octagon->cor=cor1+offset*(1-ratio)

		return(octagon)
	);prog
);procedure
