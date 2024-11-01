Hospital Lenegth of Stay Prediction for Planned Admission Using Observational Medical Outcomes Partnership Common Data Model: Retrospective Study
==========================================
* Analytics use case(s): Patient-Level Prediction
* Study type: Clinical Application
* Tags: length of stay, machine learning, healthcare utilization, Observational Medical Outcomes Partnership Common Data Model
* Study lead: Haeun Lee, Se Young Jung, Sooyoung Yoo
* Study lead forums tag: Haeun Lee
* Study start date: 1 September 2022
* Study end date: 1 August 2023
* Protocol: -
* Publications: Lee, H., Kim, S., Moon, H. W., Lee, H. Y., Kim, K., Jung, S. Y., & Yoo, S. (n.d.). Citation file validator result- pubmed data management - NCBI. Journal of medical Internet research. https://www.ncbi.nlm.nih.gov/pubmed/management/validator/1F6C5BDE359A/citations/?start=0 
* Results explorer: -

  ![image](https://github.com/user-attachments/assets/c1e8178e-60ff-4ce5-bb32-d483876e0760)

* Background:
Accurate hospital length of stay (LoS) prediction allows for efficient resource management. Conventional LoS prediction models with limited covariates and non-standardized data experience limited reproducibility when applied to the general population. 

* Objective:
In this study, we developed and validated machine learning (ML)-based LoS prediction models for planned admissions using the Observational Medical Outcomes Partnership Common Data Model (OMOP CDM).

* Methods: 
Retrospective patient-level prediction models leveraged electronic health record (EHR) data converted to the OMOP CDM (version 5.3) from Seoul National University Bundang Hospital (SNUBH) in South Korea. The study included 137,437 hospital admission episodes between January 2016 and December 2020. Covariates from the person, condition occurrence, medication, observation, measurement, procedure, and visit occurrence tables were included in the analysis. To perform feature selection, we applied Lasso regularization was applied in logistic regression. The primary outcome was a LoS of seven days or longer, and the secondary outcome was a LoS of 3 days or longer. The prediction models were developed using six ML algorithms, with the training and test set split in a 7:3 ratio. The performance of each model was evaluated based on the area under the receiver operating characteristic curve (AUROC) and the area under Precision-Recall curve (AUPRC). SHapley Additive exPlanations (SHAP) analysis measured feature importance, while calibration plots assessed the reliability of the prediction models. External validation of the developed models occurred at an independent institution, Seoul National University Hospital (SNUH).

* Results:
The final sample included 129,938 patient entry events in the planned admissions. The XGB model achieved the best performance in binary classification for predicting a LoS of 7 days or longer, with an AUROC of 0.891 (95% CI; 0.887-0.894) and an AUPRC of 0.819 (95% CI; 0.813-0.826) on the internal test set. The LGB model performed the best in multi-classification for predicting a LoS of 3 days or more, with an AUROC of 0.901 (95% CI; 0.898-0.904) and an AUPRC of 0.770 (95% CI; 0.762-0.779). The most important features contributing to the models were the operation performed, frequency of previous outpatient visits, patient admission department, age, and day of week admission. The RF model showed robust performance in the external validation set, achieving an AUROC of 0.804 (95% CI; 0.802-0.807). 

* Conclusions:
The use of the OMOP CDM in predicting hospital LoS for planned admissions demonstrates promising predictive capabilities for stays of varying durations. It underscores the advantage of standardized data in achieving reproducible results. This approach should serve as a model for enhancing operational efficiency and patient care coordination across healthcare settings. 



## Elements in the README template

| Element | Description |
| ------- | ----------- |
| Study Title  | Hospital Lenegth of Stay Prediction for Planned Admission Using Observational Medical Outcomes Partnership Common Data Model: Retrospective Study   |    
| Study status badge | A badge indicating the study status. See [below](#study-status) for valid options. |
| Research Question | How can machine learning models be developed and validated to predict length of stay (LoS) for planned hospital admissions using data standardized in the OMOP Common Data Model?|
| Analytics use case | [Patient-Level Prediction](#analytics-use-cases) |
| Study type | [Clinical Application](#study-types) |
| Tags | length of stay, machine learning, healthcare utilization, Observational Medical Outcomes Partnership Common Data Model |
| Study lead | Haeun Lee, Se Young Jung, Sooyoung Yoo |
| Study lead forums tag | [Haeun Lee](https://forums.ohdsi.org/u/hlee292) |
| Study team | Haeun Lee, Seok Kim, Hui-Woun Moon, Ho-Young Lee, Kwangsoo Kim, Se Young Jung, Sooyoung Yoo |
| Cohort Definitions | The study included adult patients (≥18 years) with documented admission diagnoses who had planned hospitalizations between January 1, 2016, and December 31, 2020, with lengths of stay between 2 and 30 days, excluding those who died during hospitalization or were admitted through the emergency room.|
| HADES Packages | PatientLevelPrediction R package, Reps JM, Schuemie MJ, Suchard MA, Ryan PB, Rijnbeek P (2018). “Design and implementation of a standardized framework to generate and evaluate patient-level prediction models using observational healthcare data.” Journal of the American Medical Informatics Association, 25(8), 969-975. https://doi.org/10.1093/jamia/ocy032.|
| Study Sites | Seoul National University Bundang Hospital (SNUBH) and Seoul National University Hospital (SNUH) |
| Study start date | September 1, 2022|
| Study end date | August 1, 2023| 
| Publications | Lee, H., Kim, S., Moon, H. W., Lee, H. Y., Kim, K., Jung, S. Y., & Yoo, S. (n.d.). Citation file validator result- pubmed data management - NCBI. Journal of medical Internet research. https://www.ncbi.nlm.nih.gov/pubmed/management/validator/1F6C5BDE359A/citations/?start=0  | 


### Analytics Use Cases

- `Patient-Level Prediction` 

### Study types

- `Clinical Application` 
