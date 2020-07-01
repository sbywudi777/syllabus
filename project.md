# Big Data Project

The goal of the project is to identify one or more question of interest based on a large dataset to produce an interesting result. You are welcome to use any combination of the tools we learned in class. You are also welcome to use other tools/techniques not specifically learned in class, as long as it is **in addition to** and not instead of the tools learned in class.

## Requirements

Please form groups of 3 or 4 students. If you can't find a group, then you will be assigned to a group.

### Dataset

You need to find a dataset that is large enough that it warrants the use of the tools and techniques learned in class. Your dataset must be at least several Gigabytes in size (minimum of 20GB, uncompressed), regardless or format. There are many datasets out there in the wild, so find one that is interesting to you. Each group within a lab section must use a different dataset.

**The following list provides you with a starting point to invest list of places to search for datasets**

* [https://github.com/BuzzFeedNews/everything]([https://github.com/BuzzFeedNews/everything])
* [https://www.reddit.com/r/datasets/](https://www.reddit.com/r/datasets/)
* [https://azure.microsoft.com/en-us/services/open-datasets/](https://azure.microsoft.com/en-us/services/open-datasets/)
* [https://registry.opendata.aws/](https://registry.opendata.aws/)
* [https://github.com/awesomedata/awesome-public-datasets](https://github.com/awesomedata/awesome-public-datasets)
* [https://www.ehdp.com/links/datasets.htm](https://www.ehdp.com/links/datasets.htm)
* [https://www.quora.com/Where-can-I-find-large-datasets-open-to-the-public](https://www.ehdp.com/links/datasets.htm) 
* Kaggle has many datasets, but you may only work with large datasets from Kaggle. [This link](https://www.kaggle.com/datasets?sizeStart=20%2CGB) shows you datasets that are 20GB or larger

**You may not use any of the datasets in this list:**

* New York City Taxicab
* Airline Delays
* Amazon Reviews 

## Tasks

While the project is open ended, there are some parameters and guidelines to help plan and organize your approach. The project needs to have, at a minimum, the following:

* **Data Sourcing and Ingesting:** Find, retrieve or generate data and ingest it into a distributed filesystem.
* **Exploratory Analysis:** Explore, assess and visualize the data. Aggregate, count, and summarize. Create graphs, tables, etc., and explain your findings in writing. Clean data as needed and build an analytical dataset. 
* **Model:** Build any model you feel is appropriate and meaningful. You can use supervised and/or unsupervised approach. You must have evaluation metrics for supervised approaches and/or visualizations for unsupervised learning approaches. You are welcome to try different modeling techniques that you are comfortable with. 

## Writeup & Code Files

You will submit a final writeup of your project along with the code files. There is no minimum or maximum length requirement. I prefer simple and terse writing over long and verbose. Bullets are fine. As long as what you writeup covers what you want to convey, it's ok. The writeup needs to have the following sections:

- Executive Summary
- Introduction
- Methods section:
	- How you sourced, ingested, cleansed, prepared the dataset with samples of intermediate data
	- Tools you used for analyzing the dataset and the justification (tools, models, etc.)
	- How did you model the dataset, what techniques did you use and why?
	- Did you have a hypothesis that you were trying to prove?
	- Did you just visualize the dataset, and if so, why?
- Challenges (technical & non-technical) and how you overcame them
- Results/Conclusions section:
	- What did you find and learn?
	- How did you validate your results? 
- Future work: what would you do differently and what follow-up work would you do? Would you use othe tools?
- Bibliography/References
- Division of labor: which team member was responsible for which part of the project
- Code files (you should list your code files here, and these must be in your submitted repository with appropriate comments.)

	
## Project Proposal

For your project proposal, please write a short document with two proposals: **a first choice and second choice.** If more than one group has the same proposed dataset, the group with the eariler submission will get to use the first choice dataset, and the other group(s) will get to use their second choice datasets. If by chance more than one group has the same proposed second choice dataset, we will also select the one with the earliest submission and let the other. We will inform groups of their selected datasets after all submissions have been reviewed.

The proposal is just to make sure you are on the right track and that the dataset is valid for the purposes of the project. 

* Group Name
* Group Members

For both choices, please provide a summary of the following:

* Dataset: source(s), type(s), format(s), size
* Motivation: What is the question and why is it worth asking? 
* Plan: what do plan to do? 
* Expected results: it's absolutely fine if your project does not end up as expected, but include what you hope to achieve


### Advice

This is a snippet from a chapter that Prof. Vaisman wrote for the [Bad Data Handbook](http://shop.oreilly.com/product/0636920024422.do) which I hope provides some guidance.

_There are many kind of analytical exercises you can do. Some begin as an exploration without a specific question in mind; but it could be argued that even when exploring, there are some questions in mind that are not formulated. Other exercises begin with a specific question in mind, and end up answering another question. Regardless, before you embark on a research investigation, you should have some idea of where you are going. You need to be practical and know when to stop and move onto something else. But again, start with some end in mind. Just because you have a lot of data does not mean you have to do analysis just for analysis’ sake. Very often, this kind of approach ends with wasted time and no results._

## Submitting the Project

You will be getting a blank `README.md` file in your group repository when you accept the assignment with GitHub classroom.  

The files to be committed and pushed to the repository for the project are:

* `README.md` which is your project writeup file. 
* `instance-metadata.json`
* Any script/notebook file referenced in the __code__ section of your writeup. We should be able to follow the code with the writeup.
* Do NOT commit data files to the repository,


## Grading Criteria

The project will be graded holistically with the following rubric:

Grade of A:

* Project covers all areas above
* There is discussion on specifics of the analysis, and analysis decisions are justified
* Language is clear, figures support research/investigation
* Properly formatted, clean presentation and no grammatical errors

Grade of B:

* One major deficiency and/or
* Writeup and/or analysis is missing significant discussion/justification around analysis performed and/or
* Minor flaws in layout/presentation of analysis

Grade of C:

* Two deficient areas and/or
* Major flaws in layout/presentation of analysis

Grade of D:

* Three or more deficient areas

For the purposes of grading, a **deficiency** can mean any of the following:

- Instructions are not followed
- Missing sections of the project
- Poor and sloppy writing and/or presentation, including spelling and grammatical errors
- Code is not documented with comments
- Code files referenced are not in repository
- Missing model performance metrics
- Doing an analysis and/or model just for the sake of doing it, without thinking through and providing analytical justification
eeeeeeeeeeee
![question_wordcloud](s3://my4dbucket/math/question.png
