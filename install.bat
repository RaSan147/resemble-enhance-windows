@echo off

python -m venv venv
call venv/scripts/activate

pip install -r requirements.txt
pip install torch==2.1.1+cu118 torchaudio==2.1.1+cu118 --index-url https://download.pytorch.org/whl/cu118

@echo Instaling deepspeed for python 3.10.x or 3.11 and CUDA 11.8
python deepspeed_installer.py

@echo Install complete
pause