# Orbital Explorations

[`orbital`](https://posit-dev.github.io/orbital/) is a promising python package from Posit. The concept is to translate a trained scikit-learn Pipeline into pure SQL. This has the potential to help team's deploy batch scoring models into a database with near-zero dependencies -- no maintaining python/package versions, infrastructure, API endpoints, or batch jobs. 

I am very intrigued by the vision of this package. I can imagine a lot of incredibly valuable use cases, but also appreciate the nuance/challenge of maintaining such a package (and thus have hit on a number of the corner cases.)

This repo contains the results of some of these explorations. Some may also be the subject of related blog posts on my [website](https:://emilyriederer.com).

*All explorations are intended to test features of `orbital`. They most definitely are not to show anything about decent modeling practices. I do weird stuff here on purpose to find the limits.*

**Stress Testing**: 

- [Using orbital with xgboost](orbital-xgb.ipynb): `orbital` currently only supports SciKitLearn pipelines with native `scikit-learn` models. This notebook walks through a number of steps needed to get `orbital` working for `xgboost`. A similar pattern likely works for `LightGBM` also, but I have not tried it.
- [Evaluating performance for a large model](orbital-big.ipynb): Toy examples work great in `orbital`, but in reality, tree-based machine learning models can be very deep and complicated. This notebook tests how `orbital` scales up with model complexity for a larger random forest (maximum depth 10, 100 trees). Specifically, we see the value of using some of the reformatting options described previously to optimize the query.

**Workflow**:

- [Reformatting orbital output with `sqlglot`](orbital-fmt.ipynb): `orbital` query output is not formatted aesthetically and does not offer many customizations for adding/removing fields, etc. This demonstrates some example code snippets for cleaning, subseting, renaming, extending, and formatting the SQL output
- [Creating a separate pre-processing pipeline](orbital-pre.ipynb): `orbital` is able to translate an entire scikitlearn pipeline to SQL, including feature transformation and prediction. However, it may be preferable to have these steps separate (for reasons noted in the notebook). This shows how to make, deploy, and connect separate SQL logics for feature transformation and scoring. 
- [Preparing orbital SQL to deploy in a dbt pipeline](orbital-dbt.ipynb): dbt models are a special type of Jinja-infused python, allowing the dbt enging to infer and execute a DAG. dbt is a popular tool for organizing datamarts, and has a lot of potential for use with `orbital`. Integration the two is as simple as passing a dbt `ref()` instead of a traditional table name.
