def forecasting(month_period, market_volume, market_share, sell_throught, st_months):
	
	# Quandidade e periodo de vendas
	quantity = int(market_volume) / int(price)
	month_lifetime = int(month_lifetime)
	
	# Preço com base no preço lider - porcentagem
	price = float(lider_price) * 0.8
	lider_price = 200

	# Receita/Revenue
	revenue = quantity / price

	# Total Market
	target_market_share = float(revenue) * 0.4

	# Sell-Thru
	sell_throught = float(sales) * 0.5
	


def calc_forecast(market_volume, target_market_share, units):
	print("Volume Mercado: " + str(market_volume), "Venda Alvo: " + str(target_market_share), "Total de vendas: " + str(quantity))


# forecasting(month_period, market_volume, market_share, sell_throught, st_months)
print(forecasting(6, 100000000, 0.4, 0.5, 1))