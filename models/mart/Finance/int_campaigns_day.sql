SELECT date_date, 
 SUM (ads_cost) as total_ads_cost, 
 SUM (impression) as total_impressions, 
 SUM (click) as total_clicks, 
 From int_campaigns
 Group by date_date