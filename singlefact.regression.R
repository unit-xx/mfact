# general utility functions
source('utils.r')
# helper functions for multi-factor regression
source('mfact.helper.r')

# read configuration

# read quote as zoo/xts
quote = read.quote.csv()

# read factor as zoo/xts
factor = read.factor.csv()

# cleaning: dealing with zeros/NA in quote and factor
quote = doclean(quote)
factor = doclean(factor)
# example code for doclean
# quote[which(quote==0)] = NA
# quote = na.locf(quote)

# join quote and factor on common dates
xxx

# rebalance tick for the portfolio
rbt = get.rebal.tick(quote, factor)

port.hist = sfact.reg(quote, factor, rbt)

# TODO: name convention for port.hist
write.porthist.csv(port.hist)

# params including:
# sector-stock mapping
# select stock by factor in ascending/descending order
# 

