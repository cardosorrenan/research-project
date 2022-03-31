# Research Project

## Setup
---
- **Python 3.7.4**
```
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

tar -xvf Python-3.7.4.tgz

cd Python-3.7.4/

sudo apt install libssl-dev libncurses5-dev libsqlite3-dev libtk8.6 libgdm-dev libdb4o-cil-dev libpcap-dev libreadline-gplv2-dev libncursesw5-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev libffi-dev

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
|__ scripts           Scripts :P
```

## **Scripts**
---
```
|__ scripts           
       |
       |__ Extractor - Get, preprocess and extract for .pkl raw data 
       |
       |__ CNN_Classification
       |
       |__ Tensor