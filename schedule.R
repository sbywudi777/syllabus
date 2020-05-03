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
  notes = ""
)

l02 <- tibble(
  topics = "Scaling up on a single machine. Functional programming. Map and reduce functions. Parallelization.",
  lab = "Parallelization",
  reading = "",
  notes = ""
)


l03 <- tibble(
  topics = "MapReduce. Hadoop and Hadoop Streaming. Distributed filesystems.",
  lab = "Running a Hadoop job",
  reading = "",
  notes = ""
)

l04 <- tibble(
  topics = "Spark 1: Intro to Spark and PySpark. RDDs. Spark DataFrames. SparkSQL",
  lab = "Intro to Spark, working with RDDs",
  reading = "",
  notes = ""
)

l05 <- tibble(
  topics = "Spark 2: Marchine Learning with Spark",
  lab = "Machine Learning with Spark",
  reading = "",
  notes = ""
)

l06 <- tibble(
  topics = "Spark 3: Spark Streaming. Other big data tools. Course wrapup.",
  lab = "Spark Streaming",
  reading = "",
  notes = ""
)


sessions <- paste0("l", str_pad(as.character(1:6), 2, pad = "0"))
sched <- sched %>%
  bind_cols(lapply(sessions, get) %>%  bind_rows())

sched <- 
  sched %>%
  mutate(date = format(date, "%a %b-%d")) %>%
  select(session, date, topics, lab, reading, notes)
