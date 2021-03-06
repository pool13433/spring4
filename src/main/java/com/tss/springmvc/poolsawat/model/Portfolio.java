package com.tss.springmvc.poolsawat.model;

import java.util.List;

import com.tss.springmvc.poolsawat.services.StockService;

public class Portfolio {

	private StockService stockService;
	   private List<Stock> stocks;

	   public StockService getStockService() {
	      return stockService;
	   }
	   
	   public void setStockService(StockService stockService) {
	      this.stockService = stockService;
	   }

	   public List getStocks() {
	      return stocks;
	   }

	   public void setStocks(List stocks) {
	      this.stocks = stocks;
	   }

	   public double getMarketValue(){
	      double marketValue = 0.0;
	      
	      for(Stock stock : stocks){
	         marketValue += stockService.getPrice(stock) * stock.getQuantity();
	      }
	      return marketValue;
	   }
}
