; Function name: createArrayRect
; by akirt
;
; function description: create a set of parallel rectangle
;
; parameters description:cvID: the id of target cellview
;			mat : specified material/layer
;			iX,iY: the start point of the outside edge of ring
;			n: the number of rectuangle to be drawn
;			Len: Length of the rectangle
;			Wid: Width of each rectangle
;			spac: spac between each rectangle
;			offset: offset from the start point
;			dir: direction
;
; return type: list
; return value: list(0): total width of the block
;		list(1): id list of each rectangle
;
; required fucntions: createRect

procedure(createArrayRect(cvID mat iX iY n Len Wid spac offset dir)
	prog((totW tmpList s_X s_Y rectID i)
		tmpList=list()

		if(dir=="v" then
			totW=offset+Wid*n+spac*(n-1)
			s_X=iX
			s_Y=iY+offset
		else
			totW=offset+Len*n+spac*(n-1)
			s_X=iX+offset
			s_Y=iY
		);if


		for(i 1 n
			rectID=createRect(cvID mat s_X s_Y Len Wid)
			tmpList=append1(tmpList rectID)
			
			if(dir=="v" then
				s_Y=s_Y+Wid+spac
			else
				s_X=s_X+Len+spac
			);if
		);for

		return(list(totW tmpList))

	);prog
);procedure

