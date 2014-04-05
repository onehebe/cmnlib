; Function name: createOct
; by akirt
;
; function description: create a octagon Ring
;
; parameters description:cvID: the id of target cellview that the shape want to be drawn on
;			mat: specified material/layer
;			iX,iY: the center point of the rectangle
;			len1,cor1: length of edge
;			width: width of the ring
;
;
; return value: 	the id of created octagon
;
; required fucntions: none (this is a independent function)

procedure(createOctRingE(cvID mat iX iY len1 cor1 width offset)
	prog((ratio octagon)
		ratio=len1*1.0/(len1+cor1*2)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-len1/2-ratio*offset:iY+(len1/2+cor1)+offset iX+len1/2+ratio*offset:iY+(len1/2+cor1)+offset iX+(len1/2+cor1)+offset:iY+len1/2+ratio*offset iX+(len1/2+cor1)+offset:iY-len1/2-ratio*offset iX+len1/2+ratio*offset:iY-(len1/2+cor1)-offset iX-len1/2-ratio*offset:iY-(len1/2+cor1)-offset iX-(len1/2+cor1)-offset:iY-len1/2-ratio*offset iX-(len1/2+cor1)-offset:iY+len1/2+ratio*offset ))
		
		octagon=leChopShape(octagon list(iX-len1/2+ratio*(width+offset):iY+(len1/2+cor1)-(width+offset) iX+len1/2-ratio*(width+offset):iY+(len1/2+cor1)-(width+offset) iX+(len1/2+cor1)-(width+offset):iY+len1/2-ratio*(width+offset) iX+(len1/2+cor1)-(width+offset):iY-len1/2+ratio*(width+offset) iX+len1/2-ratio*(width+offset):iY-(len1/2+cor1)+(width+offset) iX-len1/2+ratio*(width+offset):iY-(len1/2+cor1)+(width+offset) iX-(len1/2+cor1)+(width+offset):iY-len1/2+ratio*(width+offset) iX-(len1/2+cor1)+(width+offset):iY+len1/2-ratio*(width+offset)) t t)

		octagon->len=len1+2*ratio*offset
		octagon->cor=cor1+offset*(1-ratio)

		return(octagon)
	);prog
);procedure
