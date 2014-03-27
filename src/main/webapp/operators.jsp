<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD><TITLE>EL Operators</TITLE>
<LINK REL=STYLESHEET
      HREF="./css/JSP-Styles.css"
      TYPE="text/css">
</HEAD>
<BODY>
<TABLE BORDER=5 ALIGN="CENTER">
  <TR><TH CLASS="TITLE">
  EL Operators
</TABLE>
<P>
<TABLE BORDER=1 ALIGN="CENTER">
  <TR><TH CLASS="COLORED" COLSPAN=2>Arithmetic Operators</TH>
      <TH CLASS="COLORED" COLSPAN=2>Relational Operators</TH></TR>
  <TR><TH>Expression</TH><TH>Result</TH><TH>Expression</TH><TH>Result</TH></TR>
  <TR ALIGN="CENTER">
    <TD>\${3+2-1}<TD>${3+2-1}</TD>  <%-- Addition/Subtraction --%>
    <TD>\${1&lt;2}<TD>${1<2}</TD></TR>      <%-- Numerical comparison --%>
  <TR ALIGN="CENTER">
    <TD>\${"1"+2}</TD><TD>${"1"+2}</TD>     <%-- String conversion --%>
    <TD>\${"a"&lt;"b"}</TD><TD>${"a"<"b"}</TD></TR> <%-- Lexical comparison --%>
  <TR ALIGN="CENTER">
    <TD>\${1 + 2*3 + 3/4}</TD><TD>${1 + 2*3 + 3/4}</TD>  <%-- Mult/Div --%>
    <TD>\${2/3 &gt;= 3/2}</TD><TD>${2/3 >= 3/2}</TD></TR>        <%-- >= --%>
  <TR ALIGN="CENTER">
    <TD>\${3%2}</TD><TD>${3%2}</TD>                 <%-- Modulo --%>
    <TD>\${3/4 == 0.75}</TD><TD>${3/4 == 0.75}</TD> <%-- Numeric = --%>
  <TR ALIGN="CENTER">
    <%-- div and mod are alternatives to / and % --%>
    <TD>\${(8 / 2) mod 3}</TD><TD>${(8 div 2) mod 3}</TD>
    <%-- Compares with "equals" but returns false for null --%>
    <TD>\${null == "test"}</TD><TD>${null == "test"}</TD></TR>
      
  <TR><TH CLASS="COLORED" COLSPAN="2">Logical Operators </TH>
      <TH CLASS="COLORED" COLSPAN="2"><CODE>empty</CODE> Operator</TH>
  <TR><TH>Expression<TH>Result<TH>Expression<TH>Result</TH></TR>
  <TR ALIGN="CENTER">
    <TD>\${(1&lt;2) && (4&lt;3)}<TD>${(1<2) && (4<3)} <%--AND--%>
    <TD>\${empty ""}<TD>${empty ""} <%-- Empty string --%>
  <TR ALIGN="CENTER">
    <TD>\${(1&lt;2) || (4&lt;3)}<TD>${(1<2) || (4<3)} <%--OR--%>
    <TD>\${empty null}<TD>${empty null} <%-- null --%>
  <TR ALIGN="CENTER">
    <TD>\${!(1&lt;2)}<TD>${!(1<2)}  <%-- NOT -%>
    <%-- Handles null or empty string in request param --%>
    <TD>\${empty param.blah}<TD>${empty param.blah}
</TABLE>
</BODY></HTML>