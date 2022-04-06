# Research Project

## Setup
---
- **Python 3.7.4**
```
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

tar -xvf Python-3.7.4.tgz

cd Python-3.7.4/

./configure

make

make test

sudo make install

python3.7 -m ensurepip --upgrade
```

- **Make virtualenv with Python 3.7.4**
```
 sudo python3.7 -m pip install virtualenv

 virtualenv -p $(which python3.7) py37

 source py37/bin/activate
```

- **Install MATLAB**
```
https://www.mathworks.com/downloads/

tar -xvf matlab_R2021b_glnxa64.zip

cd matlab_R2021b_glnxa64

./install
```

- **Install Engine Matlab-Python**
```
cd /home/renan/MATLAB/R2021b/extern/engines/python && python setup.py 

./install
```


- **Install packages**
```
pip install -r requirements.txt
```

- **Create Kernel from virtualenv created**
```
ipython kernel install --user --name py37 --display-name "Python 3.7"

deactivate
```

## Run Project
---
```
source py37/bin/activate

sudo apt install libpython3.7

jupyter notebook
```

## **Folder Structure**
---
```
|
|__ data              Data preprocessed from databases/
|
|__ databases         Raw data
|
|__ libs              Scripts MATLAB transpiled for python
|
|__ matlab-files      General files MATLAB
|
|__ py37              Python virtual environment
|
|__ scripts           Scripts
```

## **scripts/Extractor.pynb**
Output:
---
```
Found 10344 recordings in ../databases/WFDB_Ga.
Frequency: 500.0
 - Found 570 recordings for AF.
 - Unattached 5690 intervals.
 - Found 1752 recordings for SR.
 - Unattached 17435 intervals.
Found 34905 recordings in ../databases/WFDB_Ningbo.
Frequency: 500.0
 - Found 0 recordings for AF.
 - Unattached 0 intervals.
 - Found 6299 recordings for SR.
 - Unattached 62990 intervals.
Found 3453 recordings in ../databases/WFDB_CPSC2018_2.
Frequency: 500.0
 - Found 153 recordings for AF.
 - Unattached 2325 intervals.
 - Found 4 recordings for SR.
 - Unattached 61 intervals.
Found 6877 recordings in ../databases/WFDB_CPSC2018.
Frequency: 500.0
 - Found 1221 recordings for AF.
 - Unattached 18306 intervals.
 - Found 918 recordings for SR.
 - Unattached 14116 intervals.
Found 21837 recordings in ../databases/WFDB_PTBXL.
Frequency: 500.0
 - Found 1514 recordings for AF.
 - Unattached 15140 intervals.
 - Found 18092 recordings for SR.
 - Unattached 180920 intervals.
Found 7497 recordings in ../databases/WFDB_ChapmanShaoxing.
Frequency: 500.0
 - Found 1273 recordings for AF.
 - Unattached 12730 intervals.
 - Found 1350 recordings for SR.
 - Unattached 13500 intervals.
```

```
filename  | inf  | sup  | data      |  db              |  diagnostic
-----------------------------------------------------------------------
Q3000.mat | 1000 | 1250 | (12, 250) |  WFDB_CPSC2018_2 |  AF
```

```               
AF_WFDB_CPSC2018            18306
AF_WFDB_CPSC2018_2           2325
AF_WFDB_ChapmanShaoxing     12730
AF_WFDB_Ga                   5690
AF_WFDB_Ningbo                  0
AF_WFDB_PTBXL               15140

SR_WFDB_CPSC2018            14116
SR_WFDB_CPSC2018_2             61
SR_WFDB_ChapmanShaoxing     13500
SR_WFDB_Ga                  17435
SR_WFDB_Ningbo              62990
SR_WFDB_PTBXL              180920

   AF: 54191 rows
   SR: 289022 rows
TOTAL: 343213 rows
```
```
635 MB  ../data/part_12.pkl
635 MB  ../data/part_11.pkl
635 MB  ../data/part_10.pkl
635 MB  ../data/part_9.pkl
635 MB  ../data/part_8.pkl
635 MB  ../data/part_7.pkl
635 MB  ../data/part_6.pkl
635 MB  ../data/part_5.pkl
635 MB  ../data/part_4.pkl
635 MB  ../data/part_3.pkl
635 MB  ../data/part_2.pkl
635 MB  ../data/part_1.pkl
635 MB  ../data/part_0.pkl
-----------------------------
8.255 GB
```