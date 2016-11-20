(* ::Package:: *)

(* ::Title:: *)
(*Talk2Data Commands*)


(* ::Chapter:: *)
(*Initialization*)


(* ::Subsection:: *)
(*Start Package*)


BeginPackage["Talk2DataCommands`"]

Talk2DataCommands::usage =
        "An association mapping text Talk2DataCommands to the corresponding function calls."

Begin["`Private`"]


(* ::Subsection:: *)
(*Initialize/reset Talk2DataCommands*)


(* ::Input::Initialization:: *)
Talk2DataCommands=<||>;


(* ::Subsection:: *)
(*Function to append a command*)


add2C[s_String,f_Symbol]:=AppendTo[Talk2DataCommands,s->f]


(* ::Chapter:: *)
(*Adding commands*)


(* ::Section:: *)
(*Data manipulation*)


(* ::Subsection:: *)
(*Complete dataset operations*)


(* ::Subsubsection:: *)
(*Transpose*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*transpose[data_Dataset]:=Transpose*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["transpose"->transpose];*)
(*add2C["transpose data", transpose];*)
(*add2C["transpose dataset", transpose];*)
(*add2C["transpose table", transpose];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*Transpose@data;*)


(* ::Subsubsection:: *)
(*Dimensions*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*dimensions[data_Dataset]:=Dimensions*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["dimensions"->dimensions];*)
(*add2C["dimensions data",dimensions];*)
(*add2C["dimensions table",dimensions];*)
(*add2C["size",dimensions];*)
(*add2C["size data",dimensions];*)
(*add2C["size table",dimensions];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*Dimensions@data*)*)


(* ::Subsection:: *)
(*Viewing data***************display index of column and row*)


(* ::Subsubsection:: *)
(*Show data*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*show["All"][][data_Dataset]:=data*)
(*show["Column"][n_Integer][data_Dataset]:=data[All,n]*)
(*show["Row"][n_Integer][data_Dataset]:=data[n]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["show",show["All"]];*)
(*add2C["show data",show["All"]];*)
(*add2C["data",show["All"]];*)
(*add2C["view",show["All"]];*)
(*add2C["view data",show["All"]];*)
(*add2C["view table",show["All"]];*)
(*add2C["table",show["All"]];*)
(**)
(*add2C["column @Input",show["Column"]];*)
(*add2C["show column @Input",show["Column"]];*)
(*add2C["column @Input",show["Column"]];*)
(*add2C["view column @Input",show["Column"]];*)
(*add2C["column @Input",show["Column"]];*)
(**)
(*add2C["row @Input",show["Row"]];*)
(*add2C["show row @Input",show["Row"]];*)
(*add2C["row @Input",show["Row"]];*)
(*add2C["view row @Input",show["Row"]];*)
(*add2C["row @Input",show["Row"]];*)
(**)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*show["Column"][3][data]*)*)


