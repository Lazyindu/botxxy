if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lazyindu/new.git /new
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /new
fi
cd /new
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
