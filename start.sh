echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Akshat7678/Arjvps_VcMusic /Arjvps_VcMusic
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Akshat7678/Arjvps_VcMusic -b $BRANCH /Arjvps_VcMusic
fi
cd /Arjvps_VcMusic
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
