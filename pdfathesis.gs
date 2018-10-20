[/Title (\z@title)
\ /Author (\z@author)
\ /Copyright (\noexpand\251\ \@convocationyear\ \z@author)
\ /Subject (\@subject)
\ /DateSubmitted (\@datesubmitted)
\ /Keywords (\@keywords)
\ /University (\@university)
\ /AcademicUnit (\@academicunit)
\ /Creator (\@creatortool)
\ /Trapped /False
\ /DOCINFO pdfmark
%
[/_objdef {icc_PDFA} /type /stream /OBJ pdfmark
[{icc_PDFA} << /N \@srgbnumcomp >> /PUT pdfmark
%
[{icc_PDFA} (\@srgb) (r) file /PUT pdfmark
%
[/_objdef {OutputIntent_PDFA} /type /dict /OBJ pdfmark
[{OutputIntent_PDFA} <<
\ /Type /OutputIntent
\ /S /GTS_PDFA1
\ /DestOutputProfile {icc_PDFA}
\ /OutputConditionIdentifier (\@srgbid)
>> /PUT pdfmark
%
\ifx\@praefationes\@empty\relax\else[/_objdef {paglab} /type /dict /OBJ pdfmark\fi
\ifx\@praefationes\@empty\relax\else[{paglab} << /Nums [ 0 << /S /r >> \@praefationes << /S /D >> ] >> /PUT pdfmark\fi
%
[{Catalog} << 
\ /OutputIntents [ {OutputIntent_PDFA} ]
\ifx\@praefationes\@empty\relax\else\ /PageLabels {paglab}\fi
>> /PUT pdfmark
