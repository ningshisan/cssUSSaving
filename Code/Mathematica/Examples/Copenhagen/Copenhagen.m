(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* Figures for "The American Consumer: Reforming, or Just Resting?" by Christopher Carroll and Jirka Slacalek *)
(* Paper for conference on the outlook for consumption at the San Francisco Fed, May 22 2009.

*)


ClearAll["Global`*"];ParamsAreSet=False;
If[$VersionNumber<8,(*then*) Print["These programs require Mathematica version 8 or greater."];Abort[]];
If[Length[$FrontEnd] > 0,NBDir=SetDirectory[NotebookDirectory[]]];(* If running from the Notebook interface *)
rootDir = SetDirectory["../../.."];
AutoLoadDir=SetDirectory["./Mathematica/CoreCode/Autoload"];Get["./init.m"];
CoreCodeDir=SetDirectory[".."];
rootDir = SetDirectory[".."];
Get[CoreCodeDir<>"/MakeAnalyticalResults.m"];
Get[CoreCodeDir<>"/VarsAndFuncs.m"];
(* Method of creating figures depends on whether being run in batch mode or interactively *)
If[$FrontEnd == Null,OpenFigsUsingShell=True,OpenFigsUsingShell=False]; 
Get[CoreCodeDir<>"/ParametersBase.m"];\[GothicG]   =\[GothicG]Base   =0.01;


Get[CoreCodeDir<>"/ParametersBase.m"];;\[GothicG]   =\[GothicG]Base   =0.01;{\[ScriptC]EBase,\[ScriptM]EBase} = {\[ScriptC]E,\[ScriptM]E};
(* Restore the baseline parameter values and solve again *)
{ r ,\[CurlyTheta] ,\[GothicG],\[Mho]}={rBase,\[CurlyTheta]Base,\[GothicG]Base,\[Mho]Base};
\[ScriptM]Max=1.5 \[ScriptM]E;
\[ScriptM]MaxMax=5 \[ScriptM]E;
FindStableArm;
\[Kappa]EBase = \[Kappa]E //N;\[ScriptC]EBase = \[ScriptC]E //N;\[ScriptM]EOrig=\[ScriptM]EBase //N;

