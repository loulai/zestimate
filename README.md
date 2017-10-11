# Zestimate
### Zillow’s Home Value Prediction

Course Name: Predictive Analytics
Section: CSCI-GA 3033-011
Instructor: Prof. Anasse Bari
Semester: 2017 fall
Team Member: 
Bofeng Hu (bh1779@nyu.edu)
Yuanxu Wu (yw2983@nyu.edu)
Guangli Jiang (gj659@nyu)
Mengyao Zhu (mz2249@nyu.edu)
Louise Y. Lai(ll2663@nyu.edu)
Ziwei Wang (zw1651@nyu.edu)

### Abstract
Real estate is almost the most expensive thing people may purchase in his or her lifetime, so evaluating the house price could always affect people's decisions in their life.  In order to ensure that homeowners have a trusted way to monitor this asset, Zillow offers Zestimate to help consumers make decisions with multiplied information about homes and housing market. In this project, we use valid home values data provided by Zillow to develop an algorithm that makes predictions about future sale price of homes and push the accuracy of Zestimate even further.

For decades, researchers have been looking for ways to estimate and predict housing prices. Zillow uses data including physical attributes, tax assessments, and prior transactions to estimate the value of a house (Zestiamate)[1], and aggregate individual Zestimate to denote the neighborhoods . To predict the future price of a house [2], Zillow first predicts the price of 12 month later using the forecast of the whole county [3] while adding individual characteristics of the house, then draw a path between the two points using a cubic spline. The whole purpose is to predict the log-error between the Zestimate the actual sales price, we can select multiple features from the housing data and apply regression models on them. We assume that house prices are based on the combination of a latent land desirability and a regression of house attributes. First, cluster algorithms such as K-means may be chosen to get the several different classes
of houses based on the spatial spots. Then several single regression models as listed below are built to predict the house prices based on other houses attributes. 1) Gradient Boost Trees(GBT) algorithms that is a classic regression tree model, which obtain predictive results through gradually improved estimations. 2) Logistic Regression(LR) algorithms [4] which measures the relationship by converting the dependent variable to probability scores. 3) Neural Network(NN) or Artificial Neural Network(ANN) [7] model which are usually used to model complex relationships between inputs and outputs or to find patterns in data. 4) Support Vector Regression (SVR) algorithm [6] which are supervised learning models with associated learning algorithms that analyze data used for classification and regression analysis. 5) K-nearest Neighbors algorithm (k-NN) [5] which is a simple algorithm that stores all available cases and predict the numerical target based on a similarity measure (e.g., distance functions). In the last, ensemble modeling will be chosen to get the least loss error.

The data sets we obtained from kaggle.com consist of one training and two test sets with full lists of real estate properties in three counties (Los Angeles, Orange and Ventura, California) data. The train data has all the transactions before October 15, 2016. The first test data has the transactions between October 15, 2016 and December 31, 2016 and the second has all the properties in October 15, 2017, to December 15, 2017.

Our team is consisted of six members: Bofeng Hu, Guangli Jiang, Louise Lai, Mengyao Zhu, Yuanxu Wu, Ziwei Wang. Our tentative time list as follow: Week 1-2: Business understanding (Full-TEAM): Learning the business domain of project, Framing the problem, Developing initial analytics hypotheses; Week 3-4: Data understanding (Full-TEAM): Defining data storage and analytics paradigms, Predictive models; Week 5-8: Data Preparation (ZHU / LAI / WANG): Preparing the analytics server for project, Designing, implementing and documenting ETL jobs (Extract Transfer Load) , Conditioning data, Reducing the dimensionality of the data sets; Week 9-11: Modeling (HU / JIANG / WU / LAI) : Feature selection, Iterating over models and model selection; Week 12: Model Evaluation and Deployment (HU / JIANG / WU / LAI); Week 13: Results Presentation (Full-TEAM).


#### Reference
[1] https://www.zillow.com/zestimate/
[2] https://www.zillow.com/research/zestimate-forecast-methodology/
[3] https://www.zillow.com/research/zillow-home-value-forecast-methodology-2-3740/
[4] Freedman, David A. Statistical models: theory and practice. Cambridge university press, 2009.
[5] Altman, Naomi S. "An introduction to kernel and nearest-neighbor nonparametric regression." The American Statistician 46.3 (1992): 175-185.
[6] http://chem-eng.utoronto.ca/~datamining/dmc/support_vector_machine_reg.htm
[7] https://en.wikipedia.org/wiki/Artificial_neural_network




