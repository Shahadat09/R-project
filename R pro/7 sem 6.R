sms_raw<-read.csv("sms_spam.csv", stringsAsFactors = FALSE)
str(sms_raw)
View(sms_raw)
sms_raw$type<- factor(sms_raw$type)
table(sms_raw$type)

install.packages("tm")
library(tm)
sms_corpus<- VCorpus(VectorSource(sms_raw$text))
print(sms_corpus)
inspect(sms_corpus[1])

as.character(sms_corpus[[1]])
lapply(sms_corpus[1:2], as.character)
sms_corpus_clean<-tm_map(sms_corpus,
                         content_transformer(tolower))
as.character(sms_corpus[[1]])
as.character(sms_corpus_clean[[1]])

sms_corpus_clean <-tm_map(sms_corpus_clean, removeNumbers)
sms_corpus_clean<-tm_map(sms_corpus_clean,
                         removeWords, stopwords())
sms_corpus_clean<-tm_map(sms_corpus_clean, removePunctuation)

install.packages("SnowballC")
library(SnowballC)
wordStem(c("learns","learned","learning","learns"))
sms_corpus_clean<-tm_map(sms_corpus_clean, stemDocument)
sms_corpus_clean<-tm_map(sms_corpus_clean, stripWhitespace)
sms_dtm<-DocumentTermMatrix(sms_corpus_clean)

inspect(sms_dtm)
sms_dtm_train<-sms_dtm[1:4169, ]
inspect(sms_dtm_train)
sms_dtm_test<-sms_dtm[4170:5559, ]

sms_train_labels <- sms_raw[1:4169, ]$type
sms_test_labels <-sms_raw[4170:5559, ]$type

install.packages("wordcloud")
library(wordcloud)
library(gmodels)
wordcloud(sms_corpus_clean,min.freq = 50, random.order = FALSE)
findFreqTerms(sms_dtm_train,5)
sms_freq_words<findFreqTerms(sms_dtm_train,5)
