### Content in folder /scripts
```
 |__ Mu.pynb
 |     - Getting raw data from databases/
 |     - Filtering (chebyshev2)
 |     - Resample records to 250 Hz
 |     - Cut a record in many recordings of 250 samples (1 sec)
 |     - Prepare to a dataframe 
 |     - Saving into workdata/mu/ in 13 .pkl files:
 |
 |               diagnostic  db                  
 |               AF          WFDB_CPSC2018            18306
 |                           WFDB_CPSC2018_2           2325
 |                           WFDB_ChapmanShaoxing     12730
 |                           WFDB_Ga                   5690
 |                           WFDB_Ningbo                  0
 |                           WFDB_PTBXL               15140
 |               SR          WFDB_CPSC2018            14116
 |                           WFDB_CPSC2018_2             61
 |                           WFDB_ChapmanShaoxing     13500
 |                           WFDB_Ga                  17435
 |                           WFDB_Ningbo              62990
 |                           WFDB_PTBXL              180920
 |
 |               TOTAL: 343213 rows
 |               AF: 54191 rows
 |               SR: 289022 rows
 |     
 |
 |__ Aldebaran.pynb
 |     - Load records from workdata/mu/  
 |     - Getting 110 random records
 |     - Saving records in workdata/aldebaran/aldebaran.pkl
 |
 |              diagnostic  db                  
 |              AF          WFDB_CPSC2018           10
 |                          WFDB_CPSC2018_2         10
 |                          WFDB_ChapmanShaoxing    10
 |                          WFDB_Ga                 10
 |                          WFDB_Ningbo              0
 |                          WFDB_PTBXL              10
 |              SR          WFDB_CPSC2018           10
 |                          WFDB_CPSC2018_2         10
 |                          WFDB_ChapmanShaoxing    10
 |                          WFDB_Ga                 10
 |                          WFDB_Ningbo             10
 |                          WFDB_PTBXL              10
 |  
 |
 |__ Saga.pynb
 |     - Load records from workdata/aldebaran/aldebaran.pkl
 |     - First experiment
 |     - Resample do 100 Hz
 |     - Hankelize
 |     - Run BTD
 |     - Generate .csv and .npy files (results and extracted sources) 
 |     - Saving results in workdata/saga/
 |
 | 
 |__ Deathmask.pynb
 |     - is dead
 |
 |__ Aioria.pynb
 |     - Load results from workdata/saga/
 |     - Count sources between 3Hz and 9Hz
 |     - Export .csv
 |     - Saving sources with frequency spectre in .jpg
 |     - Saving results in workdata/aioria/S
 |
 |
 |__ Shaka.pynb
 |     - Trying to get correlation in workdata/aioria/ results
 |