cFuncPlotBasePoints=Map[{{#,cE[#]}}&,Table[\[ScriptM],{\[ScriptM],0,\[ScriptM]MaxMax,0.01}]];
cFuncPlotBase=cFuncPlot=Plot[cE[\[ScriptM]],{\[ScriptM],0,\[ScriptM]MaxMax}];



(* Now suppose that there is an exogenous perfectly certain increase to permanent income by the amount 0.2 per year - think of it as a government transfer received by everyone in the population (this is more transparent than introducing unemployment insurance *)
DebtLimPDV=0.2/((R)-\[GothicCapitalG]);Stable\[ScriptM]LocusPlot=Plot[{\[ScriptM]EDelEqZero[\[ScriptM]]},{\[ScriptM],-DebtLimPDV,\[ScriptM]MaxMax},PlotStyle->{Black,Thickness[0.002]}];
SimGeneratePath[\[ScriptM]E-2,30];
{\[ScriptM]MinNew,\[ScriptM]MaxNew}={0,20};
{\[ScriptC]MinNew,\[ScriptC]MaxNew}={0,2.`};

Print[cFunc=Show[cFuncPlotBase,Stable\[ScriptM]LocusPlot
,Graphics[Text["\[UpperLeftArrow] Sustainable \[ScriptC]",{0.6` \[ScriptM]E,0.9` \[ScriptC]E},{1,0}]],Graphics[Text["\[ScriptC](\[ScriptM])\[LongRightArrow]",{0.1` \[ScriptM]E,0.45` \[ScriptC]E},{-1,0}]]
,Graphics[{Thickness[0.002],Dashing[{0.02}],Line[{{\[ScriptM]E,0},{\[ScriptM]E,\[ScriptC]E}}]}]
,Graphics[{Thickness[0.002],Dashing[{0.02}],Line[{{0,\[ScriptC]E},{\[ScriptM]E,\[ScriptC]E}}]}]
,Graphics[Text[" \[UpperLeftArrow] Target",{\[ScriptM]E,\[ScriptC]E},{-1,1}]]
,Graphics[Text["\[ScriptC](\[ScriptM])\[LongRightArrow]",{0.1` \[ScriptM]E,0.45` \[ScriptC]E},{-1,0}]]
,Graphics[{Black,PointSize[Medium],Point[{\[ScriptM]E,\[ScriptC]E}]}]
,Ticks->{{{\[ScriptM]E,"\!\(\*SubscriptBox[OverscriptBox[\(\[ScriptM]\), \(\[Hacek]\)], \(\\\ \)]\)"}},{{\[ScriptC]E,"\!\(\*OverscriptBox[\(\[ScriptC]\), \(\[Hacek]\)]\)"}}}
,PlotRange->{{\[ScriptM]MinNew,\[ScriptM]E+1},{\[ScriptC]MinNew,\[ScriptC]E+.2}}
,AxesLabel->{"\[ScriptM]","\[ScriptC]"}]];


ExportFigsToDir["cFunc",NBDir<>"/Figures"];


\[ScriptM]\[ScriptC]PathPlot = ListPlot[Take[\[ScriptM]\[ScriptC]Path,-(Length[\[ScriptM]\[ScriptC]Path]-1)],PlotStyle->{Red,PointSize[Medium]}];Print[WealthShock=Show[cFuncPlotBase,Stable\[ScriptM]LocusPlot,\[ScriptM]\[ScriptC]PathPlot,Graphics[Text["\[UpperLeftArrow] Sustainable \[ScriptC]",{0.6` \[ScriptM]E,0.9` \[ScriptC]E},{1,0}]]
,Graphics[Text["\[ScriptC](\[ScriptM])\[LongRightArrow]",{0.1` \[ScriptM]E,0.45` \[ScriptC]E},{-1,0}]]
,Graphics[Line[{{\[ScriptM]E,0},{\[ScriptM]E,\[ScriptC]E}}]]
,Graphics[Line[{{\[ScriptM]E-2,0},{\[ScriptM]E-2,cE[\[ScriptM]E-2]}}]]
,Graphics[Arrow[{{\[ScriptM]E,\[ScriptC]E/2},{\[ScriptM]E-2,\[ScriptC]E/2}}]]
,Graphics[Text["\!\(\*SubscriptBox[\(\[ScriptC]\), \(t\)]\) \[LongRightArrow]",{\[ScriptM]E-2,cE[\[ScriptM]E-2]},{1,0}]]
,Graphics[Text[" \[LongLeftArrow] \!\(\*SubscriptBox[\(\[ScriptC]\), \(t + 1\)]\)",{\[ScriptM]E-2+0.22,cE[\[ScriptM]E-2+0.22]},{-1,0}]]
,Graphics[Text["Wealth Shock",{\[ScriptM]E-1,\[ScriptC]E/2},{0,-1}]]
,Graphics[Text[" \[UpperLeftArrow] Target",{\[ScriptM]E,\[ScriptC]E},{-1,1}]]
,Graphics[Text["\[ScriptC](\[ScriptM])\[LongRightArrow]",{0.1` \[ScriptM]E,0.45` \[ScriptC]E},{-1,0}]]
,Graphics[{Black,PointSize[Medium],Point[{\[ScriptM]E,\[ScriptC]E}]}]
,Ticks->{{{\[ScriptM]E,"\!\(\*SubscriptBox[OverscriptBox[\(\[ScriptM]\), \(\[Hacek]\)], \(\\\ \)]\)"},{\[ScriptM]E-2,"\!\(\*SubscriptBox[\(\[ScriptM]\), \(t\)]\)"}},{{\[ScriptC]E,"\!\(\*OverscriptBox[\(\[ScriptC]\), \(\[Hacek]\)]\)"}}}
,PlotRange->{{\[ScriptM]MinNew,\[ScriptM]E+1},{\[ScriptC]MinNew,\[ScriptC]E+.2}}
,AxesLabel->{"\[ScriptM]","\[ScriptC]"}]];



ExportFigsToDir["WealthShock",NBDir<>"/Figures"];


savRat=Flatten[Transpose[{1+((r)/R)(\[ScriptM]\[ScriptC]Path[[All,1]]-Table[1,{Length[\[ScriptM]\[ScriptC]Path]}])-\[ScriptM]\[ScriptC]Path[[All,2]]}]];
PrependTo[savRat,savRat[[1]]];
PrependTo[savRat,savRat[[1]]];
PrependTo[savRat,savRat[[1]]];
PrependTo[savRat,savRat[[1]]];
timePath=Table[i,{i,Length[savRat]}];
savPathPlot=ListPlot[Transpose[{timePath,savRat}],PlotRange->All,PlotStyle->{PointSize[Medium],Black}];
Print[savPathAfterWealthShock=Show[savPathPlot,Ticks->{{{5,"t"}},None},AxesLabel->{"Time","\[ScriptS]"},AxesOrigin->{-3,0},PlotRange->{{-3,Length[timePath]},{0.`,Max[savRat]+0.01`}}]];


ExportFigsToDir["savPathAfterWealthShock",NBDir<>"/Figures"];


Get[CoreCodeDir<>"/ParametersBase.m"];\[GothicG]   =\[GothicG]Base   =0.01;{\[ScriptC]EBase,\[ScriptM]EBase} = {\[ScriptC]E,\[ScriptM]E};

(* Restore the baseline parameter values and solve again *)
{ r ,\[CurlyTheta] ,\[GothicG],\[Mho]}={rBase,\[CurlyTheta]Base,\[GothicG]Base,3\[Mho]Base};
\[ScriptM]Max=1.5 \[ScriptM]E;
\[ScriptM]MaxMax=7 \[ScriptM]E;
FindStableArm;
\[Kappa]EBase = \[Kappa]E //N;\[ScriptC]EBase = \[ScriptC]E //N;
cFuncPlotuHigher=Plot[cE[\[ScriptM]],{\[ScriptM],0,\[ScriptM]MaxMax},PlotStyle->{Black,Thickness[0.002]}];

SimGeneratePath[\[ScriptM]EOrig,HowMany=15];


\[ScriptM]\[ScriptC]PathPlot = ListPlot[Take[\[ScriptM]\[ScriptC]Path,-(HowMany+1)],PlotStyle->{PointSize[Medium],Red}];


Get[CoreCodeDir<>"/ParametersBase.m"];\[GothicG]   =\[GothicG]Base   =0.01;{\[ScriptC]EBase,\[ScriptM]EBase} = {\[ScriptC]E,\[ScriptM]E};

(* Restore the baseline parameter values and solve again *)
{ r ,\[CurlyTheta] ,\[GothicG],\[Mho]}={rBase,\[CurlyTheta]Base,\[GothicG]Base,\[Mho]Base};
\[ScriptM]Max=1.5 \[ScriptM]E;
\[ScriptM]MaxMax=7 \[ScriptM]E;
FindStableArm;
\[Kappa]EBase = \[Kappa]E //N;\[ScriptC]EBase = \[ScriptC]E //N;




Print[cPhaseDiagBeforeAndAfteruRise=Show[cFuncPlotBase,cFuncPlotuHigher,Stable\[ScriptM]LocusPlot,\[ScriptM]\[ScriptC]PathPlot
,Graphics[Text["Sustainable \[ScriptC] \[LongRightArrow]",{0.6` \[ScriptM]E,0.98` \[ScriptC]E},{1,0}]]
,Graphics[Text["\[LongLeftArrow] \[ScriptC](\[ScriptM]) after unemployment rate increase",{0.5` \[ScriptM]E,0.45` \[ScriptC]E},{-1,0}]]
,Graphics[{Thickness[0.002],Dashing[{0.02}],Line[{{\[ScriptM]E,0},{\[ScriptM]E,\[ScriptC]E+0.2}}]}]
,Graphics[Text[" \[UpperLeftArrow] Target",{\[ScriptM]E,\[ScriptC]E},{-1,1}]]
,Graphics[Text["\[ScriptC](\[ScriptM])\[LongRightArrow]",{0.1` \[ScriptM]E,0.55` \[ScriptC]E},{-1,0}]]
,Graphics[{Black,PointSize[Medium],Point[{\[ScriptM]E,\[ScriptC]E}]}]
,Ticks->{{{\[ScriptM]E,"\!\(\*OverscriptBox[\(\[ScriptM]\), \(\[Hacek]\)]\)"}},None}
,PlotRange->{{\[ScriptM]MinNew,\[ScriptM]E+4},{\[ScriptC]MinNew,\[ScriptC]E+.2}}
,AxesLabel->{"\[ScriptM]","\[ScriptC]"}]];



ExportFigsToDir["cPhaseDiagBeforeAndAfteruRise",NBDir<>"/Figures"];


savAfteruRiseRat=Flatten[Transpose[{1+((r)/R)(\[ScriptM]\[ScriptC]Path[[All,1]]-Table[1,{Length[\[ScriptM]\[ScriptC]Path]}])-\[ScriptM]\[ScriptC]Path[[All,2]]}]];
PrependTo[savAfteruRiseRat,savAfteruRiseRat[[1]]];
PrependTo[savAfteruRiseRat,savAfteruRiseRat[[1]]];
PrependTo[savAfteruRiseRat,savAfteruRiseRat[[1]]];
PrependTo[savAfteruRiseRat,savAfteruRiseRat[[1]]];
timePath=Table[i,{i,Length[savAfteruRiseRat]}];
savAfteruRisePathPlot=ListPlot[Transpose[{timePath,savAfteruRiseRat}],PlotRange->All,PlotStyle->{PointSize[Medium],Black}];
Print[savAfteruRisePath=Show[savAfteruRisePathPlot,Ticks->{{{5,"t"}},None},AxesLabel->{"Time","\[ScriptS]"},AxesOrigin->{-3,0},PlotRange->{{-3,Length[timePath]},{0.`,Max[savAfteruRiseRat]+0.01`}}]];


ExportFigsToDir["savAfteruRisePath",NBDir<>"/Figures"];


cRatAfteruRiseRat=\[ScriptM]\[ScriptC]Path[[All,2]];
Do[PrependTo[cRatAfteruRiseRat,cRatAfteruRiseRat[[1]]],{4}];
timePath=Table[i,{i,Length[cRatAfteruRiseRat]}];
cRatAfteruRisePathPlot=ListPlot[Transpose[{timePath,cRatAfteruRiseRat}],PlotRange->All,PlotStyle->{PointSize[Medium],Black}];
Print[cRatAfteruRisePath=Show[cRatAfteruRisePathPlot,Ticks->{{{5,"t"}},None},AxesLabel->{"Time","\[ScriptC]"},AxesOrigin->{-3,0},PlotRange->{{-3,Length[timePath]+1},{0.`,Max[cRatAfteruRiseRat]+0.01`}}]];


ExportFigsToDir["cRatAfteruRisePath",NBDir<>"/Figures"];


Clear[cE];
cE[m_]:= cEInterp[m+DebtLimPDV];

SimGeneratePath[\[ScriptM]E,100];
 cFuncPlotNew=Plot[cE[\[ScriptM]],{\[ScriptM],-DebtLimPDV,\[ScriptM]MaxMax},PlotRange->All,PlotStyle->{Black,Thickness[0.002]}];
\[ScriptM]\[ScriptC]PathPlot = ListPlot[Take[\[ScriptM]\[ScriptC]Path,-(Length[\[ScriptM]\[ScriptC]Path]-1)],PlotStyle->{PointSize[Medium],Red}];
{\[ScriptM]MinNew,\[ScriptM]MaxNew}={0,20};
{\[ScriptC]MinNew,\[ScriptC]MaxNew}={0,2.`};TractableBufferStockTarget=Show[cFuncPlotBase,Stable\[ScriptM]LocusPlot,Graphics[Text["Perm Inc \[LongRightArrow]",{0.6` \[ScriptM]E,0.98` \[ScriptC]E},{1,0}]],Graphics[Text["\[LongLeftArrow] \[ScriptC](\[ScriptM])",{0.9` \[ScriptM]E,0.85` \[ScriptC]E},{-1,0}]],Ticks->None
,PlotRange->{{\[ScriptM]MinNew,\[ScriptM]E+1},{\[ScriptC]MinNew,\[ScriptC]E+rBase+0.01}}
,AxesLabel->{"\[ScriptM]","\[ScriptC]"}];
Print[PhaseDiagramDebtLimRisePlot=Show[cFuncPlotNew,cFuncPlotBase,\[ScriptM]\[ScriptC]PathPlot,Stable\[ScriptM]LocusPlot
,Graphics[{PointSize[0.015],Point[{\[ScriptM]EBase,\[ScriptC]EBase}]}]
,Graphics[Text["\[UpperLeftArrow] Orig Target ",{\[ScriptM]EBase,0.98` \[ScriptC]EBase},{-1,1}]],Graphics[Text[" \[LongLeftArrow] Orig \[ScriptC](\[ScriptM]) ",{1.35` \[ScriptM]EBase,1.2` \[ScriptC]EBase},{-1,0}]],Graphics[Text["  New \[ScriptC](\[ScriptM]) \[LongRightArrow] ",{\[ScriptM]EBase+1,cE[\[ScriptM]EBase+1]},{1,0}]],Ticks->None,PlotRange->{{-DebtLimPDV,\[ScriptM]MaxNew},{\[ScriptC]MinNew,\[ScriptC]MaxNew+0.02}}
,AxesLabel->{"\[ScriptM]","\[ScriptC]"}]];


ExportFigsToDir["PhaseDiagramDebtLimRisePlot",NBDir<>"/Figures"];
Print[Show[PhaseDiagramDebtLimRisePlot]];


HowMany=75;
\[ScriptM]Path=Take[Transpose[\[ScriptM]\[ScriptC]Path][[1]],HowMany];
\[ScriptC]Path=Take[Transpose[\[ScriptM]\[ScriptC]Path][[2]],HowMany];
MPCPath=((cE[#1+10 \[CurlyEpsilon]]-cE[#1-10 \[CurlyEpsilon]])/(20 \[CurlyEpsilon])&)/@Rest[\[ScriptM]Path];
PrependTo[\[ScriptM]Path,\[ScriptM]EBase];
PrependTo[\[ScriptC]Path,\[ScriptC]EBase];
PrependTo[MPCPath,\[Kappa]EBase];
PrependTo[\[ScriptM]Path,\[ScriptM]EBase];
PrependTo[\[ScriptC]Path,\[ScriptC]EBase];
PrependTo[MPCPath,\[Kappa]EBase];
PrependTo[\[ScriptM]Path,\[ScriptM]EBase];
PrependTo[\[ScriptC]Path,\[ScriptC]EBase];
PrependTo[MPCPath,\[Kappa]EBase];
PrependTo[MPCPath,\[Kappa]EBase];
timePath=Table[i,{i,Length[\[ScriptC]Path]}];
\[ScriptC]PathPlot=ListPlot[Transpose[{timePath,\[ScriptC]Path}],PlotRange->All];
\[ScriptM]PathPlot=ListPlot[Transpose[{timePath,\[ScriptM]Path}],PlotRange->All];
MPCPathPlot=ListPlot[Transpose[{timePath,MPCPath}],PlotRange->All];



cPathAfterDebtLimRise=Show[\[ScriptC]PathPlot,Ticks->{{{4,"0"}},None},AxesLabel->{"Time","\[ScriptC]"},AxesOrigin->{-3,0},PlotRange->{{-3,HowMany},{0.`,Max[\[ScriptC]Path]+0.1`}}];
mPathAfterDebtLimRise=Show[\[ScriptM]PathPlot,Graphics[{Dashing[{0.01`}],Line[{{timePath[[1]],\[ScriptM]EBase-DebtLimPDV-2.85`},{timePath[[-1]],\[ScriptM]EBase-DebtLimPDV-2.85`}}]}],Graphics[Text["\[UpArrow]",{1/2 (timePath[[1]]+timePath[[-1]]),\[ScriptM]EBase-DebtLimPDV-0.55`},{0,1}]],Graphics[Text["\!\(\*OverscriptBox[\(\[ScriptM]\), \(_\)]\)-d",{1/2 (timePath[[1]]+timePath[[-1]]),\[ScriptM]EBase-DebtLimPDV-0.85`},{0,1}]],Ticks->{{{4,"0"}},None},AxesLabel->{"Time","\[ScriptM]"},AxesOrigin->{-3,0},PlotRange->{{-3,HowMany},{-DebtLimPDV,Max[\[ScriptM]Path]+1}}];
MPCPathAfterDebtLimRise=Show[MPCPathPlot,Graphics[{Dashing[{0.01`}],Line[{{timePath[[1]],\[Kappa]},{timePath[[-1]],\[Kappa]}}]}],Graphics[Text["\[UpArrow]",{1/2 (timePath[[1]]+timePath[[-1]]),\[Kappa]},{0,1}]],Graphics[Text["Perfect Foresight MPC",{1/2 (timePath[[1]]+timePath[[-1]]),(\[Kappa] 4)/5},{0,1}]],Ticks->{{{4,"0"}},None},AxesLabel->{"Time","\[Kappa](\[ScriptM])"},AxesOrigin->{-3,0},PlotRange->{{-3,HowMany},{0,0.15`}}];



ExportFigsToDir["cPathAfterDebtLimRise",NBDir<>"/Figures"];




ExportFigsToDir["mPathAfterDebtLimRise",NBDir<>"/Figures"];



ExportFigsToDir["MPCPathAfterDebtLimRise",NBDir<>"/Figures"];


savRat=Flatten[Transpose[{1+((r)/R)(\[ScriptM]\[ScriptC]Path[[All,1]]-Table[1,{Length[\[ScriptM]\[ScriptC]Path]}])-\[ScriptM]\[ScriptC]Path[[All,2]]}]];
PrependTo[savRat,savRat[[1]]];
PrependTo[savRat,savRat[[1]]];
PrependTo[savRat,savRat[[1]]];
PrependTo[savRat,savRat[[1]]];
timePath=Table[i,{i,Length[savRat]}];
savPathPlot=ListPlot[Take[Transpose[{timePath,savRat}],50],PlotRange->All,PlotStyle->{PointSize[Medium],Black}];
savPathAfterLiqConstrRelax=Show[savPathPlot,Ticks->{{{5,"t"}},None},AxesLabel->{"Time","\[ScriptS]"},AxesOrigin->{-3,Min[savRat]-0.02},PlotRange->{{-3,50},{Min[savRat]-0.02,Max[savRat]+0.01`}}];


ExportFigsToDir["savPathAfterLiqConstrRelax",NBDir<>"/Figures"];



