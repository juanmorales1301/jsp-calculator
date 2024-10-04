<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1" %>
<% String path=request.getContextPath(); String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>Calculadora.</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        }
        table {
            margin: auto;
        }
        th {
            padding: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        input[type="button"],
        input[type="reset"] {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: none;
            color: #fff;
            background-color: #007bff;
            cursor: pointer;
        }
        input[type="button"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3;
        }
    </style>
    <script type="text/javascript">
        function muestrapantalla() {
            var resultado = document.getElementById("resultado");
            resultado.value = resultado.value + window.event.srcElement.value;
        }
    </script>
</head>
<body>
    <FORM Id="calculadora" ACTION="CalculadoraServlet" METHOD="POST">
        <table bgColor="#c0c0c0" border="2" align="center" cellpadding="2" cellspacing="2">
            <tr>
                <th colspan=4><INPUT TYPE="text" NAME="resultado" Id="resultado" size="20" VALUE=""
                        maxlength="10"></th>
            </tr>
            <tr>
                <th><INPUT TYPE="button" NAME="1" VALUE="1" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="2" VALUE="2" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="3" VALUE="3" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="operador" VALUE="+"
                        onClick='document.getElementById("calculadora").submit()'></th>
            </tr>
            <tr>
                <th><INPUT TYPE="button" NAME="4" VALUE="4" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="5" VALUE="5" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="6" VALUE="6" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="operador" VALUE="-"
                        onClick='document.getElementById("calculadora").submit()'></th>
            </tr>
            <tr>
                <th><INPUT TYPE="button" NAME="7" VALUE="7" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="8" VALUE="8" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="9" VALUE="9" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="operador" VALUE="*"
                        onClick='document.getElementById("calculadora").submit()'></th>
            </tr>
            <tr>
                <th><INPUT TYPE="button" NAME="." VALUE="." onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="0" VALUE="0" onClick="muestrapantalla()"></th>
                <th><INPUT TYPE="button" NAME="operador" VALUE="="
                        onClick='document.getElementById("calculadora").submit()'></th>
                <th><INPUT TYPE="button" NAME="operador" VALUE="/"
                        onClick='document.getElementById("calculadora").submit()'></th>
            </tr>
            <tr>
                <th colspan=4><INPUT TYPE="Reset" NAME="borrar" VALUE="cls"></th>
            </tr>
        </table>
    </FORM>
</body>
</html>