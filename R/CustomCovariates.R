sys.setlocale()
Sys.setenv(JAVA_HOME = '')

library(PatientLevelPrediction)
library(devtools)
library(Databaseconnector)
library(dplyr)
library(RJDBC)
library(rJava)
library(DBI)
library(RPostgreSQL)
library(FeatureExtraction)
library(SqlRender)
library(Cyclops)
library(ggplot2)
library(Andromeda)

# Connect to an OMOP CDM db
connectionDetails <- DatabaseConnector::createConnectionDetails(dbms = '',
                                                              user = '',
                                                              password = '',
                                                              server = '',
                                                              pathToDriver = '')

connection <- connect(connectionDetails)

# Demographics 
settings_demographic = createCovariateSettings(useDemographicsGender = TRUE,
                                               useDemographicsAge = TRUE)

# Severity scores
settings_severity_score <- createCovariateSettings(useCharlsonIndex = TRUE,
                                                   useChads2 = TRUE,
                                                   useChads2vasc = TRUE,
                                                   useDSCi = TRUE)

# Visit counts
settings_visit_count <- createCovariateSettings(useVisitCountLongTerm = TRUE,
                                                useVisitCountMediumTerm = TRUE,
                                                useVisitCountShortTerm = TRUE,
                                                longTermStartDats = -365,
                                                mediumTermStartDays = -180,
                                                shortTermStartDays = -30,
                                                endDays = -2)

# Visit Concepts
settings_visit_concept <- createCovariateSettings(useVisitConceptCountLongTerm = TRUE,
                                                  useVisitConceptCountMediumTerm = TRUE,
                                                  useVisitConceptCountShortTerm = TRUE,
                                                  longTermStartDats = -365,
                                                  mediumTermStartDays = -180,
                                                  shortTermStartDays = -30,
                                                  endDays = -2)

# Condition group
settings_condition_group <- createCovariateSettings(useConditionGroupEraAnyTimePrior = TRUE,
                                                    useConditionGroupEraLongTerm = TRUE,
                                                    useConditionGroupEraMediumTerm = TRUE,
                                                    useConditionGroupEraShortTerm = TRUE,
                                                    longTermStartDays = -365,
                                                    mediumTermStartDays = -180,
                                                    shortTermStartDays = -30,
                                                    endDays = -2)

# Drug group
settings_drug_group <- createCovariateSettings(useDrugGroupEraAnyTimePrior = TRUE,
                                               useDrugGroupEraLongTerm = TRUE,
                                               useDrugGroupEraMediumTerm = TRUE,
                                               useDrugGroupEraShortTerm = TRUE,
                                               longTermStartDays = -365,
                                               mediumTermStartDays = -180,
                                               shortTermStartDays = -30,
                                               endDays = -2)

# Creating custom covariates
plpData <- getPlpData(connectionDetails,
                           cdmDatabaseSchema = '',
                           cohortID,
                           outcomeId,
                           studyStartdate = '',
                           studyEndDate = '',
                           cohortDatabaseschema = '',
                           cohortTable = '',
                           cdmversion = '',
                           covariateSettings = )

plpdata2 <- PatientLevelPrediction::getPlpData(databaseDetails = , covariateSettings = , restrictPlpDataSettings)


