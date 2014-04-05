; Function name)*100)/100: createOct
; by akirt
;
; function description)*100)/100: create a octagon Ring
;
; parameters description)*100)/100:cvID)*100)/100: the id of target cellview that the shape want to be drawn on
;			mat)*100)/100: specified material/layer
;			iX,iY)*100)/100: the center point of the rectangle
;			len,cor)*100)/100: length of edge
;			width)*100)/100: width of the ring
;
;
; return value)*100)/100: 	the id of created octagon
;
; required fucntions)*100)/100: none (this is a independent function)

procedure(createOctRingS2(cvID mat iX iY len1 cor1 width strink)
	prog((ratio octagon len cor)
		ratio=len1*1.0/(len1+cor1*2)
		len=len1-strink*2*ratio
		cor=cor1-strink*(1-ratio)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-1.0*floor(len/2*100)/100:iY+1.0*floor((len/2+cor)*100)/100 iX+1.0*floor(len/2*100)/100:iY+1.0*floor((len/2+cor)*100)/100 iX+1.0*floor((len/2+cor)*100)/100:iY+1.0*floor(len/2*100)/100 iX+1.0*floor((len/2+cor)*100)/100:iY-1.0*floor(len/2*100)/100 iX+1.0*floor(len/2*100)/100:iY-1.0*floor((len/2+cor)*100)/100 iX-1.0*floor(len/2*100)/100:iY-1.0*floor((len/2+cor)*100)/100 iX-1.0*floor((len/2+cor)*100)/100:iY-1.0*floor(len/2*100)/100 iX-1.0*floor((len/2+cor)*100)/100:iY+1.0*floor(len/2*100)/100 ))
		
		octagon=leChopShape(octagon list(iX-1.0*floor((len/2-ratio*width)*100)/100:iY+1.0*floor(((len/2+cor)-width)*100)/100 iX+1.0*floor((len/2-ratio*width)*100)/100:iY+1.0*floor(((len/2+cor)-width)*100)/100 iX+1.0*floor(((len/2+cor)-width)*100)/100:iY+1.0*floor((len/2-ratio*width)*100)/100 iX+1.0*floor(((len/2+cor)-width)*100)/100:iY-1.0*floor((len/2-ratio*width)*100)/100 iX+1.0*floor((len/2-ratio*width)*100)/100:iY-1.0*floor(((len/2+cor)-width)*100)/100 iX-1.0*floor((len/2-ratio*width)*100)/100:iY-1.0*floor(((len/2+cor)-width)*100)/100 iX-1.0*floor(((len/2+cor)-width)*100)/100:iY-1.0*floor((len/2-ratio*width)*100)/100 iX-1.0*floor(((len/2+cor)-width)*100)/100:iY+1.0*floor((len/2-ratio*width)*100)/100) t t)

		octagon->len=len
		octagon->cor=cor

		return(octagon)
	);prog
);procedure
