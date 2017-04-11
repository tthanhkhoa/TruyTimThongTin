library(ggplot2)
library(reshape2)
results = read.csv('E:\\TrecEval.csv', header = T)
attach(results)

df <- melt(data = results, id.vars = "Recall")
g <- ggplot(data = df, aes(x = Recall, y = value, colour = variable)) + geom_line(size = 1)
g <- g + labs(title = "Precision-Recall Curves\n", 
              x = "Recall", 
              y = "Precision", 
              color = "Methods")
g



results = read.csv('E:\\query.csv', header = T)
attach(results)

df <- melt(data = results, id.vars = "Recall")
g <- ggplot(data = df, aes(x = Recall, y = value, colour = variable)) + geom_line(size = 1)
g <- g + labs(title = "Precision-Recall Curves\n", 
              x = "Recall", 
              y = "Precision", 
              color = "Methods")
g
###===========================================================================
require(graphics)
results = read.csv('E:\\TrecEval.csv', header = T)
df <- melt(data = results, id.vars = "Recall")
t.test(x=BM25, y = LM, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
t.test(x=DFR, y = LM, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
t.test(x=Bassic, y = LM, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
t.test(x=DFR, y = BM25, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
t.test(x=Bassic, y = BM25, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
t.test(x=Bassic, y = DFR, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
##=================================================================================================
wilcox.test(x=BM25, y = LM, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
wilcox.test(x=DFR, y = LM, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
wilcox.test(x=Bassic, y = LM, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
wilcox.test(x=DFR, y = BM25, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)
wilcox.test(x=Bassic, y = BM25, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)

wilcox.test(x=Bassic, y = DFR, data = df,mu=0, alternative="two.sided", paired=TRUE, conf.level=0.95)








