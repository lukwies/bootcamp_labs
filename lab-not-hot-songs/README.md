![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Not hot songs

## Introduction

Now that you have scrapped the website [Billboard](https://www.billboard.com/charts/hot-100/) to create a *hot_songs* dataset, it's time to prepare a new dataset of *not_hot_songs*. This dataset can contain songs of your choice, others collected from the web or any other combination. Some sources of songs can be:

* [Wikipedia](https://en.wikipedia.org/wiki/Lists_of_songs)
* [Subset of million songs dataset](http://millionsongdataset.com/pages/getting-dataset/#subset) *Note:* this dataset takes several GB of disk space!!!
* [Kaggle](https://www.kaggle.com/datasets/mrmorj/dataset-of-songs-in-spotify)

## Considerations

You want your dataset of not_hot_song to be:

* As heterogeneous in terms of (genre, length,...etc) as possible to create better groups of songs.
* Not too big and not too small (typically around 2-3K) songs

In a real-life scenario, you might want to have your dataset as biggest as possible and use specialized Big Data techniques like [PySpark](https://spark.apache.org/docs/latest/api/python/) to group similar songs together. However, you are going to work on your own laptop which has limited power. Therefore, you need to limit the size of your dataset of not_hot_songs otherwise the process of grouping similar songs will take forever.

## Deliverables

Your fork should contain a jupyter notebook with the code to:

* Gather the songs
* Remove songs already present in the hot_songs dataset