(* ::Subsubsection:: *)
(*Select columns/rows*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*select["Column"][n_Integer,m_Integer][data_Dataset]:=data[All,Range[n,m]]*)
(*select["Row"][n_Integer,m_Integer][data_Dataset]:=data[Range[n,m]]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["columns @Input to @Input",select["Column"]];*)
(*add2C["select columns @Input to @Input",select["Column"]];*)
(*add2C["select columns between @Input and @Input",select["Column"]];*)
(*add2C["select columns from @Input to @Input",select["Column"]];*)
(*add2C["select column @Input to @Input",select["Column"]];*)
(*add2C["select column @Input to column @Input",select["Column"]];*)
(**)
(*add2C["rows @Input to @Input",select["Row"]];*)
(*add2C["select rows @Input to @Input",select["Row"]];*)
(*add2C["select rows between @Input and @Input",select["Row"]];*)
(*add2C["select rows from @Input to @Input",select["Row"]];*)
(*add2C["select row @Input to @Input",select["Column"]];*)
(*add2C["select row @Input to row @Input",select["Column"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*select["Column"][2,3][data]*)*)
(*(*select["Row"][2,3][data]*)*)


(* ::Subsection:: *)
(*Arithmetic on columns/rows*)


(* ::Section:: *)
(*Statistics*)


(* ::Subsection:: *)
(*Single column/row operations****************GroupBy, sort or OrderBy ascending/descending*)


(* ::Subsubsection:: *)
(*Mean of column n*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*mean["Column"][n_Integer][data_Dataset]:=N@data[Mean@*Select[NumberQ],n]*)
(*mean["Row"][n_Integer][data_Dataset]:=N@data[n,Mean@*Select[NumberQ]@*Values]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["mean column @Input",mean["Column"]];*)
(*add2C["average column @Input",mean["Column"]];*)
(**)
(*add2C["mean row @Input",mean["Row"]];*)
(*add2C["average row @Input",mean["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*mean["Column"][2][data]*)*)
(*(*mean["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Median*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*median["Column"][n_Integer][data_Dataset]:=N@data[Median@*Select[NumberQ],n]*)
(*median["Row"][n_Integer][data_Dataset]:=N@data[n,Median@*Select[NumberQ]@*Values]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["median column @Input",median["Column"]];*)
(**)
(*add2C["median row @Input",median["Column"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*median["Column"][2][data]*)*)
(*(*median["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Mode*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*mode["Column"][n_Integer][data_Dataset]:=N@Normal@data[Commonest,n]*)
(*mode["Row"][n_Integer][data_Dataset]:=N@Normal@data[n,Commonest@*Values]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["most common element column @Input",mode["Column"]];*)
(*add2C["mode column @Input",mode["Column"]];*)
(*add2C["most common element column @Input",mode["Column"]];*)
(**)
(*add2C["most common element row @Input",mode["Row"]];*)
(*add2C["mode row @Input",mode["Column"]];*)
(*add2C["most common element row @Input",mode["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*mode["Column"][2][data]*)*)
(*(*mode["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Sum*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*sum["Column"][n_Integer][data_Dataset]:=N@data[Total@*Select[NumberQ],n]*)
(*sum["Row"][n_Integer][data_Dataset]:=N@data[n,Total@*Select[NumberQ]]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["sum column @Input",sum["Column"]];*)
(*add2C["total column @Input",sum["Column"]];*)
(**)
(*add2C["sum row @Input",sum["Row"]];*)
(*add2C["total row @Input",sum["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*sum["Column"][2][data]*)*)
(*(*sum["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Length*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*length["Column"][n_Integer][data_Dataset]:=data[Length,n]*)
(*length["Row"][n_Integer][data_Dataset]:=data[n,Length]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["length column @Input",length["Column"]];*)
(*add2C["total length column @Input",length["Column"]];*)
(*add2C["number elements column @Input",length["Column"]];*)
(*add2C["total number elements column @Input",length["Column"]];*)
(**)
(*add2C["length row @Input",length["Row"]];*)
(*add2C["total length row @Input",length["Row"]];*)
(*add2C["number elements row @Input",length["Row"]];*)
(*add2C["total number elements row @Input",length["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*length["Column"][2][data]*)*)
(*(*length["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Standard deviation*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*standardDeviation["Column"][n_Integer][data_Dataset]:=N@data[StandardDeviation@*Select[NumberQ],n]*)
(*standardDeviation["Row"][n_Integer][data_Dataset]:=N@data[n,StandardDeviation@*Select[NumberQ]]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["standard deviation column @Input",standardDeviation["Column"]];*)
(**)
(*add2C["standard deviation row @Input",standardDeviation["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*standardDeviation["Column"][2][data]*)*)
(*(*standardDeviation["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Minimum and maximum*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*minmax["Column"][n_Integer][data_Dataset]:=N@Normal@data[MinMax@*Select[NumberQ],n]*)
(*minmax["Row"][n_Integer][data_Dataset]:=N@Normal@data[n,MinMax@*Select[NumberQ]@*Values]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["minimum and maximum column @Input",minmax["Column"]];*)
(*add2C["minimum column @Input",First@*minmax["Column"]];*)
(*add2C["maximum column @Input",Last@*minmax["Column"]];*)
(**)
(*add2C["minimum and maximum row @Input",minmax["Row"]];*)
(*add2C["minimum row @Input",First@*minmax["Row"]];*)
(*add2C["maximum row @Input",Last@*minmax["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*minmax["Column"][2][data]*)*)
(*(*minmax["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Plot column/row****************add axis label (header of column)*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*plot["Column"][n_Integer][data_Dataset]:=data[ListPlot,n]*)
(*plot["Row"][n_Integer][data_Dataset]:=data[n,ListPlot]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["plot column @Input",plot["Column"]];*)
(**)
(*add2C["plot row @Input",plot["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*plot["Column"][2][data]*)*)
(*(*plot["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Histogram*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*histogram["Column"][n_Integer][data_Dataset]:=data[Histogram,n]*)
(*histogram["Row"][n_Integer][data_Dataset]:=data[n,Histogram]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["histogram column @Input",histogram["Column"]];*)
(**)
(*add2C["histogram row @Input",histogram["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*histogram["Column"][2][data]*)*)
(*(*histogram["Row"][2][data]*)*)


(* ::Subsubsection:: *)
(*Pie chart*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*pieChart["Column"][n_Integer][data_Dataset]:=data[PieChart,n]*)
(*pieChart["Row"][n_Integer][data_Dataset]:=data[n,PieChart]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["pie chart column @Input",pieChart["Column"]];*)
(*add2C["piechart column @Input",pieChart["Column"]];*)
(**)
(*add2C["pie chart row @Input",pieChart["Row"]];*)
(*add2C["piechart row @Input",pieChart["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*pieChart["Column"][2][data]*)*)
(*(*pieChart["Row"][2][data]*)*)


(* ::Subsection:: *)
(*Double column/row operations*)


(* ::Subsubsection:: *)
(*Linear fit*******************outliers detection*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*linearFit["Column"][n_Integer,m_Integer][data_Dataset]:=LinearModelFit[Select[And@@(NumberQ/@#)&]@Values@Normal@data[All,{m,n}],{1,x},x]*)
(*linearFit["Row"][n_Integer,m_Integer][data_Dataset]:=LinearModelFit[Select[And@@(NumberQ/@#)&]@Values@Normal@Transpose[data][All,{m,n}],{1,x},x]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands: **************************** add linear regression command*)


(* ::Input:: *)
(*add2C["linear fit column @Input versus column @Input",linearFit["Column"]];*)
(*add2C["fit column @Input versus column @Input",linearFit["Column"]];*)
(**)
(*add2C["linear fit row @Input versus row @Input",linearFit["Row"]];*)
(*add2C["fit row @Input versus row @Input",linearFit["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*linearFit["Column"][2,3][data]*)*)
(*(*linearFit["Row"][2,3][data]*)*)


(* ::Subsubsection:: *)
(*Correlation*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*correlate["Column"][n_Integer,m_Integer][data_Dataset]:=Correlation@@Select[NumberQ]/@Transpose@Values@Normal@data[All,{n,m}]//N*)
(*correlate["Row"][n_Integer,m_Integer][data_Dataset]:=Correlation@@Select[NumberQ]/@Transpose@Values@Normal@Transpose[data][All,{n,m}]//N*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["correlation column @Input with column @Input",correlate["Column"]];*)
(*add2C["correlation column @Input versus column @Input",correlate["Column"]];*)
(**)
(*add2C["correlation row @Input with row @Input",correlate["Row"]];*)
(*add2C["correlation row @Input versus row @Input",correlate["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*correlate["Row"][2,3][data]*)*)
(*(*correlate["Column"][2,3][data]*)*)


(* ::Subsubsection:: *)
(*Scatter plot*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*scatterPlot["Column"][n_Integer,m_Integer][data_Dataset]:=ListPlot[data[All,{m,n}]]*)
(*scatterPlot["Row"][n_Integer,m_Integer][data_Dataset]:=ListPlot[Transpose[data][All,{m,n}]]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["plot column @Input versus column @Input",scatterPlot["Column"]];*)
(*add2C["plot column @Input against column @Input",scatterPlot["Column"]];*)
(*add2C["scatter plot column @Input versus column @Input",scatterPlot["Column"]];*)
(*add2C["scatter plot column @Input against column @Input",scatterPlot["Column"]];*)
(**)
(*add2C["plot row @Input versus row @Input",scatterPlot["Row"]];*)
(*add2C["plot row @Input against row @Input",scatterPlot["Row"]];*)
(*add2C["scatter plot row @Input versus row @Input",scatterPlot["Row"]];*)
(*add2C["scatter plot row @Input against row @Input",scatterPlot["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*scatterPlot["Column"][2,3][data]*)*)
(*(*scatterPlot["Row"][2,3][data]*)*)


(* ::Subsection:: *)
(*Multiple column/row operations*)


(* ::Section:: *)
(*Words*)


(* ::Subsubsection:: *)
(*Word cloud of column n*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Function definition:*)


(* ::Input:: *)
(*wordCloud["Column"][n_Integer][data_Dataset]:=data[WordCloud@*DeleteStopwords,n]*)
(*wordCloud["Row"][n_Integer][data_Dataset]:=data[n,WordCloud@*DeleteStopwords]*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["word cloud column @Input",wordCloud["Column"]];*)
(*add2C["wordcloud column @Input",wordCloud["Column"]];*)
(**)
(*add2C["word cloud row @Input",wordCloud["Row"]];*)
(*add2C["wordcloud row @Input",wordCloud["Row"]];*)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Tests:*)


(* ::Input:: *)
(*(*wordCloud["Column"][data][1];*)*)
(*(*wordCloud["Row"][data][1];*)*)


(* ::Section:: *)
(*Maps*)


(* ::Subsubsection:: *)
(*Plot coordinates******************)


(* ::Text::RGBColor[0.5, 0, 0.5]:: *)
(*Commands:*)


(* ::Input:: *)
(*add2C["plot x coordinate @Input versus y coordinate @Input",func["All"]];(***************)*)
(*add2C["location @Input on map",func["All"]];(**************)*)
(**)
(**)


(* ::Section:: *)
(*Creating Functions*)


(* ::Chapter:: *)
(*End package*)


End[ ]

EndPackage[ ]
