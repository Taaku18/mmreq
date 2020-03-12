[ -d "modmail" ] && rm -r modmail
[ -d "logviewer" ] && rm -r logviewer
mkdir modmail
mkdir logviewer
curl https://raw.githubusercontent.com/kyb3r/modmail/master/Pipfile.lock -o modmail/Pipfile.lock -s
curl https://raw.githubusercontent.com/kyb3r/logviewer/master/Pipfile.lock -o logviewer/Pipfile.lock -s
(
cd modmail || exit
pipenv install  --ignore-pipfile --dev
)
cd logviewer || exit
pipenv install  --ignore-pipfile --dev
pipenv run pip freeze > ../requirements.txt


