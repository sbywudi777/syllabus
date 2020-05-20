library(tibble, quietly = T, warn.conflicts = F)
library(dplyr, quietly = T, warn.conflicts = F)
library(stringr, quietly = T, warn.conflicts = F)

noclass <- NULL

sched_vec <- c(
  seq.Date(
    from = as.Date("2020-05-20"),
    to = as.Date("2020-06-24"),
    by = "week"
  )
) %>%
  .[!(. %in% noclass)] %>%
  sort(.)

sched <-
  tibble(date = sched_vec) %>%
  mutate(session = as.integer(1:nrow(.)))

## Sessions

l01 <- tibble(
  topics = "Course Overview. Big Data concepts. Cloud computing and evolution of cloud technologies",
  lab = "Setting Up",
  reading = "",
  notes = "Do the prework"
)

l02 <- tibble(
  topics = "Scaling up on a single machine. Functional programming. Map and reduce functions. Parallelization.",
  lab = "Parallelization",
  reading = "MLD: Ch. 1, 2, 5<br/><br/>Dean, Ghemawat: MapReduce Simplified Data Processing on Large Clusters",
  notes = "Quiz 1<br/><br/>Project Proposal due 5/27<br/><br/>Assignment 1 due 5/29"
)


l03 <- tibble(
  topics = "MapReduce. Hadoop and Hadoop Streaming. Distributed filesystems.",
  lab = "Running a Hadoop job",
  reading = "",
  notes = "Quiz 2<br/><br/>Assignment 2 due 6/5"
)

l04 <- tibble(
  topics = "Spark 1: Intro to Spark and PySpark. RDDs. Spark DataFrames. SparkSQL",
  lab = "Intro to Spark, working with RDDs",
  reading = "",
  notes = "Quiz 3<br/><br/>Assignment 3 due 6/12"
)

l05 <- tibble(
  topics = "Spark 2: Marchine Learning with Spark",
  lab = "Machine Learning with Spark",
  reading = "",
  notes = "Quiz 4"
)

l06 <- tibble(
  topics = "Spark 3: Spark Streaming. Other big data tools. Course wrapup.",
  lab = "Spark Streaming",
  reading = "",
  notes = "Quiz 5<br/><br/>Final Project due 6/30"
)


sessions <- paste0("l", str_pad(as.character(1:6), 2, pad = "0"))
sched <- sched %>%
  bind_cols(lapply(sessions, get) %>%  bind_rows())

sched <- 
  sched %>%
  mutate(date = format(date, "%a %b-%d")) %>%
  select(session, date, topics, lab, reading, notes)
