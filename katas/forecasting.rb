def forecasting(month_period, market_volume, market_share, sell_throught, st_months)	
	
	month_lifetime = month_lifetime.to_i
	
	# Preço com base no preço lider - porcentagem
	lider_price = 200
	price = lider_price.to_f * 0.8

	# Total Market
	target_market_share = market_volume.to_f * 0.4

	# Quandidade e periodo de vendas
	quantity = target_market_share.to_i / price.to_i

	# Receita/Revenue
	revenue = quantity / price

	# Sell-Thru
	sell_throught = sell_throught.to_f
	
	# Print Header
	calc_forecast(market_volume, target_market_share, quantity)
	calc_lifetime(month_lifetime, target_market_share, quantity, sell_throught, st_months)

end

## HEADER
def calc_forecast(market_volume, target_market_share, quantity)
  print "Volume Mercado: " + market_volume.to_s + "| Venda Alvo: " + target_market_share.to_s + " | Total de vendas: " + quantity.to_s + "\n"
end

# TABLE
def calc_lifetime(month_lifetime, target_market_share, quantity, sell_throught, st_months)
  print("Mes  | Quantidade de Vendas  | Vendas Mensais \n")

  months = %w[ Jan Mar Abr Mai Jun Jul Ago Set Out Nov Dec ]
  row = []

  i = 0
  # Calcular Sell-Thru
  st = calc_st(target_market_share, sell_throught)
  st_per_month = st / st_months
  units = (target_market_share / price) / st_months

  month_lifetime.times do
  	row.push({ month: months[i].to_s, sales: st_per_month.to_s, units:  })
  end

  print("#{row[:month]}               #{row[:sales]}                       #{row[:units]}")
end

def calc_st(target_market_share, sell_throught)
  target_market_share.to_f * sell_throught 
end

# forecasting(month_period, market_volume, market_share, sell_throught, st_months)
print(forecasting(6, 100000000, 0.4, 0.5, 1))