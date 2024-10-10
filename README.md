# Analysis of three artists' Spotify Data

## Overview
This paper analyzes the music metadata of three artists **A Boogie Wit da Hoodie**, **Radiohead**, and **Pay money To my Pain** by using the Spotify API to retrieve their audio features. The primary focus of the study is to explore the relationship between song length, release dates, key types, and energy levels for the artists' songs. By visualizing the distribution of song durations and comparing the frequency of major and minor keys, this analysis provides insight into the musical preferences and characteristics of these artists.

The results indicate that A Boogie Wit da Hoodie tends to favor minor keys, with a notable preference for F and G minor, while major keys are less frequent, particularly around C#. Additionally, an energy analysis revealed no significant difference in the energy levels of songs based on the key type, with most songs having moderate energy levels around 0.6. These findings offer a glimpse into the compositional style of A Boogie Wit da Hoodie and, to a lesser extent, the other two artists, showing patterns that reflect broader trends in their respective genres—hip-hop, alternative rock, and post-hardcore.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Spotify API.
-   `data/cleaned_data` contains the cleaned dataset that was constructed.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, test, download, clean, test, and exploratory analysis data, and also data to make model and replications.


## Statement on LLM usage
No LLMs were used for any aspect of this work.
