<%@ page isErrorPage="true" %>
<%@page import="br.com.cbmp.ecommerce.util.web.WebUtils"%>
<html>
<%
	exception.printStackTrace();
	WebUtils webUtils = new WebUtils(request);
%>

	<head>
		<title>Pagamento 
		<% 
			try {
				out.print(webUtils.recuperarUltimoPedido().getFormaPagamento().getBandeira().toString().toUpperCase());
			}
			catch(Exception e) {
				out.print("Cart�o");
			}
		%>
		</title>
	</head>
	<body>
		<p>A transa��o n�o p�de ser criada!</p>
		<p>Erro: <%= exception.getMessage() %></p>
		<p>
			<input type="button" onclick="javascript:window.location = 'menu.html'; " value="Retornar"/>
		</p>
		<p>
			Pedido efetuado:<br/>
			<pre>
<%= webUtils.recuperarUltimoPedido().toString() %>
			</pre> 
		</p>
	</body>
</html>