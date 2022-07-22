# Research Project

## **a. Get repo**
```
git clone https://github.com/cardosorrenan/research-project.git
```

## **b. Get the recordings**
```
Download content from **url** in databases/ folder

|__ databases/
  |__ WFDB_ChapmanShaoxing/
  |__ WFDB_CPSC2018/
  |__ WFDB_CPSC2018_2/
  |__ WFDB_Ga/
  |__ WFDB_Ningbo/
  |__ WFDB_PTB/
  |__ WFDB_PTBXL/
  |__ WFDB_StPetersburg/
```


## **c. Setup**

### Python 3.7.4
```
cd ~

wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

tar -xvf Python-3.7.4.tgz

cd Python-3.7.4/

./configure

make

make test

sudo make install

python3.7 -m ensurepip --upgrade

sudo apt install libpython3.7
```

### Install MATLAB
```
cd ~

https://www.mathworks.com/downloads/

tar -xvf matlab_R2021b_glnxa64.zip

cd matlab_R2021b_glnxa64/

./install
```

### Download repo
```
cd /home/YOUR_USER/Desktop/

git clone project

cd project
```

### Make a virtualenv
```
 sudo python3.7 -m pip install virtualenv

 virtualenv -p $(which python3.7) venv
```

### Activate venv
```
source venv/bin/activate
```

### Install required packages and engine Matlab-Python
```
pip install -r requirements.txt
```

### Install engine Matlab-Python
```
cd /home/YOUR_USER/MATLAB/R2021b/extern/engines/python 

python3.7 -m setup.py
```

### Preparing venv kernel created for the jupyter 
```
ipython kernel install --user --name venv --display-name "Python 3.7"

deactivate
```


## **d. Run Project**
```
source py37/bin/activate

jupyter notebook
```

## **e. Folder Structure**
```
|
|__ workdata/          Data preprocessed
|
|__ databases/         Raw data
|
|__ matlab/            Scripts MATLAB
|
|__ venv/              Python virtual
|
|__ scripts/           Scripts
  |
  |__ myPackages/        Packages python builded from MATLAB functions
```

## **f. Scripts**

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
 ||==================================|| 
 ||   Refactoring - 2nd Generation   ||
 ||==================================||
 |  
 |__ Dohko.pynb
 |     - Getting raw data from databases/
 |     - Saving .csv into workdata/dohko/dohko.csv
 |           
 |           path	| db	          | filename  |	diag | total_diags | db_freq | time
 |           -----------------------------------------------------------------------
 |           0	  | WFDB_CPSC2018 | A4644.mat	| SR	 | 1	         | 500	   | 10.0
 |
 |           AF: 4711 rows
 |           SR: 28458 rows
 |           
 |           diag | db                  
 |           -------------------------------------
 |           AF   |  WFDB_CPSC2018            1221
 |                |  WFDB_CPSC2018_2           153
 |                |  WFDB_ChapmanShaoxing     1273
 |                |  WFDB_Ga                   570
 |                |  WFDB_PTB                   15
 |                |  WFDB_PTBXL               1477
 |                |  WFDB_StPetersburg           2
 |           SR   |  WFDB_CPSC2018             918
 |                |  WFDB_CPSC2018_2             4
 |                |  WFDB_ChapmanShaoxing     1350
 |                |  WFDB_Ga                  1752
 |                |  WFDB_Ningbo              6299
 |                |  WFDB_PTB                   80
 |                |  WFDB_PTBXL              18055
 |
 |__ Miro.pynb
 |     - Getting rows from workdata/dohko/dohko.csv
 |     - Filtering (chebyshev2)
 |     - Resample records to 100 Hz
 |     - Prepare to a dataframe 
 |     - Saving into workdata/miro/ in 10 .pkl files:
 |
 |__ Aioros.pynb
 |     - Find the QRS and cut a beat (with 200ms offset) from each example
 |     - The beat is extracted from V5 (the largest RR interval)
 |     - Save the beat location on lead V5 from recording (.jpg)
 |     - Save the all leads (.jpg) of a beat
 |     - Prepare to a dataframe 
 |     - Save the pickle in workdata/aioros/
 |     - Aioros.pkl
 |        - Getting samples from workdata/miro/part4.pkl
 |        - Get 5 first rows of each db
 |        - Saving with name aioros.pkl
 |     - Aioros_large.pkl
 |         - Getting all samples from part0.pkl, part1.pkl, part2.pkl
 |         - Saving with name aioros_large.pkl
 |
 |__ Shura.pynb
 |     - Getting data from workdata/aioros
 |     - Hankelize
 |     - Run BTD
 |     - Generate .csv and .npy files (results and extracted sources) 
 |     - Saving results in workdata/shura/experiment{N}/
 |        - N = 1
 |           - Using the aioros_large.pkl (9951, 7)
 |           - Only Rank 6
 |           - Lr 17
 |           - Algorithm LL1_NLS
 |
 |__ Camus.pynb
 |      - Getting results from workdata/experiments{N}/results.csv
 |      - Pre-processing input
 |      - Classifiers
 |        - Tunning GridSearch
 |        - MLP, RandomForest, LDA, SVM, XGBoost, CNN
 |
```

## **f. MATLAB - Editing functions**

### Open MATLAB
```
/home/YOUR_USER/MATLAB/R2021b/bin/matlab
```

### Maintain/Refac the MATLAB scripts
```
Example folder: matlab/myBTD/

- Open myBTD.mlx function file to edit
- Open the file myBTD_sample.m to test the function myBTD.mlx
- Go to Apps/Application -> Deployment/Library Compiler
- Import myBTD.prj project
- Press "Export project"
```

### Disclaimer
```
- myBTD using btd_rnd e btd_nls
- myBTD2 using ll1_rnd e ll1_nls
- Saga script get output (rebuilt package) automatically, just rerun the first cell after running "Export project" on MATLAB
```
