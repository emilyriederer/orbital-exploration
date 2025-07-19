# Orbital Explorations

[`orbital`](https://posit-dev.github.io/orbital/) is a promising python package from Posit. The concept is to translate a trained scikit-learn Pipeline into pure SQL. This has the potential to help team's deploy batch scoring models into a database with near-zero dependencies -- no maintaining python/package versions, infrastructure, API endpoints, or batch jobs. 

I am very intrigued by the vision of this package. I can imagine a lot of incredibly valuable use cases, but also appreciate the nuance/challenge of maintaining such a package (and thus have hit on a number of the corner cases.)

This repo contains the results of some of these explorations. Some may also be the subject of related blog posts on my [website](emilyriederer.com).

Key explorations include:

- [Using orbital with xgboost](orbital-xgb.ipynb): `orbital` currently only supports SciKitLearn pipelines with native `scikit-learn` models. This notebook walks through a number of steps needed to get `orbital` working for `xgboost`