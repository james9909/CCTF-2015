CD C:\Users\ABCD\Desktop\cctf


SET /A number=0
:while1
	IF NOT %number% == 100 (
		SET /A number=number+1
		CAT secret2.docx:flag%number%.txt
		GOTO :while1
	)