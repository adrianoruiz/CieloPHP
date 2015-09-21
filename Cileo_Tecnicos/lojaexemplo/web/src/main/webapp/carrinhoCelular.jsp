<%@page import="br.com.cbmp.ecommerce.pedido.Produto"%>
<%@page import="br.com.cbmp.ecommerce.util.Produtos"%>
<%@page import="br.com.cbmp.ecommerce.pedido.IndicadorAutorizacao"%>
<%@page import="br.com.cbmp.ecommerce.pedido.Modalidade"%>
<html>
	<head>
		<title>Loja Exemplo : Celular na Loja</title>
		<script type="text/javascript">

		</script>		
	</head>
	<center>
		<h2>
			Carrinho
		</h2>
		<form name="frm" action="carrinhoCartaoPagamento.jsp" method="post">
		<input type="hidden" name="formatoMensagem" value="requisicaoTransacaoCelular">
		<input type="hidden" name="pedido.loja" value="1006993069">
			<table border="1">
				<tr>
					<td>Produto</td>
					<td>
						<select name="produto">
						<% for (Produto produto : Produtos.todos()) {%>
							<option value="<%= produto.getId() %>"><%= produto.getDescricao() %></option>
						<% } %>	
						</select>
						<input type="text" style="width: 98px; height: 21px" name="prodValor" value="1000"/>						 
					</td>			
				</tr>
				<tr>
					<td>Pagamento com Celular</td>
					<td>
						<table border="0">
							<tr>
								<td>DDD: </td>
								<td><input type="text" name="celular.ddd" value="19"></td>
							</tr>
							<tr>
								<td>N�mero: </td>
								<td><input type="text" name="celular.numero" value="99998888"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>Forma de pagamento</td>
					<td>										
						<input type="radio" name="formaPagamento" value="D">D�bito						
						<br><input type="radio" name="formaPagamento" value="C" checked>Cr�dito � Vista
						<br><input type="radio" name="formaPagamento" value="2">2x
						<br><input type="radio" name="formaPagamento" value="3">3x
						<br><input type="radio" name="formaPagamento" value="4">4x
						<br><input type="radio" name="formaPagamento" value="5">5x
						<br><input type="radio" name="formaPagamento" value="6">6x
						<br><input type="radio" name="formaPagamento" value="7">7x
						<br><input type="radio" name="formaPagamento" value="8">8x
						<br><input type="radio" name="formaPagamento" value="9">9x
						<br><input type="radio" name="formaPagamento" value="10">10x
						<br><input type="radio" name="formaPagamento" value="11">11x
						<br><input type="radio" name="formaPagamento" value="12">12x
						<br><input type="radio" name="formaPagamento" value="13">13x
						<br><input type="radio" name="formaPagamento" value="14">14x						
						<br><input type="radio" name="formaPagamento" value="15">15x<br/>				
					</td>
				</tr>
				<tr>
				</tr>		
				<tr>
					<td>Soft Descriptor</td>
					<td><input type="text" style="width: 250px;" name="pedido.softDescriptor" /></td>
				</tr>
				<tr>
					<td>Configura��o</td>
					<td>
						<table>
							<tr>
								<td>
									Parcelamento
								</td>
								<td>
									<select name="tipoParcelamento">
										<option value="<%= Modalidade.PARCELADO_LOJA.getCodigo() %>">Loja</option>
										<option value="<%= Modalidade.PARCELADO_ADMINISTRADORA.getCodigo() %>">Administradora</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>Capturar Automaticamente?</td>
								<td>
									<select name="capturarAutomaticamente">
										<option value="true">Sim</option>
										<option value="false" selected="selected">N�o</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="checkbox" name="gerarToken" value="gerarToken" />Gerar Token
									<input type="hidden" name="pedido.loja" value="1006993069">
								</td>
							</tr>						
						</table>
					</td>
				</tr>		
				<tr>
					<td>Logradouro</td>
					<td>
						<table border="0">
							<tr>
								<td align="left">CEP:</td>
								<td align="left"><input type="text" name="pedido.avs.cep" value="12345-123" maxlength="9" size="10"/></td>
							</tr>								
							<tr>
								<td align="left">CPF:</td>
								<td align="left"><input type="text" name="pedido.avs.cpf" value="12345678901" maxlength="11" size="12"/></td>
							</tr>								
							<tr>
								<td align="left">Endere�o:</td>
								<td align="left"><input type="text" name="pedido.avs.endereco" value="Rua Teste AVS" maxlength="40" size="41"/></td>
							</tr>								
							<tr>
								<td align="left">N�mero:</td>
								<td align="left"><input type="text" name="pedido.avs.numero" value="123" maxlength="6" size="7"/></td>
							</tr>								
							<tr>
								<td align="left">Complemento:</td>
								<td align="left"><input type="text" name="pedido.avs.complemento" value="Casa" maxlength="9" size="10"/></td>
							</tr>								
							<tr>
								<td align="left">Bairro:</td>
								<td align="left"><input type="text" name="pedido.avs.bairro" value="Vila AVS" maxlength="20" size="21"/></td>
							</tr>								
						</table>
					</td>
				</tr>								
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="Pagar"/>
					</td>
				</tr>
			</table>
		</form>
		<a href="menu.html">Menu</a>
	</center>
</html>